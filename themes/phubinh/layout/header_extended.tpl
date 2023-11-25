	<noscript>
		<div class="alert alert-danger">{LANG.nojs}</div>
	</noscript>
		<div id="wrapper">
    <header id="header" class="header has-sticky sticky-jump" style="">
        <div class="header-wrapper">
            <div id="top-bar" class="header-top hide-for-sticky display-none">
                <div class="wraper">
                    <div class="row">
                        <div class="col-xs-24 col-sm-24 col-md-18">
                            [SOCIAL_ICONS]
                        </div>
                        <div class="headerSearch col-xs-24 col-sm-6 col-md-6">
                            <div class="input-group">
                                <input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..."><span class="input-group-btn"><button type="button" class="btn btn-info" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><em class="fa fa-search fa-lg"></em></button></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
				<div id="masthead" class="header-main nav-dark ">
                <div class="header-inner flex-row container logo-left medium-logo-center" role="navigation">
                    <div class="col-xs-5 col-sm-5 main1" style="padding: 0">
                       <div id="mySidepanel" class="sidepanel">
                            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                            [MOBILE]
                        </div>
                        <button class="openbtn" onclick="openNav()">☰</button> 
                    </div>
                    <div id="logo" class="col-xs-20 col-sm-20 col-md-8 logo">
                        <!-- BEGIN: image -->
                        <a href="{THEME_SITE_HREF}" title="{SITE_NAME}"> <img width="238" height="90" src="{LOGO_SRC}" class="header_logo header-logo"><img width="238" height="90" src="{LOGO_SRC}"></a>
                        <!-- END: image -->

                    </div>
                    <div class="col-xs-24 col-sm-24 col-md-16 display-none">
                    [HEAD_RIGHT]
                    </div>
				</div>
			</div>
	</header> 
</div>
                [THEME_ERROR_INFO]
