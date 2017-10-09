$(document).ready(function(){
    // Add smooth scrolling to all links
    $("a").on('click', function(event) {

        // Make sure this.hash has a value before overriding default behavior
        if (this.hash !== "") {
            // Prevent default anchor click behavior
            event.preventDefault();

            // Store hash
            var hash = this.hash;

            // Using jQuery's animate() method to add smooth page scroll
            // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 800, function(){

                // Add hash (#) to URL when done scrolling (default click behavior)
                window.location.hash = hash;
            });
        } // End if
    });
});


var navheight = $('#mynav').height();
function checkScroll(){
    var startY = navheight * 2; //The point where the navbar changes in px

    if($(window).scrollTop() > startY){
        $('#mynav').addClass("bg-dark");
    }else{
        $('#mynav').removeClass("bg-dark");
    }
}

if($('#mynav').length > 0){
    $(window).on("scroll load resize", function(){
        checkScroll();
    });
}

$(document).ready(function(){
    $('#login_form').submit(function(){
        event.preventDefault();

        //id, pwd를 가져오기
        var id = $('#id').val();
        var pwd = $('#pwd').val();

        $.post("http://httpbin.org/post",
            {"id": id, "pwd" : pwd},
            function(data){
                //alert(data.form.id+'님 로그인 되었습니다.');
                var myModal = $('#myModal');
                myModal.modal();
                myModal.find('.modal-body').text(data.form.id+'님 로그인 되었습니다.')
            });
    });
});

$(document).ready(function(){
    $('#form_submit').submit(function(){
        event.preventDefault();
        var GD = parseInt($(":input:radio[name=Grade]:checked").val());
        var gumi = parseInt($("#selectBox option:selected").val());

        //id, pwd를 가져오기
        var namae = $('#namae').val();
        var bango = $('#bango').val();

        $.post("http://httpbin.org/post",
            {"GD": GD, "gumi" : gumi, "namae": namae, "bango": bango},
            function(data){
                var myModal = $('#myModal');

                myModal.modal();
                myModal.find('.modal-body').text(data.form.namae+'님 가입되었습니다.')
            });
    });
});

init($('#opa2'));