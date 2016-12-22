$(document).ready(function(){
    $(".dropmenu-title").click(function(){
        $(this).siblings(".dropmenu-list").slideToggle("fast");
    });
    $(".div_res").click(function(){
        alert("aaa");
    });
});