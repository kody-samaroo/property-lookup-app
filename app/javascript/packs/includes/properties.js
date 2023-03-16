$(function(){
    $("#toggleDetails").on("click", function(){
        var details = $("#prop-details");
        details.toggleClass("open");
        if(details.hasClass("open")){
            $("#toggleDetails").text("Show less")
        } else {
            $("#toggleDetails").text("Show more")
        }
    })
})