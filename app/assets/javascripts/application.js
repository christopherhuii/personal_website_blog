// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require jquery.turbolinks
//= require_tree .

$(function(){
  // For the FadeIn effect when the home page loads
  $('.welcome-content').delay(500).animate({opacity: 1}, 1500);
  // Makes the alerts fadeout after a delay
  $('.alert').fadeIn(1000).delay(1500).fadeOut(500);

  //Button scrolls down to the about me section
  $('.aboutme-button').click(function(){
    $('html, body').animate({
      scrollTop:$('.about-me').position().top
    });
  });
  $('.blog-button').click(function(){
    $('html, body').animate({
      scrollTop:$('.blog').position().top
    });
  });
  $('.projects-button').click(function(){
    $('html, body').animate({
      scrollTop:$('.projects').position().top
    });
  });
  $('.contact-button').click(function(){
    $('html, body').animate({
      scrollTop:$('.contact').position().top
    });
  });
});

