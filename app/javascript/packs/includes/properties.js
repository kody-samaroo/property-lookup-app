$(function(){
    $("#show-tel").on("click", function(){
        var $this = $(this);
        if ($this.find("span.telephone")[0].innerText == "CALL"){
            $this.find("span.telephone").text( $this.data("telephone") );
        } else {
            $this.find("span.telephone").text("CALL");
        }
    });

    $("#show-email").on("click", function(){
        var $this = $(this);
        if ($this.find("span.email")[0].innerText == "EMAIL"){
            $this.find("span.email").text( $this.data("email") );
        } else {
            $this.find("span.email").text("EMAIL");
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
    });
});

