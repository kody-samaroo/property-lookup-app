$(function(){
    $("#show-tel").on("click", function(){
        var $this = $(this);
        if ($this.find("span")[0].innerText == "CALL"){
            $this.find("span").text( $this.data("telephone") );
        } else {
            $this.find("span").text("CALL");
        }
    });

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