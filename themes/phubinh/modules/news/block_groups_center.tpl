<!-- BEGIN: main -->

<div class="block_groups_center">
    <div id="hot-news">
        <div class="news_column">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-14 padding-0 items-center">
                        <div class="view-more-news clearfix">
                            <!-- BEGIN: thumb -->
                            <div class="col-md-24" style="padding: 0">
                                <a href="{ROW.link}" title="{ROW.link}" {ROW.target_blank}><img src="{ROW.thumb}" alt="{ROW.title}" style="width: 100%" /></a>
                            </div>
                            <div class="col-md-24" style="padding: 0">
                                <h2><a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}>{ROW.title}</a></h2>
                                <p>
                                    {ROW.hometext}
                                </p>
                            </div>
                            <!-- END: thumb -->
                        </div>
                    </div>
                    <div class="col-md-10 other">
                        <div class="newsHot newsHot-list row view-more-news ">
                            <!-- BEGIN: loop -->
                            <div class="clearfix new-other">
                                <div class="">
                                    <div class="col-md-6 i-image" style="padding: 0">
                                        <a href="{ROW.link}" title="{ROW.link}" {ROW.target_blank}>
                                            <img src="{ROW.thumb}" alt="{ROW.title}" style="width: 100%" />
                                        </a>
                                    </div>
                                    <div class="col-md-18 i-title">
                                        <h3><a href="{ROW.link}" title="{ROW.title}">{ROW.title_clean}</a></h3>
                                    </div>
                                </div>
                            </div>
                            <!-- END: loop -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: main -->