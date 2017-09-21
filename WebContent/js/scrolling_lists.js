var targ;
var first;
var second, third, fourth, fifth;

function set_nav(use_name) {
    $(".nav-item").each(function(){
        if($(this).attr('id')===use_name){
            $(this).addClass('active');
        }
        else{
            $(this).removeClass('active');
        }
    });
}
function change_scroll() {
    first = $('#second_back').offset().top-1;
    second = $('#opa2').offset().top-1;

    third= $('#hagaren').offset().top-1;
    fourth = $('#classic').offset().top-1;
    fifth = $('#itshoni').offset().top-1;
    var startY = targ.offset().top + 400; //The point where the navbar changes in px

    var curspos = $(window).scrollTop() + $(window).height();
    if (curspos > startY) {
        targ.css("opacity", 1);
    } else {
        targ.css("opacity", 0);
    }
    if (curspos>fourth+400){
        $('#classic').css("opacity",1);
    }else{
        $('#classic').css("opacity",0);
    }
    var curtoppos = $(window).scrollTop();
    if(curtoppos<first)
        set_nav('home');
    else if(curtoppos<second)
        set_nav('interesting');
    else if(curtoppos<third)
        set_nav('why');
    else if(curtoppos<fourth)
        set_nav('anime');
    else if(curtoppos<fifth)
        set_nav('steinway');
    else
        set_nav('register');
}
function init(target) {
    targ = target;
    if (target.length > 0) {
        $(window).on("scroll load resize", function () {
            change_scroll();
        });
    }
}
