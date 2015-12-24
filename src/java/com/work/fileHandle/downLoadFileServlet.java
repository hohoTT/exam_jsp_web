package com.work.fileHandle;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class downLoadFileServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String fileName = request.getParameter("filename"); 
        fileName = new String(fileName.getBytes("iso8859-1"),"UTF-8");
        String fileSaveRootPath=this.getServletContext().getRealPath("/WEB-INF/uploads");
        String downFilePath = "D://downloadFile";
//        File downpathFile = new File(downFilePath);
//        if(!downpathFile.exists()){
//            downpathFile.mkdirs();
//        }
        File file = new File(fileSaveRootPath + "\\" + fileName);
        if(!file.exists()){
            request.setAttribute("message", "您要下载的资源已被删除！！");
        }
        String realname = fileName.substring(fileName.indexOf("_")+1);
        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realname, "UTF-8"));
        FileInputStream in = new FileInputStream(fileSaveRootPath + "\\" + fileName);
        OutputStream out = response.getOutputStream();
        byte buffer[] = new byte[1024];
        int len = 0;
        while((len=in.read(buffer))>0){
            out.write(buffer, 0, len);
        }
        in.close();
        out.close();
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
