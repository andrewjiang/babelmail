// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	$('a.scroll-link').click(function(){
    $('html, body').animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);
    return false;
	});
//	$('.alert').delay(1000).animate({
//		height: "0px",
//		opacity: 0,
//		"padding-top": "0px",
//		"padding-bottom": "0px",
//		border: "0px",
//	}).fadeOut();
  
  $(".alert").alert();

  if($('#sign-in-count').html() == 1 && $('#contacts-count').html() == 0 ){
    $('#welcome-modal').modal();
  };

  $("#welcome-modal").on('shown', function() {
      $('#start-tutorial').focus();
  });

  $('.show-tutorial').click(function(){
    $('#welcome-modal').modal();
  });

	$('#start-tutorial').click(function(){
    introJs().start();
    $('#welcome-modal').modal('hide');
	});  
});