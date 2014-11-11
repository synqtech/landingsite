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

function setHalfWidth() {
	if (window.innerWidth >= 768) {
		$(".inner-half-width").css('width', $(".container").width()/2-30+'px');
	} else {
		$(".inner-half-width").css('width', '100%');
	}
	
}

$(document).ready(function() {


	if (!navigator.userAgent.match(/(iPod|iPhone|iPad)/)) {
	    var s = skrollr.init();
	}

	setHalfWidth();

	$('.header-secondary').hide();

	$(".action-left").click(function() {
		$(".mobile-nav").toggleClass('open');
	});

	$('body').waypoint(function(direction) {
	  $(".active").removeClass("active");
	}, { offset: -0 });

	$('#about').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-about").addClass("active");
	  $('body').css('background-color','#f3f3f3');
	  if (direction == 'up') {
	  	$(".header-secondary").slideUp(200);
	  } else {
	  	$(".header-secondary").slideDown(200);
	  }

	}, { offset: -0 });	

	$('#cameras').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-cameras").addClass("active");
	}, { offset: -0 });

	$('#eas').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-eas").addClass("active");
	  $('body').css('background-color','#40a4e8');
	}, { offset: -0 });


	$('#cameras').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-cameras").addClass("active");
	}, { offset: -0 });

	$('#contact').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-contact").addClass("active");
	  
	}, { offset: window.innerHeight-$("#contact").height() });
	
	

	$('#products').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-products").addClass("active");

	  
	}, { offset:0 });

	$('#cctv').waypoint(function(direction) {
	  $(".active").removeClass("active");
	  $(".nav-cctv").addClass("active");

	});

	$(function() {
	  $('a[href*=#]:not([href=#])').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	      if (target.length) {
	        $('html,body').animate({
	          scrollTop: target.offset().top -1
	        }, 1000);
	        return false;
	      }
	    }
	  });
	});

});

$(window).resize(function() {

	setHalfWidth();
})
