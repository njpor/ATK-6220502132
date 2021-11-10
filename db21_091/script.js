$(function(){

    $(".toggle").on("click", function(){

        if($(".item").hasClass("active")){
            $(".item").removeClass("active");
            $(this).find(".a").html("i class='fas fa-bars'");
        }
        else{
            $(".item").addClass("active");
            $(this).find(".a").html("i class='fas fa-times'");
        }
        
    });
});