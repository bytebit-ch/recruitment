$(document).ready(function(){

	new WOW().init();
	
	djcpReady();
		
	


	//jQuery to collapse the navbar on scroll
	$(window).scroll(function() {
		if ($(".navbar").offset().top > 50) {
			$(".navbar-fixed-top").addClass("top-nav-collapse");
		} else {
			$(".navbar-fixed-top").removeClass("top-nav-collapse");
		}
	});

	//jQuery for page scrolling feature - requires jQuery Easing plugin
	$(function() {
		$('.navbar-nav li a').bind('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
		});
		$('.page-scroll a').bind('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
		});
	});

	$('.progress-bar').each(function(i,o) {
		var $o = $(o);
		$o.width($o.attr('data-percent') + '%')
	});
});

$(document).on('ready page:load', function () {
  djcpReady();
});

function djcpReady() {
	$("#preloader").delay(500).fadeOut("slow");
	$("#load").delay(500).fadeOut("slow");
}


//sorting 

$(document).ready(function() {
  var $container = $('.student_flex_index').isotope({
    itemSelector: '.item',
    layoutMode: 'fitRows',
    getSortData: {
      last: '[data-last]'
    }
  });

  $('#sortNameAsc').click(function() {
    $container.isotope({
      sortBy: 'last',
      sortAscending: true
    })
  });
$('#sortNameDesc').click(function() {
    $container.isotope({
      sortBy: 'last',
      sortAscending: false
    });
  });
 })