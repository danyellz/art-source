// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
// = require jquery
// = require jquery_ujs
// = require_tree .

$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  console.log("Hit JS");

  var toggleSignup = $('#signup-form').css('display', 'none')

  $('#open-signup').click(function(event) {
    event.preventDefault();

    toggleSignup.toggle();
  });

  var toggleSignin = $('#signin-form').css('display', 'none')

  $('#open-login').click(function(event) {
    event.preventDefault();

    toggleSignin.toggle();
  });
});

