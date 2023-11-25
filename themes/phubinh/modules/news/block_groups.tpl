<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/phubinh/css/owl.carousel.min.css">
<script src="{NV_BASE_SITEURL}themes/phubinh/js/owl.carousel.min.js"></script>
<script>
	$(document).ready(function() { 
	  $("#news").owlCarousel({ 
		autoplay:true,
		autoplayTimeout:3000,
		autoplayHoverPause:true,
		items: 1,
		animateOut: 'fadeOut',
		loop: true,
		margin:40,
		dots:false,
		responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                    nav:false
                },
                600:{
                    items:1,
                    nav:false
                },
                1000:{
                    items:3,
                    nav:false

                }
            }

	  });
	});
</script>

<div id="news" class="owl-carousel owl-theme block-default">
	<!-- BEGIN: loop -->
	<div class="item groups-border" style="margin-bottom: 20px;">
		<!-- BEGIN: img -->
		<div style="overflow: hidden;">
		<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} ><img src="{ROW.thumb}" alt="{ROW.title}" class="img-groups" /></a></div>
		<!-- END: img -->
		<h4 class="post-title"><a href="{ROW.link}">{ROW.title_clean}</a></h4>
		<span><i class="fa fa-calendar-check-o"></i>{ROW.publtime}</span>
		<p class="content-new">{ROW.hometext}</p>
		<div style="padding-bottom: 20px;"><a class="more-details" href="{ROW.link}">Chi tiết <i class="fa fa-caret-right"></i></a></div>
	</div>
	<!-- END: loop -->
</div>
<!-- END: main -->