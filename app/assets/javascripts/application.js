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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

	$('.header-secondary').hide();

	$(".action-left").click(function() {
		$(".mobile-nav").toggleClass('open');
	}, { offset: 400 });

	$('body').waypoint(function(direction) {
	  $(".active").removeClass("active");
	}, { offset: 400 });

	$('#about').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-about").addClass("active");
	}, { offset: 400 });

	$('#cameras').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-cameras").addClass("active");
	}, { offset: 400 });
	$('#upcoming').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-upcoming").addClass("active");
	}, { offset:400 });

	$('#cctv').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-cctv").addClass("active");

	  if (direction == 'up') {
	  	$(".header-secondary").slideUp(100);
	  } else {
	  	$(".header-secondary").slideDown(100);
	  }

	});

	$(function() {
	  $('a[href*=#]:not([href=#])').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	      if (target.length) {
	        $('html,body').animate({
	          scrollTop: target.offset().top
	        }, 1000);
	        return false;
	      }
	    }
	  });
	});

});

$(window).resize(function() {
	$("iframe.video").each(function() {
		$(this).css('height', $(this).width*9/16+'px');
	});
})
