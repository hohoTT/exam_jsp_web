
window.$=function(selector){
    return document.querySelector(selector);
}
var speed=10;
$("#demo2").innerHTML=$("#demo1").innerHTML;
function Marquee(){
    $("#demo2").offsetWidth<=$("#demo").scrollLeft?
    $("#demo").scrollLeft=0:$("#demo").scrollLeft++;
}
var MyMar=setInterval(Marquee,speed);
    $("#demo").onmouseover=function() {
    clearInterval(MyMar)
};
$("#demo").onmouseout=function() {
    MyMar=setInterval(Marquee,speed)
};


