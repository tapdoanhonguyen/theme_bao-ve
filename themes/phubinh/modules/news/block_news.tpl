<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/phubinh/css/owl.carousel.min.css">
<script src="{NV_BASE_SITEURL}themes/phubinh/js/owl.carousel.min.js"></script>
<script>
var owl = $('#menu');
owl.owlCarousel({
    items:5,
    loop:true,
    margin:30,
    autoplay:true,
    dots:false,
    autoplayTimeout:2000,
    autoplayHoverPause:true,
    navText : ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
    responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                    // nav:true
                },
                600:{
                    items:1,
                    nav:false
                },
                1000:{
                    items:4,
                    nav:true

                }
            }
});
$('.play').on('click',function(){
    owl.trigger('play.owl.autoplay',[1000])
})
$('.stop').on('click',function(){
    owl.trigger('stop.owl.autoplay')
})
</script>
<div id="menu" class="owl-carousel owl-theme">
	<!-- BEGIN: loop -->
    <div class="item">
        <div class="box-new">
    		<!-- BEGIN: img -->
            <div class="img-a">
    		  <a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} ><img src="{ROW.thumb}" alt="{ROW.title}" style="width: 100%;height: 175px;" /></a>
            </div>
    		<!-- END: img -->
            <div class="new-bottom">
                <h2>
            		<a {TITLE} href="{ROW.link}" {ROW.target_blank} data-content="{ROW.hometext_clean}" data-img="{ROW.thumb}" data-rel="block_tooltip">{ROW.title_clean}</a>
                </h2>
                <p class="hometext-new">{ROW.hometext}</p>
            </div>
        </div>
    </div>
	<!-- END: loop -->
</div>
<!-- END: main -->
