// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"



require("trix")
require("@rails/actiontext")

Rails.start()
// Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', function(){
    var toastElList = [].slice.call(document.querySelectorAll('.toast'))
    var toastList = toastElList.map(function(toastEl) {
    return new bootstrap.Toast(toastEl).show() // No need for options; use the default options
    })
});

import 'trix/dist/trix.css';
