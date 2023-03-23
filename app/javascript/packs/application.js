// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("./includes/properties");


var jQuery = require("jquery");
global.$ = global.jQuery = jQuery;
window.$ = global.jQuery = jQuery;


import toastr from "toastr";
toastr.options = {
    closeButton: true,
    progressBar: true,
    showDuration: "50"
}
global.toastr = toastr;

