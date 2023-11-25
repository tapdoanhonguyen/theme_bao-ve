<!-- BEGIN: main -->
<div class="clearfix">
	
	<!-- BEGIN: loop -->
	<div class="col-xs-24 col-sm-24 col-md-8">
		<div class="">
			<!-- BEGIN: image -->
			<div class="img-page">
				<a href="{DATA.link}" title="{DATA.title}"><img src="{DATA.image}" alt="{DATA.imagealt}" width="265" height="265" /></a>
			</div>
			<!-- END: image -->
			<h3 class="h3-page"><a href="{DATA.link}" title="{DATA.title}">{DATA.title}</a></h3>
		    <!-- BEGIN: adminlink -->
			<p class="text-center adminlink">
				<em class="fa fa-edit fa-lg">&nbsp;</em><a href="{ADMIN_EDIT}">{GLANG.edit}</a>
				<em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_del_content({DATA.id}, '{ADMIN_CHECKSS}','{NV_BASE_ADMINURL}')">{GLANG.delete}</a>
			</p>
			<!-- END: adminlink -->
		</div>
	</div>
	<!-- END: loop -->
	<div class="text-center">{GENERATE_PAGE}</div>
</div>
<!-- END: main -->