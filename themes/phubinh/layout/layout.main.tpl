<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
[SLIDER]
<div class="wraper">{MODULE_CONTENT}
</div>
[TOP]
<div class="page-bg">
	<div class="wraper">
		[PAGE]
	</div>
</div>
<div class="page-blue" >
	<div class="wraper">
		[NEWS_1]
	</div>
</div>
<div class="wraper">
	[BANNER]
</div>

<div class="news-blue">
	<div class="wraper">
		<div class="row">
			<div class="col-xs-24 col-sm-24 col-md-12">
				[NEWS]
			</div>
			<div class="col-xs-24 col-sm-24 col-md-12">
				[NEWS_2]
			</div>
		</div>
	</div>
</div>
<div class="wraper" style="padding: 10px 0">
	[NEWS_3]
</div>
[BOTTOM]
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->