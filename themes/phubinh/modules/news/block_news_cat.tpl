<!-- BEGIN: main -->
<div class="clearfix">
	<!-- BEGIN: loop -->
	<div class="clearfix">
		<div class="col-xs-24 col-sm-24 col-md-10">
	    		<!-- BEGIN: img -->
	    		<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} >
	    			<img src="{ROW.thumb}" alt="{ROW.title}" style="width: 100%;height: 156px;margin-bottom: 10px" />
	    		</a>

	    		<!-- END: img -->
	    </div>
	    <div class="col-xs-24 col-sm-24 col-md-14">
	    	<div class="new-info">
		    	<h2><a href="{ROW.link}" title="{ROW.title}">{ROW.title_clean}</a></h2>
		    	<div class="is-divider"></div>
		    	<p>{ROW.hometext}</p>
		    </div>
	    </div>
	</div>
	<!-- END: loop -->
</div>
<!-- END: main -->
