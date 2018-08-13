//= require marketing/wow
//= require jquery

new WOW().init();

if ($(window).width() <= 991){
    $(".wow").removeClass("wow");
}
