<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/owl.carousel.min.css">
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/owl.carousel.min.js"></script>

<script>
	$(document).ready(function() { 
	  $("#slide").owlCarousel({ 
		autoplay:true,
		autoplayTimeout:4000,
		autoplayHoverPause:true,
		items: 1,
		animateOut: 'fadeOut',
		loop: true,
		nav: true,
		navText : ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
		responsiveClass:true
	  });
	});
</script>
<div id="slide" class="owl-carousel owl-theme">
	<!-- BEGIN: loop -->
	<div class="item">
		<a href="{ROW.link_href}"><img src="{ROW.image}" alt="{ROW.image_alt}"/></a>
	</div>
	<!-- END: loop -->
</div>
<!-- END: main -->