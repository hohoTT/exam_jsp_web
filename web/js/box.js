$(document).ready(function(){
    $(".content_box").mouseenter(function(){
          $(this).css("background","#c91e26");
          $(this).find(".content_title").css("color","#ffffff");
    }).mouseleave(function(){
          $(this).css("background","#ffffff");
          $(this).find(".content_title").css("color","#c91e26");
    });
});


