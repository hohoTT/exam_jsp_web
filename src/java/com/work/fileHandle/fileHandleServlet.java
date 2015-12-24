/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.work.fileHandle;

import com.work.eneity.Student;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.RichTextString;

/**
 *
 * @author Administrator
 */
public class fileHandleServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public List<Student> query() {
		List<Student> students = null;

		String sql = "select * from Student";
		Connection connection = null;
		String url = "jdbc:mysql://127.0.0.1:3306/work";
		String user = "root";
		String password = "root";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("success 加载mysql驱动");
			connection = DriverManager.getConnection(url, user, password);
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);

			if (resultSet != null) {

				students = new ArrayList<Student>();

				while (resultSet.next()) {
					System.out
							.println(resultSet.getBigDecimal(1) + "\t"
									+ resultSet.getString(2) + "\t"
									+ resultSet.getString(3) + "\t"
									+ resultSet.getString(4) + "\t"
                                                                        + resultSet.getInt(5));
					Student student = new Student();
                                        student.setStudentId(resultSet.getBigDecimal(1));
                                        student.setStudentCode(resultSet.getString(2));
                                        student.setEnName(resultSet.getString(3));
                                        student.setCnName(resultSet.getString(4));
                                        student.setGrade(resultSet.getInt(5));
					students.add(student);
				}
			}

		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException-----" + e);
		} catch (SQLException e) {
			System.out.println("SQLException-----" + e);
		}
		
		return students;
	}
    
    
    public HSSFWorkbook createExcel(){

        HSSFWorkbook webbook = new HSSFWorkbook();
        
        HSSFSheet sheet = webbook.createSheet("学生成绩表");
        
        HSSFRow row = sheet.createRow((int) 0);
        
        HSSFCellStyle style = webbook.createCellStyle();
        
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        
        HSSFCell cell = row.createCell((short) 0);
        cell.setCellValue("注册编号");
        cell.setCellStyle(style);
        cell = row.createCell((short) 1);
        cell.setCellValue("班级编号");
        cell.setCellStyle(style);
        cell = row.createCell((short) 2);
        cell.setCellValue("英文名称");
        cell.setCellStyle(style);
        cell = row.createCell((short) 3);
        cell.setCellValue("中文名称");
        cell.setCellStyle(style);
        cell = row.createCell((short) 4);
        cell.setCellValue("成绩");
        cell.setCellStyle(style);
        
        List students = query();
        
        for (int i = 0; i < students.size(); i++) {
            row = sheet.createRow((int)i + 1);
            Student student = (Student) students.get(i);

            row.createCell((short) 0).setCellValue(student.getStudentId().toString());  
            row.createCell((short) 1).setCellValue(student.getStudentCode());  
            row.createCell((short) 2).setCellValue(student.getEnName());
            row.createCell((short) 3).setCellValue(student.getCnName());
            row.createCell((short) 4).setCellValue(student.getGrade());
        }
        
        try  
        {  
            String savePath = this.getServletContext().getRealPath("/WEB-INF/uploads");
            String filename = "students-grade.xls";
            File file = new File(savePath);

            if (!file.exists() && !file.isDirectory()) {
                System.out.println(savePath + "目录不存在，需要创建");
                file.mkdir();
            }
            
            FileOutputStream fout = new FileOutputStream(savePath + "/" + filename);  
            webbook.write(fout);  
            fout.close();  
        }  
        catch (Exception e)  
        {  
            e.printStackTrace();  
        }  
        
        return webbook;
    }
    
    public void listFileHandle(){
        
    }
  
    public void listfile(File file,Map<String,String> map){
        if(!file.isFile()){
            File files[] = file.listFiles();
            
            for(File f : files){
                listfile(f,map);
            }
        }else{
            String realName = file.getName().substring(file.getName().indexOf("_")+1);
            map.put(file.getName(), realName);
        }
    }
    
    public boolean downloadFile(){
        
        return false;
    }
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        createExcel();

        String uploadFilePath = this.getServletContext().getRealPath("/WEB-INF/uploads");
        Map<String,String> fileNameMap = new HashMap<String,String>();
        listfile(new File(uploadFilePath),fileNameMap);
        request.setAttribute("fileNameMap", fileNameMap);

        request.getRequestDispatcher("handlejsp/gradeCheck.jsp").forward(request, response);
        
        
        try (PrintWriter out = response.getWriter()) {
            
        }
        
//         response.sendRedirect("handlejsp/gradeCheck.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
