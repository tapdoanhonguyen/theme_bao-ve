-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: baove_tin
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `nv4_authors`
--

DROP TABLE IF EXISTS `nv4_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors` (
  `admin_id` mediumint(8) unsigned NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `susp_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors`
--

LOCK TABLES `nv4_authors` WRITE;
/*!40000 ALTER TABLE `nv4_authors` DISABLE KEYS */;
INSERT INTO `nv4_authors` VALUES (1,'ckeditor',1,'adobe,archives,audio,documents,flash,images,real,video|1|1|1','Administrator','siteinfo','',0,0,0,'','9f4e7400957d26575848f1d67eede467',1633683435,'116.99.183.234','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36');
/*!40000 ALTER TABLE `nv4_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_authors_config`
--

DROP TABLE IF EXISTS `nv4_authors_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT 0,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyname` (`keyname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors_config`
--

LOCK TABLES `nv4_authors_config` WRITE;
/*!40000 ALTER TABLE `nv4_authors_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_authors_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_authors_module`
--

DROP TABLE IF EXISTS `nv4_authors_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT 0,
  `act_1` tinyint(4) NOT NULL DEFAULT 0,
  `act_2` tinyint(4) NOT NULL DEFAULT 1,
  `act_3` tinyint(4) NOT NULL DEFAULT 1,
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`mid`),
  UNIQUE KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors_module`
--

LOCK TABLES `nv4_authors_module` WRITE;
/*!40000 ALTER TABLE `nv4_authors_module` DISABLE KEYS */;
INSERT INTO `nv4_authors_module` VALUES (1,'siteinfo','mod_siteinfo',1,1,1,1,'d50a4213b9ddb8d2ad947ff6d96b4c34'),(2,'authors','mod_authors',2,1,1,1,'f82264f3f3ee17696151918b3f14936b'),(3,'settings','mod_settings',3,1,1,0,'acf5663f625bd0bf2536ad867bc61d59'),(4,'database','mod_database',4,1,0,0,'dd3b9aa52b5b99bf522268ba563f0cca'),(5,'webtools','mod_webtools',5,1,1,0,'1674b84a4bab0e95894e2ace6ec3e92c'),(6,'seotools','mod_seotools',6,1,1,0,'d61f882a289d140e8044bc42368fb470'),(7,'language','mod_language',7,1,1,0,'f861f8611a1b40d5b9df11cb3a2b87ea'),(8,'modules','mod_modules',8,1,1,0,'3c301cf20bab7407bd4c74cf873b95e6'),(9,'themes','mod_themes',9,1,1,0,'3f23e36dec0f12b29f931bd78c2e55b6'),(10,'extensions','mod_extensions',10,1,0,0,'d8dd79505e0556a827ec7b6d09a1fadf'),(11,'upload','mod_upload',11,1,1,1,'742dc4d62d7d61a7ef0e29ab759c4191');
/*!40000 ALTER TABLE `nv4_authors_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_click`
--

DROP TABLE IF EXISTS `nv4_banners_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_click` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `click_time` int(11) unsigned NOT NULL DEFAULT 0,
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  KEY `click_day` (`click_day`),
  KEY `click_ip` (`click_ip`),
  KEY `click_country` (`click_country`),
  KEY `click_browse_key` (`click_browse_key`),
  KEY `click_os_key` (`click_os_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_click`
--

LOCK TABLES `nv4_banners_click` WRITE;
/*!40000 ALTER TABLE `nv4_banners_click` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_banners_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_plans`
--

DROP TABLE IF EXISTS `nv4_banners_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT 0,
  `height` smallint(4) unsigned NOT NULL DEFAULT 0,
  `act` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `require_image` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_plans`
--

LOCK TABLES `nv4_banners_plans` WRITE;
/*!40000 ALTER TABLE `nv4_banners_plans` DISABLE KEYS */;
INSERT INTO `nv4_banners_plans` VALUES (5,'','Quảng cáo','','sequential',1140,50,1,1,'','',0),(6,'','Dịch vụ mới','','sequential',250,50,1,1,'','',0);
/*!40000 ALTER TABLE `nv4_banners_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_rows`
--

DROP TABLE IF EXISTS `nv4_banners_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT 0,
  `height` int(4) unsigned NOT NULL DEFAULT 0,
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT 0,
  `publ_time` int(11) unsigned NOT NULL DEFAULT 0,
  `exp_time` int(11) unsigned NOT NULL DEFAULT 0,
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `act` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `clid` (`clid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_rows`
--

LOCK TABLES `nv4_banners_rows` WRITE;
/*!40000 ALTER TABLE `nv4_banners_rows` DISABLE KEYS */;
INSERT INTO `nv4_banners_rows` VALUES (8,'1',5,1,'bannervi-1.png','png','image/png',1400,270,'','','','_blank','',1583920604,1583920604,0,0,1,1),(9,'1',6,1,'ndspro.png','png','image/png',250,400,'','','','_blank','',1583981387,1583981387,0,0,1,1);
/*!40000 ALTER TABLE `nv4_banners_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_config`
--

DROP TABLE IF EXISTS `nv4_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `lang` (`lang`,`module`,`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_config`
--

LOCK TABLES `nv4_config` WRITE;
/*!40000 ALTER TABLE `nv4_config` DISABLE KEYS */;
INSERT INTO `nv4_config` VALUES ('sys','site','closed_site','0'),('sys','site','admin_theme','admin_default'),('sys','site','date_pattern','l, d/m/Y'),('sys','site','time_pattern','H:i'),('sys','site','online_upd','1'),('sys','site','statistic','1'),('sys','site','site_phone',''),('sys','site','mailer_mode',''),('sys','site','smtp_host','smtp.gmail.com'),('sys','site','smtp_ssl','1'),('sys','site','smtp_port','465'),('sys','site','verify_peer_ssl','1'),('sys','site','verify_peer_name_ssl','1'),('sys','site','smtp_username','user@gmail.com'),('sys','site','smtp_password',''),('sys','site','googleAnalyticsID',''),('sys','site','googleAnalyticsSetDomainName','0'),('sys','site','googleAnalyticsMethod','classic'),('sys','site','cors_restrict_domains','1'),('sys','site','searchEngineUniqueID',''),('sys','site','metaTagsOgp','1'),('sys','site','pageTitleMode','pagetitle'),('sys','site','description_length','170'),('sys','site','nv_unickmin','4'),('sys','site','nv_unickmax','20'),('sys','site','nv_upassmin','8'),('sys','site','nv_upassmax','32'),('sys','site','dir_forum',''),('sys','site','nv_unick_type','4'),('sys','site','nv_upass_type','3'),('sys','site','allowmailchange','1'),('sys','site','allowuserpublic','1'),('sys','site','allowquestion','0'),('sys','site','allowloginchange','0'),('sys','site','allowuserlogin','1'),('sys','site','allowuserloginmulti','0'),('sys','site','allowuserreg','2'),('sys','site','is_user_forum','0'),('sys','site','openid_servers',''),('sys','site','openid_processing','0'),('sys','site','user_check_pass_time','1800'),('sys','site','auto_login_after_reg','1'),('sys','site','whoviewuser','2'),('sys','site','ssl_https','0'),('sys','site','facebook_client_id',''),('sys','site','facebook_client_secret',''),('sys','site','google_client_id',''),('sys','site','google_client_secret',''),('sys','define','nv_gfx_num','6'),('sys','global','notification_active','1'),('sys','global','notification_autodel','15'),('sys','global','site_keywords','NukeViet, portal, mysql, php'),('sys','global','block_admin_ip','0'),('sys','global','admfirewall','0'),('sys','global','dump_autobackup','1'),('sys','global','dump_backup_ext','gz'),('sys','global','dump_backup_day','30'),('sys','global','gfx_chk','3'),('sys','global','file_allowed_ext','adobe,archives,audio,documents,flash,images,real,video'),('sys','global','forbid_extensions','php,php3,php4,php5,phtml,inc'),('sys','global','forbid_mimes',''),('sys','global','nv_max_size','2097152'),('sys','global','upload_checking_mode','strong'),('sys','global','upload_alt_require','1'),('sys','global','upload_auto_alt','1'),('sys','global','upload_chunk_size','0'),('sys','global','useactivate','2'),('sys','global','allow_sitelangs','vi'),('sys','global','read_type','0'),('sys','global','rewrite_enable','1'),('sys','global','rewrite_optional','0'),('sys','global','rewrite_endurl','/'),('sys','global','rewrite_exturl','.html'),('sys','global','rewrite_op_mod',''),('sys','global','autocheckupdate','1'),('sys','global','autoupdatetime','24'),('sys','global','gzip_method','1'),('sys','global','authors_detail_main','0'),('sys','global','spadmin_add_admin','1'),('sys','global','timestamp','1585876825'),('sys','global','captcha_type','0'),('sys','global','version','4.3.08'),('sys','global','cookie_httponly','1'),('sys','global','admin_check_pass_time','1800'),('sys','global','cookie_secure','0'),('sys','global','is_flood_blocker','1'),('sys','global','max_requests_60','40'),('sys','global','max_requests_300','150'),('sys','global','is_login_blocker','1'),('sys','global','login_number_tracking','5'),('sys','global','login_time_tracking','5'),('sys','global','login_time_ban','30'),('sys','global','nv_display_errors_list','1'),('sys','global','display_errors_list','1'),('sys','global','nv_auto_resize','1'),('sys','global','dump_interval','1'),('sys','global','cdn_url',''),('sys','global','two_step_verification','0'),('sys','global','recaptcha_sitekey',''),('sys','global','recaptcha_secretkey',''),('sys','global','recaptcha_type','image'),('sys','define','nv_gfx_width','150'),('sys','define','nv_gfx_height','40'),('sys','define','nv_max_width','1500'),('sys','define','nv_max_height','1500'),('sys','define','nv_live_cookie_time','31104000'),('sys','define','nv_live_session_time','0'),('sys','define','nv_anti_iframe','1'),('sys','define','nv_anti_agent','0'),('sys','define','nv_allowed_html_tags','embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),('sys','define','nv_debug','0'),('vi','global','site_domain',''),('vi','global','site_name','Dịch vụ bảo vệ Toàn Cầu | bảo vệ chuyên nghiệp'),('vi','global','site_logo','uploads/logo_hoaphat-ketthuc.png'),('vi','global','site_banner',''),('vi','global','site_favicon',''),('vi','global','site_description','Chia sẻ thành công, kết nối đam mê'),('vi','global','site_keywords','Dịch vụ bảo vệ Toàn Cầu | bảo vệ chuyên nghiệp'),('vi','global','theme_type','r'),('vi','global','site_theme','phubinh'),('vi','global','preview_theme',''),('vi','global','mobile_theme',''),('vi','global','site_home_module','news'),('vi','global','switch_mobi_des','0'),('vi','global','upload_logo',''),('vi','global','upload_logo_pos','bottomRight'),('vi','global','autologosize1','50'),('vi','global','autologosize2','40'),('vi','global','autologosize3','30'),('vi','global','autologomod',''),('vi','global','name_show','0'),('vi','global','cronjobs_next_time','1633683723'),('vi','global','disable_site_content','Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),('vi','seotools','prcservice',''),('vi','about','sortcomm','0'),('vi','about','auto_postcomm','1'),('vi','about','allowed_comm','-1'),('vi','about','view_comm','6'),('vi','about','setcomm','4'),('vi','about','activecomm','1'),('vi','about','emailcomm','0'),('vi','about','adminscomm',''),('vi','news','allowed_comm','-1'),('vi','news','auto_postcomm','1'),('vi','news','instant_articles_auto','1'),('vi','news','instant_articles_gettime','120'),('vi','news','instant_articles_httpauth','0'),('vi','news','instant_articles_username',''),('vi','news','instant_articles_password',''),('vi','news','instant_articles_livetime','60'),('vi','news','instant_articles_template','default'),('vi','news','instant_articles_active','0'),('vi','news','elas_index',''),('vi','news','elas_port','9200'),('vi','news','elas_host',''),('vi','news','elas_use','0'),('vi','news','order_articles','1'),('vi','news','htmlhometext','0'),('vi','news','imgposition','2'),('vi','news','structure_upload','Ym'),('vi','news','copy_news','0'),('vi','news','keywords_tag','1'),('vi','news','tags_remind','1'),('vi','news','auto_tags','0'),('vi','news','tags_alias','0'),('vi','news','alias_lower','1'),('vi','news','socialbutton','1'),('vi','news','facebookappid',''),('vi','news','allowed_rating_point','1'),('vi','news','show_no_image',''),('vi','news','config_source','0'),('vi','news','timecheckstatus','0'),('vi','news','showhometext','1'),('vi','news','tooltip_length','150'),('vi','news','tooltip_position','bottom'),('vi','news','showtooltip','1'),('vi','news','copyright',''),('vi','news','imagefull','460'),('vi','news','blockheight','75'),('vi','news','blockwidth','70'),('vi','news','homeheight','150'),('vi','news','homewidth','100'),('vi','news','st_links','10'),('vi','news','per_page','20'),('vi','news','identify_cat_change','0'),('vi','news','indexfile','viewcat_none'),('vi','contact','sendcopymode','0'),('vi','about','captcha','1'),('vi','about','perpagecomm','5'),('vi','about','timeoutcomm','360'),('vi','about','allowattachcomm','0'),('vi','about','alloweditorcomm','0'),('vi','dich-vu','auto_postcomm','1'),('vi','dich-vu','allowed_comm','-1'),('vi','dich-vu','view_comm','6'),('vi','dich-vu','setcomm','4'),('vi','dich-vu','activecomm','1'),('vi','dich-vu','emailcomm','0'),('vi','dich-vu','adminscomm',''),('vi','dich-vu','sortcomm','0'),('vi','contact','bodytext',''),('vi','page','sortcomm','0'),('vi','page','auto_postcomm','1'),('vi','page','allowed_comm','-1'),('vi','page','view_comm','6'),('vi','page','setcomm','4'),('vi','page','activecomm','1'),('vi','page','emailcomm','0'),('vi','page','adminscomm',''),('vi','siteterms','auto_postcomm','1'),('vi','siteterms','allowed_comm','-1'),('vi','siteterms','view_comm','6'),('vi','siteterms','setcomm','4'),('vi','siteterms','activecomm','0'),('vi','siteterms','emailcomm','0'),('vi','siteterms','adminscomm',''),('vi','siteterms','sortcomm','0'),('vi','siteterms','captcha','1'),('vi','siteterms','perpagecomm','5'),('vi','siteterms','timeoutcomm','360'),('vi','siteterms','allowattachcomm','0'),('vi','siteterms','alloweditorcomm','0'),('vi','freecontent','next_execute','0'),('sys','site','statistics_timezone','Asia/Bangkok'),('sys','site','site_email','webmaster@localhost'),('sys','global','error_set_logs','1'),('sys','global','error_send_email','webmaster@localhost'),('sys','global','site_lang','vi'),('sys','global','my_domains','localhost'),('sys','global','cookie_prefix','nv4'),('sys','global','session_prefix','nv4s_a8AV7P'),('sys','global','site_timezone','byCountry'),('sys','global','proxy_blocker','0'),('sys','global','str_referer_blocker','0'),('sys','global','lang_multi','0'),('sys','global','lang_geo','0'),('sys','global','ftp_server','localhost'),('sys','global','ftp_port','21'),('sys','global','ftp_user_name',''),('sys','global','ftp_user_pass','F_KvPHJnY3PsQIJTzNvHsQ,,'),('sys','global','ftp_path','/'),('sys','global','ftp_check_login','0'),('vi','videos','per_line','3'),('vi','videos','homewidth','270'),('vi','dich-vu','captcha','1'),('vi','videos','socialbutton','1'),('vi','videos','homeheight','200'),('vi','videos','blockwidth','150'),('vi','videos','fb_comm','1'),('vi','videos','blockheight','100'),('vi','videos','titlecut','75'),('vi','videos','copyright',''),('vi','videos','timecheckstatus','0'),('vi','videos','config_source','0'),('vi','videos','show_no_image',''),('vi','videos','allowed_rating_point','1'),('vi','videos','indexfile','viewgrid_by_cat'),('vi','dich-vu','perpagecomm','5'),('vi','dich-vu','timeoutcomm','360'),('vi','videos','fb_admin',''),('vi','dich-vu','allowattachcomm','0'),('vi','dich-vu','alloweditorcomm','0'),('vi','news','view_comm','6'),('vi','news','setcomm','4'),('vi','news','activecomm','1'),('vi','news','emailcomm','0'),('vi','news','adminscomm',''),('vi','news','sortcomm','0'),('vi','news','captcha','1'),('vi','news','perpagecomm','5'),('vi','news','timeoutcomm','360'),('vi','news','allowattachcomm','0'),('vi','news','alloweditorcomm','0'),('vi','news','frontend_edit_alias','0'),('vi','news','frontend_edit_layout','1'),('vi','page','captcha','1'),('vi','page','perpagecomm','5'),('vi','page','timeoutcomm','360'),('vi','page','allowattachcomm','0'),('vi','page','alloweditorcomm','0'),('vi','videos','facebookappid',''),('vi','videos','per_page','20'),('vi','videos','st_links','10'),('vi','videos','alias_lower','1'),('vi','videos','tags_alias','0'),('vi','videos','auto_tags','0'),('vi','videos','tags_remind','1'),('vi','videos','structure_upload','Ym'),('vi','videos','allow_user_plist','1'),('vi','videos','playlist_moderate','1'),('vi','videos','playlist_allow_detele','1'),('vi','videos','playlist_max_items','20'),('vi','videos','youtube_api',''),('vi','videos','jwplayer_license','NqPyv5C3s2LTybLMlqx3nfOJTvmRqu9cuQPTrQ=='),('vi','videos','jwplayer_autoplay','false'),('vi','videos','jwplayer_loop','false'),('vi','videos','jwplayer_controlbar','true'),('vi','videos','jwplayer_mute','false'),('vi','videos','jwplayer_skin','five'),('vi','videos','jwplayer_sharing','0'),('vi','videos','jwplayer_sharingsite','facebook,twitter,googleplus'),('vi','videos','jwplayer_logo','0'),('vi','videos','jwplayer_logo_file',''),('vi','videos','jwplayer_position','top-right'),('vi','videos','auto_postcomm','1'),('vi','videos','allowed_comm','-1'),('vi','videos','view_comm','6'),('vi','videos','setcomm','4'),('vi','videos','activecomm','1'),('vi','videos','emailcomm','0'),('vi','videos','adminscomm',''),('vi','videos','sortcomm','0'),('vi','videos','captcha','1'),('vi','videos','perpagecomm','5'),('vi','videos','timeoutcomm','360'),('sys','site','cors_valid_domains',''),('sys','site','referer_blocker','1'),('vi','global','user_allowed_theme',''),('sys','site','private_site','0');
/*!40000 ALTER TABLE `nv4_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_cookies`
--

DROP TABLE IF EXISTS `nv4_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT 0,
  `secure` tinyint(1) NOT NULL DEFAULT 0,
  UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_cookies`
--

LOCK TABLES `nv4_cookies` WRITE;
/*!40000 ALTER TABLE `nv4_cookies` DISABLE KEYS */;
INSERT INTO `nv4_cookies` VALUES ('nv4c_b1Sp_ctr','MTE2XzExMV8xNTBfMjEuVk4=','.api.nukeviet.vn','/',1615456707,0),('nv4c_b1Sp_u_lang','YpTSHDtzEZZlnKC1-4-mDQ,,','.api.nukeviet.vn','/',1589008023,0),('nv4c_b1Sp_statistic_vi','OWE78HLigHv0Vrm_qsXH0w,,','.api.nukeviet.vn','/',1583922507,0),('nv4c_b1Sp_nvvithemever','y6z0B4S1YKW4aqQyD0bnVQ,,','.api.nukeviet.vn','/',1615024961,0);
/*!40000 ALTER TABLE `nv4_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_counter`
--

DROP TABLE IF EXISTS `nv4_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `c_count` int(11) unsigned NOT NULL DEFAULT 0,
  `vi_count` int(11) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `c_type` (`c_type`,`c_val`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_counter`
--

LOCK TABLES `nv4_counter` WRITE;
/*!40000 ALTER TABLE `nv4_counter` DISABLE KEYS */;
INSERT INTO `nv4_counter` VALUES ('c_time','start',0,0,0),('c_time','last',0,1633683419,0),('total','hits',1633683419,133,133),('year','2019',1557909276,27,27),('year','2020',1604543138,16,16),('year','2021',1633683419,90,90),('year','2022',0,0,0),('year','2023',0,0,0),('year','2024',0,0,0),('year','2025',0,0,0),('year','2026',0,0,0),('year','2027',0,0,0),('month','Jan',1610329379,1,1),('month','Feb',0,0,0),('month','Mar',1585626147,0,0),('month','Apr',1619399391,2,2),('month','May',1620717079,3,3),('month','Jun',1624866831,1,1),('month','Jul',0,0,0),('month','Aug',1629948448,29,29),('month','Sep',1632913309,23,23),('month','Oct',1633683419,31,31),('month','Nov',1604543138,0,0),('month','Dec',0,0,0),('day','01',1633078313,1,1),('day','02',0,0,0),('day','03',1585876664,0,0),('day','04',1633346740,21,21),('day','05',1633383819,1,1),('day','06',1633529189,4,4),('day','07',1633591645,1,1),('day','08',1633683419,3,3),('day','09',0,0,0),('day','10',1631270409,0,0),('day','11',1631339843,0,0),('day','12',1583984384,0,0),('day','13',1628813643,0,0),('day','14',1631617558,0,0),('day','15',1629019585,0,0),('day','16',1631804749,0,0),('day','17',0,0,0),('day','18',1631984143,0,0),('day','19',1632058300,0,0),('day','20',1632071946,0,0),('day','21',1632237031,0,0),('day','22',1632248020,0,0),('day','23',0,0,0),('day','24',1629754775,0,0),('day','25',1632522533,0,0),('day','26',1629948448,0,0),('day','27',0,0,0),('day','28',1624866831,0,0),('day','29',1632913309,0,0),('day','30',0,0,0),('day','31',1585626147,0,0),('dayofweek','Sunday',1632058300,6,6),('dayofweek','Monday',1633346740,28,28),('dayofweek','Tuesday',1633383819,27,27),('dayofweek','Wednesday',1633529189,22,22),('dayofweek','Thursday',1633591645,14,14),('dayofweek','Friday',1633683419,25,25),('dayofweek','Saturday',1632522533,11,11),('hour','00',1633454006,0,0),('hour','01',1632248020,0,0),('hour','02',1633290329,0,0),('hour','03',1633637141,1,1),('hour','04',1633383819,0,0),('hour','05',1632522533,0,0),('hour','06',1631749489,0,0),('hour','07',1629417814,0,0),('hour','08',1619399391,0,0),('hour','09',1620614168,0,0),('hour','10',1633665566,1,1),('hour','11',0,0,0),('hour','12',1631339843,0,0),('hour','13',1631947925,0,0),('hour','14',1633591645,0,0),('hour','15',1633683419,1,1),('hour','16',1629019585,0,0),('hour','17',1631270409,0,0),('hour','18',1633346740,0,0),('hour','19',1631969995,0,0),('hour','20',1632058300,0,0),('hour','21',1633529189,0,0),('hour','22',1632237031,0,0),('hour','23',1631984143,0,0),('bot','googlebot',0,0,0),('bot','msnbot',0,0,0),('bot','bingbot',0,0,0),('bot','yahooslurp',0,0,0),('bot','w3cvalidator',0,0,0),('browser','opera',0,0,0),('browser','operamini',0,0,0),('browser','webtv',0,0,0),('browser','explorer',0,0,0),('browser','edge',0,0,0),('browser','pocket',0,0,0),('browser','konqueror',0,0,0),('browser','icab',0,0,0),('browser','omniweb',0,0,0),('browser','firebird',0,0,0),('browser','firefox',0,0,0),('browser','iceweasel',0,0,0),('browser','shiretoko',0,0,0),('browser','mozilla',1633637141,76,76),('browser','amaya',0,0,0),('browser','lynx',0,0,0),('browser','safari',0,0,0),('browser','iphone',0,0,0),('browser','ipod',0,0,0),('browser','ipad',0,0,0),('browser','chrome',1633683419,54,54),('browser','cococ',0,0,0),('browser','android',0,0,0),('browser','googlebot',0,0,0),('browser','yahooslurp',0,0,0),('browser','w3cvalidator',0,0,0),('browser','blackberry',0,0,0),('browser','icecat',0,0,0),('browser','nokias60',0,0,0),('browser','nokia',0,0,0),('browser','msn',0,0,0),('browser','msnbot',0,0,0),('browser','bingbot',0,0,0),('browser','netscape',0,0,0),('browser','galeon',0,0,0),('browser','netpositive',0,0,0),('browser','phoenix',0,0,0),('browser','Mobile',0,0,0),('browser','bots',0,0,0),('browser','Unknown',1631270409,3,3),('os','unknown',1633637141,79,79),('os','win',0,0,0),('os','win10',1620615804,2,2),('os','win8',0,0,0),('os','win7',1633683419,48,48),('os','win2003',0,0,0),('os','winvista',0,0,0),('os','wince',0,0,0),('os','winxp',0,0,0),('os','win2000',0,0,0),('os','apple',0,0,0),('os','linux',0,0,0),('os','os2',0,0,0),('os','beos',0,0,0),('os','iphone',0,0,0),('os','ipod',0,0,0),('os','ipad',0,0,0),('os','blackberry',0,0,0),('os','nokia',0,0,0),('os','freebsd',0,0,0),('os','openbsd',0,0,0),('os','netbsd',0,0,0),('os','sunos',0,0,0),('os','opensolaris',0,0,0),('os','android',1628322954,4,4),('os','irix',0,0,0),('os','palm',0,0,0),('country','AD',0,0,0),('country','AE',0,0,0),('country','AF',0,0,0),('country','AG',0,0,0),('country','AI',0,0,0),('country','AL',0,0,0),('country','AM',0,0,0),('country','AN',0,0,0),('country','AO',0,0,0),('country','AQ',0,0,0),('country','AR',0,0,0),('country','AS',0,0,0),('country','AT',0,0,0),('country','AU',0,0,0),('country','AW',0,0,0),('country','AZ',0,0,0),('country','BA',0,0,0),('country','BB',0,0,0),('country','BD',0,0,0),('country','BE',0,0,0),('country','BF',0,0,0),('country','BG',0,0,0),('country','BH',0,0,0),('country','BI',0,0,0),('country','BJ',0,0,0),('country','BM',0,0,0),('country','BN',0,0,0),('country','BO',0,0,0),('country','BR',0,0,0),('country','BS',0,0,0),('country','BT',0,0,0),('country','BW',0,0,0),('country','BY',0,0,0),('country','BZ',0,0,0),('country','CA',0,0,0),('country','CD',0,0,0),('country','CF',0,0,0),('country','CG',0,0,0),('country','CH',0,0,0),('country','CI',0,0,0),('country','CK',0,0,0),('country','CL',0,0,0),('country','CM',0,0,0),('country','CN',0,0,0),('country','CO',0,0,0),('country','CR',0,0,0),('country','CS',0,0,0),('country','CU',0,0,0),('country','CV',0,0,0),('country','CY',0,0,0),('country','CZ',0,0,0),('country','DE',0,0,0),('country','DJ',0,0,0),('country','DK',0,0,0),('country','DM',0,0,0),('country','DO',0,0,0),('country','DZ',0,0,0),('country','EC',0,0,0),('country','EE',0,0,0),('country','EG',0,0,0),('country','ER',0,0,0),('country','ES',0,0,0),('country','ET',0,0,0),('country','EU',0,0,0),('country','FI',0,0,0),('country','FJ',0,0,0),('country','FK',0,0,0),('country','FM',0,0,0),('country','FO',0,0,0),('country','FR',0,0,0),('country','GA',0,0,0),('country','GB',0,0,0),('country','GD',0,0,0),('country','GE',0,0,0),('country','GF',0,0,0),('country','GH',0,0,0),('country','GI',0,0,0),('country','GL',0,0,0),('country','GM',0,0,0),('country','GN',0,0,0),('country','GP',0,0,0),('country','GQ',0,0,0),('country','GR',0,0,0),('country','GS',0,0,0),('country','GT',0,0,0),('country','GU',0,0,0),('country','GW',0,0,0),('country','GY',0,0,0),('country','HK',0,0,0),('country','HN',0,0,0),('country','HR',0,0,0),('country','HT',0,0,0),('country','HU',0,0,0),('country','ID',0,0,0),('country','IE',0,0,0),('country','IL',0,0,0),('country','IN',0,0,0),('country','IO',0,0,0),('country','IQ',0,0,0),('country','IR',0,0,0),('country','IS',0,0,0),('country','IT',0,0,0),('country','JM',0,0,0),('country','JO',0,0,0),('country','JP',0,0,0),('country','KE',0,0,0),('country','KG',0,0,0),('country','KH',0,0,0),('country','KI',0,0,0),('country','KM',0,0,0),('country','KN',0,0,0),('country','KR',0,0,0),('country','KW',0,0,0),('country','KY',0,0,0),('country','KZ',0,0,0),('country','LA',0,0,0),('country','LB',0,0,0),('country','LC',0,0,0),('country','LI',0,0,0),('country','LK',0,0,0),('country','LR',0,0,0),('country','LS',0,0,0),('country','LT',0,0,0),('country','LU',0,0,0),('country','LV',0,0,0),('country','LY',0,0,0),('country','MA',0,0,0),('country','MC',0,0,0),('country','MD',0,0,0),('country','MG',0,0,0),('country','MH',0,0,0),('country','MK',0,0,0),('country','ML',0,0,0),('country','MM',0,0,0),('country','MN',0,0,0),('country','MO',0,0,0),('country','MP',0,0,0),('country','MQ',0,0,0),('country','MR',0,0,0),('country','MT',0,0,0),('country','MU',0,0,0),('country','MV',0,0,0),('country','MW',0,0,0),('country','MX',0,0,0),('country','MY',0,0,0),('country','MZ',0,0,0),('country','NA',0,0,0),('country','NC',0,0,0),('country','NE',0,0,0),('country','NF',0,0,0),('country','NG',0,0,0),('country','NI',0,0,0),('country','NL',0,0,0),('country','NO',0,0,0),('country','NP',0,0,0),('country','NR',0,0,0),('country','NU',0,0,0),('country','NZ',0,0,0),('country','OM',0,0,0),('country','PA',0,0,0),('country','PE',0,0,0),('country','PF',0,0,0),('country','PG',0,0,0),('country','PH',0,0,0),('country','PK',0,0,0),('country','PL',0,0,0),('country','PR',0,0,0),('country','PS',0,0,0),('country','PT',0,0,0),('country','PW',0,0,0),('country','PY',0,0,0),('country','QA',0,0,0),('country','RE',0,0,0),('country','RO',0,0,0),('country','RU',0,0,0),('country','RW',0,0,0),('country','SA',0,0,0),('country','SB',0,0,0),('country','SC',0,0,0),('country','SD',0,0,0),('country','SE',0,0,0),('country','SG',1628322797,1,1),('country','SI',0,0,0),('country','SK',0,0,0),('country','SL',0,0,0),('country','SM',0,0,0),('country','SN',0,0,0),('country','SO',0,0,0),('country','SR',0,0,0),('country','ST',0,0,0),('country','SV',0,0,0),('country','SY',0,0,0),('country','SZ',0,0,0),('country','TD',0,0,0),('country','TF',0,0,0),('country','TG',0,0,0),('country','TH',0,0,0),('country','TJ',0,0,0),('country','TK',0,0,0),('country','TL',0,0,0),('country','TM',0,0,0),('country','TN',0,0,0),('country','TO',0,0,0),('country','TR',0,0,0),('country','TT',0,0,0),('country','TV',0,0,0),('country','TW',0,0,0),('country','TZ',0,0,0),('country','UA',0,0,0),('country','UG',0,0,0),('country','US',1633637141,78,78),('country','UY',0,0,0),('country','UZ',0,0,0),('country','VA',0,0,0),('country','VC',0,0,0),('country','VE',0,0,0),('country','VG',0,0,0),('country','VI',0,0,0),('country','VN',1633683419,12,12),('country','VU',0,0,0),('country','WS',0,0,0),('country','YE',0,0,0),('country','YT',0,0,0),('country','YU',0,0,0),('country','ZA',0,0,0),('country','ZM',0,0,0),('country','ZW',0,0,0),('country','ZZ',1585876664,42,42),('country','unkown',0,0,0);
/*!40000 ALTER TABLE `nv4_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_cronjobs`
--

DROP TABLE IF EXISTS `nv4_cronjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` int(11) unsigned NOT NULL DEFAULT 0,
  `inter_val` int(11) unsigned NOT NULL DEFAULT 0,
  `inter_val_type` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `act` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `last_time` int(11) unsigned NOT NULL DEFAULT 0,
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `is_sys` (`is_sys`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_cronjobs`
--

LOCK TABLES `nv4_cronjobs` WRITE;
/*!40000 ALTER TABLE `nv4_cronjobs` DISABLE KEYS */;
INSERT INTO `nv4_cronjobs` VALUES (1,1557802785,5,0,'online_expired_del.php','cron_online_expired_del','',0,1,1,1633683423,1,'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),(2,1557802785,1440,0,'dump_autobackup.php','cron_dump_autobackup','',0,1,1,1633665568,1,'Tự động lưu CSDL'),(3,1557802785,60,0,'temp_download_destroy.php','cron_auto_del_temp_download','',0,1,1,1633683423,1,'Xóa các file tạm trong thư mục tmp'),(4,1557802785,30,0,'ip_logs_destroy.php','cron_del_ip_logs','',0,1,1,1633683423,1,'Xóa IP log files, Xóa các file nhật ký truy cập'),(5,1557802785,1440,0,'error_log_destroy.php','cron_auto_del_error_log','',0,1,1,1633665568,1,'Xóa các file error_log quá hạn'),(6,1557802785,360,0,'error_log_sendmail.php','cron_auto_sendmail_error_log','',0,1,0,0,0,'Gửi email các thông báo lỗi cho admin'),(7,1557802785,60,0,'ref_expired_del.php','cron_ref_expired_del','',0,1,1,1633683423,1,'Xóa các referer quá hạn'),(8,1557802785,60,0,'check_version.php','cron_auto_check_version','',0,1,1,1633683423,1,'Kiểm tra phiên bản NukeViet'),(9,1557802785,1440,0,'notification_autodel.php','cron_notification_autodel','',0,1,1,1633665568,1,'Xóa thông báo cũ');
/*!40000 ALTER TABLE `nv4_cronjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_extension_files`
--

DROP TABLE IF EXISTS `nv4_extension_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) unsigned NOT NULL DEFAULT 0,
  `duplicate` smallint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idfile`)
) ENGINE=MyISAM AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_extension_files`
--

LOCK TABLES `nv4_extension_files` WRITE;
/*!40000 ALTER TABLE `nv4_extension_files` DISABLE KEYS */;
INSERT INTO `nv4_extension_files` VALUES (555,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ko.js',1557908663,0),(554,'module','photos','themes/admin_default/modules/photos/plupload/i18n/km.js',1557908663,0),(553,'module','photos','themes/admin_default/modules/photos/plupload/i18n/kk.js',1557908663,0),(552,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ka.js',1557908663,0),(551,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ja.js',1557908663,0),(550,'module','photos','themes/admin_default/modules/photos/plupload/i18n/it.js',1557908663,0),(549,'module','photos','themes/admin_default/modules/photos/plupload/i18n/index.html',1557908663,0),(548,'module','photos','themes/admin_default/modules/photos/plupload/i18n/id.js',1557908663,0),(547,'module','photos','themes/admin_default/modules/photos/plupload/i18n/hy.js',1557908663,0),(546,'module','photos','themes/admin_default/modules/photos/plupload/i18n/hu.js',1557908663,0),(545,'module','photos','themes/admin_default/modules/photos/plupload/i18n/hr.js',1557908663,0),(544,'module','photos','themes/admin_default/modules/photos/plupload/i18n/he.js',1557908663,0),(543,'module','photos','themes/admin_default/modules/photos/plupload/i18n/fr.js',1557908663,0),(542,'module','photos','themes/admin_default/modules/photos/plupload/i18n/fi.js',1557908663,0),(541,'module','photos','themes/admin_default/modules/photos/plupload/i18n/fa.js',1557908663,0),(540,'module','photos','themes/admin_default/modules/photos/plupload/i18n/et.js',1557908663,0),(539,'module','photos','themes/admin_default/modules/photos/plupload/i18n/es.js',1557908663,0),(538,'module','photos','themes/admin_default/modules/photos/plupload/i18n/en.js',1557908663,0),(537,'module','photos','themes/admin_default/modules/photos/plupload/i18n/el.js',1557908663,0),(536,'module','photos','themes/admin_default/modules/photos/plupload/i18n/de.js',1557908663,0),(535,'module','photos','themes/admin_default/modules/photos/plupload/i18n/da.js',1557908663,0),(534,'module','photos','themes/admin_default/modules/photos/plupload/i18n/cy.js',1557908663,0),(533,'module','photos','themes/admin_default/modules/photos/plupload/i18n/cs.js',1557908663,0),(532,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ca.js',1557908663,0),(531,'module','photos','themes/admin_default/modules/photos/plupload/i18n/bs.js',1557908663,0),(530,'module','photos','themes/admin_default/modules/photos/plupload/i18n/bg.js',1557908663,0),(529,'module','photos','themes/admin_default/modules/photos/plupload/i18n/az.js',1557908663,0),(528,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ar.js',1557908663,0),(527,'module','photos','themes/admin_default/modules/photos/main.tpl',1557908663,0),(526,'module','photos','themes/admin_default/modules/photos/index.html',1557908663,0),(525,'module','photos','themes/admin_default/modules/photos/category_add.tpl',1557908663,0),(524,'module','photos','themes/admin_default/modules/photos/category.tpl',1557908663,0),(523,'module','photos','themes/admin_default/modules/photos/album_add.tpl',1557908663,0),(522,'module','photos','themes/admin_default/images/photos/lb-uploadnotes.gif',1557908663,0),(521,'module','photos','themes/admin_default/images/photos/index.html',1557908663,0),(520,'module','photos','themes/admin_default/images/photos/icon-note.gif',1557908663,0),(519,'module','photos','themes/admin_default/images/photos/duan-thumb.png',1557908663,0),(518,'module','photos','themes/admin_default/images/photos/delete.png',1557908663,0),(517,'module','photos','themes/admin_default/images/photos/bg_s.gif',1557908663,0),(516,'module','photos','themes/admin_default/images/photos/bg-uploadborder.gif',1557908663,0),(515,'module','photos','themes/admin_default/images/photos/bg-newalbumright.gif',1557908663,0),(514,'module','photos','themes/admin_default/images/photos/bg-newalbumleft.gif',1557908663,0),(513,'module','photos','themes/admin_default/images/photos/bg-cancelalbumright.gif',1557908663,0),(512,'module','photos','themes/admin_default/images/photos/bg-cancelalbumleft.gif',1557908663,0),(511,'module','photos','themes/admin_default/js/photos_footer.js',1557908663,0),(510,'module','photos','themes/admin_default/js/photos.js',1557908663,0),(509,'module','photos','themes/admin_default/css/photos.css',1557908663,0),(508,'module','photos','themes/default/images/photos/ribbon.png',1557908663,0),(507,'module','photos','themes/default/images/photos/ribbon-small.png',1557908663,0),(506,'module','photos','themes/default/images/photos/loading-photos.gif',1557908663,0),(505,'module','photos','themes/default/images/photos/index.html',1557908663,0),(504,'module','photos','themes/default/images/photos/golden_small.png',1557908663,0),(503,'module','photos','themes/default/images/photos/golden.png',1557908663,0),(502,'module','photos','themes/default/images/photos/curved-small.png',1557908663,0),(501,'module','photos','themes/default/images/photos/7-small.png',1557908663,0),(500,'module','photos','themes/default/images/photos/6-small.png',1557908663,0),(499,'module','photos','themes/default/images/photos/6-large.png',1557908663,0),(498,'module','photos','themes/default/images/photos/5-small.png',1557908663,0),(497,'module','photos','themes/default/images/photos/5-large.png',1557908663,0),(496,'module','photos','themes/default/js/photos.js',1557908663,0),(495,'module','photos','themes/default/css/photos.css',1557908663,0),(494,'module','photos','themes/default/modules/photos/viewcat_grid.tpl',1557908663,0),(493,'module','photos','themes/default/modules/photos/search.tpl',1557908663,0),(492,'module','photos','themes/default/modules/photos/plugins/swiper/js/swiper.min.js',1557908663,0),(491,'module','photos','themes/default/modules/photos/plugins/swiper/js/swiper.js',1557908663,0),(490,'module','photos','themes/default/modules/photos/plugins/swiper/js/swiper.jquery.umd.min.js',1557908663,0),(489,'module','photos','themes/default/modules/photos/plugins/swiper/js/swiper.jquery.umd.js',1557908663,0),(488,'module','photos','themes/default/modules/photos/plugins/swiper/js/swiper.jquery.min.js',1557908663,0),(487,'module','photos','themes/default/modules/photos/plugins/swiper/js/swiper.jquery.js',1557908663,0),(486,'module','photos','themes/default/modules/photos/plugins/swiper/js/maps/swiper.min.js.map',1557908663,0),(485,'module','photos','themes/default/modules/photos/plugins/swiper/js/maps/swiper.jquery.umd.min.js.map',1557908663,0),(484,'module','photos','themes/default/modules/photos/plugins/swiper/js/maps/swiper.jquery.min.js.map',1557908663,0),(483,'module','photos','themes/default/modules/photos/plugins/swiper/js/maps/index.html',1557908663,0),(482,'module','photos','themes/default/modules/photos/plugins/swiper/js/index.html',1557908663,0),(481,'module','photos','themes/default/modules/photos/plugins/swiper/index.html',1557908663,0),(480,'module','photos','themes/default/modules/photos/plugins/swiper/css/swiper.min.css',1557908663,0),(479,'module','photos','themes/default/modules/photos/plugins/swiper/css/swiper.css',1557908663,0),(478,'module','photos','themes/default/modules/photos/plugins/swiper/css/index.html',1557908663,0),(477,'module','photos','themes/default/modules/photos/plugins/shadowbox/shadowbox.js',1557908663,0),(476,'module','photos','themes/default/modules/photos/plugins/shadowbox/shadowbox.css',1557908663,0),(475,'module','photos','themes/default/modules/photos/plugins/shadowbox/previous.png',1557908663,0),(474,'module','photos','themes/default/modules/photos/plugins/shadowbox/player.swf',1557908663,0),(473,'module','photos','themes/default/modules/photos/plugins/shadowbox/play.png',1557908663,0),(472,'module','photos','themes/default/modules/photos/plugins/shadowbox/pause.png',1557908663,0),(471,'module','photos','themes/default/modules/photos/plugins/shadowbox/next.png',1557908663,0),(470,'module','photos','themes/default/modules/photos/plugins/shadowbox/loading.gif',1557908663,0),(469,'module','photos','themes/default/modules/photos/plugins/shadowbox/index.html',1557908663,0),(468,'module','photos','themes/default/modules/photos/plugins/shadowbox/expressInstall.swf',1557908663,0),(467,'module','photos','themes/default/modules/photos/plugins/shadowbox/close.png',1557908663,0),(466,'module','photos','themes/default/modules/photos/plugins/magicslideshow/themes/magicslideshow.core.css',1557908663,0),(465,'module','photos','themes/default/modules/photos/plugins/magicslideshow/themes/index.html',1557908663,0),(464,'module','photos','themes/default/modules/photos/plugins/magicslideshow/themes/default/magicslideshow.default.css',1557908663,0),(463,'module','photos','themes/default/modules/photos/plugins/magicslideshow/themes/default/index.html',1557908663,0),(462,'module','photos','themes/default/modules/photos/plugins/magicslideshow/themes/default/graphics/loader.gif',1557908663,0),(461,'module','photos','themes/default/modules/photos/plugins/magicslideshow/themes/default/graphics/index.html',1557908663,0),(460,'module','photos','themes/default/modules/photos/plugins/magicslideshow/themes/default/graphics/buttons@2x.png',1557908663,0),(459,'module','photos','themes/default/modules/photos/plugins/magicslideshow/themes/default/graphics/buttons.png',1557908663,0),(458,'module','photos','themes/default/modules/photos/plugins/magicslideshow/magicslideshow.js',1557908663,0),(457,'module','photos','themes/default/modules/photos/plugins/magicslideshow/magicslideshow.css',1557908663,0),(456,'module','photos','themes/default/modules/photos/plugins/magicslideshow/index.html',1557908663,0),(455,'module','photos','themes/default/modules/photos/plugins/lazy/jquery.lazyload.min.js',1557908663,0),(454,'module','photos','themes/default/modules/photos/plugins/lazy/index.html',1557908663,0),(453,'module','photos','themes/default/modules/photos/plugins/jcarousel/jquery.jcarousel.min.js',1557908663,0),(452,'module','photos','themes/default/modules/photos/plugins/jcarousel/index.html',1557908663,0),(451,'module','photos','themes/default/modules/photos/plugins/index.html',1557908663,0),(450,'module','photos','themes/default/modules/photos/plugins/bxslider/jquery.fitvids.js',1557908663,0),(449,'module','photos','themes/default/modules/photos/plugins/bxslider/jquery.easing.1.3.js',1557908663,0),(448,'module','photos','themes/default/modules/photos/plugins/bxslider/jquery.bxslider.min.js',1557908663,0),(447,'module','photos','themes/default/modules/photos/plugins/bxslider/jquery.bxslider.js',1557908663,0),(446,'module','photos','themes/default/modules/photos/plugins/bxslider/jquery.bxslider.css',1557908663,0),(445,'module','photos','themes/default/modules/photos/plugins/bxslider/index.html',1557908663,0),(444,'module','photos','themes/default/modules/photos/plugins/bxslider/images/index.html',1557908663,0),(443,'module','photos','themes/default/modules/photos/plugins/bxslider/images/controls.png',1557908663,0),(442,'module','photos','themes/default/modules/photos/plugins/bxslider/images/bx_loader.gif',1557908663,0),(441,'module','photos','themes/default/modules/photos/plugins/blueimp/video-play.svg',1557908663,0),(440,'module','photos','themes/default/modules/photos/plugins/blueimp/video-play.png',1557908663,0),(439,'module','photos','themes/default/modules/photos/plugins/blueimp/play-pause.svg',1557908663,0),(438,'module','photos','themes/default/modules/photos/plugins/blueimp/play-pause.png',1557908663,0),(437,'module','photos','themes/default/modules/photos/plugins/blueimp/loading.gif',1557908663,0),(436,'module','photos','themes/default/modules/photos/plugins/blueimp/jquery.blueimp-gallery.min.js.map',1557908663,0),(435,'module','photos','themes/default/modules/photos/plugins/blueimp/jquery.blueimp-gallery.min.js',1557908663,0),(434,'module','photos','themes/default/modules/photos/plugins/blueimp/index.html',1557908663,0),(433,'module','photos','themes/default/modules/photos/plugins/blueimp/error.svg',1557908663,0),(432,'module','photos','themes/default/modules/photos/plugins/blueimp/error.png',1557908663,0),(431,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-helper.js',1557908663,0),(430,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery.min.js.map',1557908663,0),(429,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery.min.js',1557908663,0),(428,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery.min.css.map',1557908663,0),(427,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery.min.css',1557908663,0),(426,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery-youtube.js',1557908663,0),(425,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery-vimeo.js',1557908663,0),(424,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery-video.js',1557908663,0),(423,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery-video.css',1557908663,0),(422,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery-indicator.js',1557908663,0),(421,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery-indicator.css',1557908663,0),(420,'module','photos','themes/default/modules/photos/plugins/blueimp/blueimp-gallery-fullscreen.js',1557908663,0),(419,'module','photos','themes/default/modules/photos/no_permission.tpl',1557908663,0),(418,'module','photos','themes/default/modules/photos/module.block_detail.tpl',1557908663,0),(417,'module','photos','themes/default/modules/photos/index.html',1557908663,0),(416,'module','photos','themes/default/modules/photos/home_view_grid.tpl',1557908663,0),(415,'module','photos','themes/default/modules/photos/detail_album.tpl',1557908663,0),(414,'module','photos','themes/default/modules/photos/detail.tpl',1557908663,0),(413,'module','photos','themes/default/modules/photos/block_photos_new_jcarousel.tpl',1557908663,0),(412,'module','photos','themes/default/modules/photos/block_photos_new.tpl',1557908663,0),(411,'module','photos','themes/default/modules/photos/block_logo_slider.tpl',1557908663,0),(410,'module','photos','themes/default/modules/photos/block_category_tab_new.tpl',1557908663,0),(409,'module','photos','themes/default/modules/photos/block_category_album.tpl',1557908663,0),(408,'module','photos','themes/default/modules/photos/block_album_tab_new.tpl',1557908663,0),(407,'module','photos','themes/default/modules/photos/block_album_new.tpl',1557908663,0),(406,'module','photos','modules/photos/version.php',1557908663,0),(405,'module','photos','modules/photos/theme.php',1557908663,0),(404,'module','photos','modules/photos/siteinfo.php',1557908663,0),(403,'module','photos','modules/photos/search.php',1557908663,0),(402,'module','photos','modules/photos/rssdata.php',1557908663,0),(401,'module','photos','modules/photos/mobile/index.html',1557908663,0),(400,'module','photos','modules/photos/menu.php',1557908663,0),(399,'module','photos','modules/photos/language/vi.php',1557908663,0),(398,'module','photos','modules/photos/language/index.html',1557908663,0),(397,'module','photos','modules/photos/language/en.php',1557908663,0),(396,'module','photos','modules/photos/language/block.global.block_logo_slider_vi.php',1557908663,0),(395,'module','photos','modules/photos/language/block.global.block_category_album_vi.php',1557908663,0),(394,'module','photos','modules/photos/language/block.global.block_album_new_vi.php',1557908663,0),(392,'module','photos','modules/photos/language/admin_en.php',1557908663,0),(393,'module','photos','modules/photos/language/admin_vi.php',1557908663,0),(391,'module','photos','modules/photos/index.html',1557908663,0),(389,'module','photos','modules/photos/functions.php',1557908663,0),(390,'module','photos','modules/photos/global.functions.php',1557908663,0),(388,'module','photos','modules/photos/funcs/viewcat.php',1557908663,0),(386,'module','photos','modules/photos/funcs/sitemap.php',1557908663,0),(387,'module','photos','modules/photos/funcs/upload.php',1557908663,0),(385,'module','photos','modules/photos/funcs/sitemap-image.php',1557908663,0),(384,'module','photos','modules/photos/funcs/search.php',1557908663,0),(382,'module','photos','modules/photos/funcs/rating.php',1557908663,0),(383,'module','photos','modules/photos/funcs/rss.php',1557908663,0),(381,'module','photos','modules/photos/funcs/process.php',1557908663,0),(379,'module','photos','modules/photos/funcs/main.php',1557908663,0),(380,'module','photos','modules/photos/funcs/pagemap.php',1557908663,0),(378,'module','photos','modules/photos/funcs/index.html',1557908663,0),(377,'module','photos','modules/photos/funcs/detail_viewer.php',1557908663,0),(375,'module','photos','modules/photos/funcs/detail.php',1557908663,0),(376,'module','photos','modules/photos/funcs/detail_album.php',1557908663,0),(374,'module','photos','modules/photos/comment.php',1557908663,0),(373,'module','photos','modules/photos/blocks/module.block_detail.php',1557908663,0),(371,'module','photos','modules/photos/blocks/index.html',1557908663,0),(372,'module','photos','modules/photos/blocks/module.block_detail.ini',1557908663,0),(370,'module','photos','modules/photos/blocks/global.block_photos_new.php',1557908663,0),(369,'module','photos','modules/photos/blocks/global.block_photos_new.ini',1557908663,0),(368,'module','photos','modules/photos/blocks/global.block_logo_slider.php',1557908663,0),(367,'module','photos','modules/photos/blocks/global.block_logo_slider.ini',1557908663,0),(366,'module','photos','modules/photos/blocks/global.block_category_tab_new.php',1557908663,0),(365,'module','photos','modules/photos/blocks/global.block_category_tab_new.ini',1557908663,0),(364,'module','photos','modules/photos/blocks/global.block_category_album.php',1557908663,0),(363,'module','photos','modules/photos/blocks/global.block_category_album.ini',1557908663,0),(362,'module','photos','modules/photos/blocks/global.block_album_tab_new.php',1557908663,0),(361,'module','photos','modules/photos/blocks/global.block_album_tab_new.ini',1557908663,0),(360,'module','photos','modules/photos/blocks/global.block_album_new.php',1557908663,0),(359,'module','photos','modules/photos/blocks/global.block_album_new.ini',1557908663,0),(358,'module','photos','modules/photos/admin.menu.php',1557908663,0),(350,'module','photos','modules/photos/action_mysql.php',1557908663,0),(351,'module','photos','modules/photos/admin/alias.php',1557908663,0),(352,'module','photos','modules/photos/admin/category.php',1557908663,0),(353,'module','photos','modules/photos/admin/index.html',1557908663,0),(354,'module','photos','modules/photos/admin/main.php',1557908663,0),(355,'module','photos','modules/photos/admin/setting.php',1557908663,0),(356,'module','photos','modules/photos/admin/view.php',1557908663,0),(357,'module','photos','modules/photos/admin.functions.php',1557908663,0),(618,'module','photos','themes/mobile_default/images/photos/ribbon-small.png',1557908663,0),(617,'module','photos','themes/mobile_default/images/photos/index.html',1557908663,0),(616,'module','photos','themes/mobile_default/images/photos/golden_small.png',1557908663,0),(615,'module','photos','themes/mobile_default/images/photos/golden.png',1557908663,0),(614,'module','photos','themes/mobile_default/images/photos/curved-small.png',1557908663,0),(613,'module','photos','themes/mobile_default/images/photos/7-small.png',1557908663,0),(612,'module','photos','themes/mobile_default/images/photos/6-small.png',1557908663,0),(611,'module','photos','themes/mobile_default/images/photos/6-large.png',1557908663,0),(610,'module','photos','themes/mobile_default/images/photos/5-small.png',1557908663,0),(609,'module','photos','themes/mobile_default/images/photos/5-large.png',1557908663,0),(608,'module','photos','themes/mobile_default/css/photos.css',1557908663,0),(607,'module','photos','themes/admin_default/modules/photos/setting.tpl',1557908663,0),(606,'module','photos','themes/admin_default/modules/photos/plupload/plupload.min.js',1557908663,0),(605,'module','photos','themes/admin_default/modules/photos/plupload/plupload.full.min.js',1557908663,0),(604,'module','photos','themes/admin_default/modules/photos/plupload/plupload.dev.js',1557908663,0),(603,'module','photos','themes/admin_default/modules/photos/plupload/Moxie.xap',1557908663,0),(602,'module','photos','themes/admin_default/modules/photos/plupload/Moxie.swf',1557908663,0),(601,'module','photos','themes/admin_default/modules/photos/plupload/moxie.min.js',1557908663,0),(600,'module','photos','themes/admin_default/modules/photos/plupload/moxie.js',1557908663,0),(599,'module','photos','themes/admin_default/modules/photos/plupload/jquery.ui.plupload/jquery.ui.plupload.min.js',1557908663,0),(598,'module','photos','themes/admin_default/modules/photos/plupload/jquery.ui.plupload/jquery.ui.plupload.js',1557908663,0),(597,'module','photos','themes/admin_default/modules/photos/plupload/jquery.ui.plupload/index.html',1557908663,0),(596,'module','photos','themes/admin_default/modules/photos/plupload/jquery.ui.plupload/img/plupload.png',1557908663,0),(595,'module','photos','themes/admin_default/modules/photos/plupload/jquery.ui.plupload/img/loading.gif',1557908663,0),(594,'module','photos','themes/admin_default/modules/photos/plupload/jquery.ui.plupload/img/index.html',1557908663,0),(593,'module','photos','themes/admin_default/modules/photos/plupload/jquery.ui.plupload/css/jquery.ui.plupload.css',1557908663,0),(592,'module','photos','themes/admin_default/modules/photos/plupload/jquery.ui.plupload/css/index.html',1557908663,0),(591,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/jquery.plupload.queue.min.js',1557908663,0),(590,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/jquery.plupload.queue.js',1557908663,0),(589,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/index.html',1557908663,0),(588,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/transp50.png',1557908663,0),(587,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/throbber.gif',1557908663,0),(586,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/index.html',1557908663,0),(585,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/error.gif',1557908663,0),(584,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/done.gif',1557908663,0),(583,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/delete.gif',1557908663,0),(582,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/buttons.png',1557908663,0),(581,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/buttons-disabled.png',1557908663,0),(580,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/img/backgrounds.gif',1557908663,0),(579,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/css/jquery.plupload.queue.css',1557908663,0),(578,'module','photos','themes/admin_default/modules/photos/plupload/jquery.plupload.queue/css/index.html',1557908663,0),(577,'module','photos','themes/admin_default/modules/photos/plupload/index.html',1557908663,0),(576,'module','photos','themes/admin_default/modules/photos/plupload/i18n/zh_TW.js',1557908663,0),(575,'module','photos','themes/admin_default/modules/photos/plupload/i18n/zh_CN.js',1557908663,0),(574,'module','photos','themes/admin_default/modules/photos/plupload/i18n/vi.js',1557908663,0),(573,'module','photos','themes/admin_default/modules/photos/plupload/i18n/uk_UA.js',1557908663,0),(572,'module','photos','themes/admin_default/modules/photos/plupload/i18n/tr.js',1557908663,0),(571,'module','photos','themes/admin_default/modules/photos/plupload/i18n/th_TH.js',1557908663,0),(570,'module','photos','themes/admin_default/modules/photos/plupload/i18n/sv.js',1557908663,0),(569,'module','photos','themes/admin_default/modules/photos/plupload/i18n/sr.js',1557908663,0),(568,'module','photos','themes/admin_default/modules/photos/plupload/i18n/sq.js',1557908663,0),(567,'module','photos','themes/admin_default/modules/photos/plupload/i18n/sl.js',1557908663,0),(566,'module','photos','themes/admin_default/modules/photos/plupload/i18n/sk.js',1557908663,0),(565,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ru.js',1557908663,0),(564,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ro.js',1557908663,0),(563,'module','photos','themes/admin_default/modules/photos/plupload/i18n/pt_BR.js',1557908663,0),(562,'module','photos','themes/admin_default/modules/photos/plupload/i18n/pt.js',1557908663,0),(561,'module','photos','themes/admin_default/modules/photos/plupload/i18n/pl.js',1557908663,0),(560,'module','photos','themes/admin_default/modules/photos/plupload/i18n/nl.js',1557908663,0),(559,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ms.js',1557908663,0),(558,'module','photos','themes/admin_default/modules/photos/plupload/i18n/lv.js',1557908663,0),(557,'module','photos','themes/admin_default/modules/photos/plupload/i18n/lt.js',1557908663,0),(556,'module','photos','themes/admin_default/modules/photos/plupload/i18n/ku_IQ.js',1557908663,0),(619,'module','photos','themes/mobile_default/images/photos/ribbon.png',1557908663,0),(620,'module','photos','themes/mobile_default/js/photos.js',1557908663,0),(621,'module','video-clip','modules/video-clip/action_mysql.php',1583920727,0),(622,'module','video-clip','modules/video-clip/admin/.htaccess',1583920727,0),(623,'module','video-clip','modules/video-clip/admin/cbroken.php',1583920727,0),(624,'module','video-clip','modules/video-clip/admin/config.php',1583920727,0),(625,'module','video-clip','modules/video-clip/admin/index.html',1583920727,0),(626,'module','video-clip','modules/video-clip/admin/main.php',1583920727,0),(627,'module','video-clip','modules/video-clip/admin/topic.php',1583920727,0),(628,'module','video-clip','modules/video-clip/admin/vbroken.php',1583920727,0),(629,'module','video-clip','modules/video-clip/admin.functions.php',1583920727,0),(630,'module','video-clip','modules/video-clip/admin.menu.php',1583920727,0),(631,'module','video-clip','modules/video-clip/blocks/.htaccess',1583920727,0),(632,'module','video-clip','modules/video-clip/blocks/global.box_video.ini',1583920727,0),(633,'module','video-clip','modules/video-clip/blocks/global.box_video.php',1583920727,0),(634,'module','video-clip','modules/video-clip/blocks/global.new_image_video.php',1583920727,0),(635,'module','video-clip','modules/video-clip/blocks/global.new_videos.ini',1583920727,0),(636,'module','video-clip','modules/video-clip/blocks/global.new_videos.php',1583920727,0),(637,'module','video-clip','modules/video-clip/blocks/global.top_videos.ini',1583920727,0),(638,'module','video-clip','modules/video-clip/blocks/global.top_videos.php',1583920727,0),(639,'module','video-clip','modules/video-clip/blocks/index.html',1583920727,0),(640,'module','video-clip','modules/video-clip/blocks/module.detail.php',1583920727,0),(641,'module','video-clip','modules/video-clip/funcs/.htaccess',1583920727,0),(642,'module','video-clip','modules/video-clip/funcs/index.html',1583920727,0),(643,'module','video-clip','modules/video-clip/funcs/main.php',1583920727,0),(644,'module','video-clip','modules/video-clip/funcs/rss.php',1583920727,0),(645,'module','video-clip','modules/video-clip/funcs/sitemap.php',1583920727,0),(646,'module','video-clip','modules/video-clip/functions.php',1583920727,0),(647,'module','video-clip','modules/video-clip/index.html',1583920727,0),(648,'module','video-clip','modules/video-clip/language/.htaccess',1583920727,0),(649,'module','video-clip','modules/video-clip/language/admin_en.php',1583920727,0),(650,'module','video-clip','modules/video-clip/language/admin_vi.php',1583920727,0),(651,'module','video-clip','modules/video-clip/language/en.php',1583920727,0),(652,'module','video-clip','modules/video-clip/language/index.html',1583920727,0),(653,'module','video-clip','modules/video-clip/language/vi.php',1583920727,0),(654,'module','video-clip','modules/video-clip/menu.php',1583920727,0),(655,'module','video-clip','modules/video-clip/mobile/.htaccess',1583920727,0),(656,'module','video-clip','modules/video-clip/mobile/index.html',1583920727,0),(657,'module','video-clip','modules/video-clip/mobile/main.php',1583920727,0),(658,'module','video-clip','modules/video-clip/rssdata.php',1583920727,0),(659,'module','video-clip','modules/video-clip/search.php',1583920727,0),(660,'module','video-clip','modules/video-clip/version.php',1583920727,0),(661,'module','video-clip','themes/admin_default/css/video-clip.css',1583920727,0),(662,'module','video-clip','themes/admin_default/images/video-clip/disabled.png',1583920727,0),(663,'module','video-clip','themes/admin_default/images/video-clip/enabled.png',1583920727,0),(664,'module','video-clip','themes/admin_default/images/video-clip/index.html',1583920727,0),(665,'module','video-clip','themes/admin_default/js/video-clip.js',1583920727,0),(666,'module','video-clip','themes/admin_default/modules/video-clip/.htaccess',1583920727,0),(667,'module','video-clip','themes/admin_default/modules/video-clip/cbroken.tpl',1583920727,0),(668,'module','video-clip','themes/admin_default/modules/video-clip/config.tpl',1583920727,0),(669,'module','video-clip','themes/admin_default/modules/video-clip/index.html',1583920727,0),(670,'module','video-clip','themes/admin_default/modules/video-clip/main.tpl',1583920727,0),(671,'module','video-clip','themes/admin_default/modules/video-clip/topic_add.tpl',1583920727,0),(672,'module','video-clip','themes/admin_default/modules/video-clip/topic_list.tpl',1583920727,0),(673,'module','video-clip','themes/admin_default/modules/video-clip/vbroken.tpl',1583920727,0),(674,'module','video-clip','themes/default/css/video-clip.css',1583920727,0),(675,'module','video-clip','themes/default/images/video-clip/current.png',1583920727,0),(676,'module','video-clip','themes/default/images/video-clip/icons.png',1583920727,0),(677,'module','video-clip','themes/default/images/video-clip/index.html',1583920727,0),(678,'module','video-clip','themes/default/images/video-clip/jquery/index.html',1583920727,0),(679,'module','video-clip','themes/default/images/video-clip/jquery/jquery.autoresize.js',1583920727,0),(680,'module','video-clip','themes/default/images/video-clip/jwplayer/index.html',1583920727,0),(681,'module','video-clip','themes/default/images/video-clip/jwplayer/jw-icons.ttf',1583920727,0),(682,'module','video-clip','themes/default/images/video-clip/jwplayer/jw-icons.woff',1583920727,0),(683,'module','video-clip','themes/default/images/video-clip/jwplayer/jwplayer.flash.swf',1583920727,0),(684,'module','video-clip','themes/default/images/video-clip/jwplayer/jwplayer.js',1583920727,0),(685,'module','video-clip','themes/default/images/video-clip/jwplayer/jwplayer.loader.swf',1583920727,0),(686,'module','video-clip','themes/default/images/video-clip/jwplayer/polyfills.base64.js',1583920727,0),(687,'module','video-clip','themes/default/images/video-clip/jwplayer/polyfills.intersection-observer.js',1583920727,0),(688,'module','video-clip','themes/default/images/video-clip/jwplayer/polyfills.promise.js',1583920727,0),(689,'module','video-clip','themes/default/images/video-clip/jwplayer/polyfills.vttrenderer.js',1583920727,0),(690,'module','video-clip','themes/default/images/video-clip/jwplayer/provider.cast.js',1583920727,0),(691,'module','video-clip','themes/default/images/video-clip/jwplayer/provider.flash.js',1583920727,0),(692,'module','video-clip','themes/default/images/video-clip/jwplayer/provider.hlsjs.js',1583920727,0),(693,'module','video-clip','themes/default/images/video-clip/jwplayer/provider.html5.js',1583920727,0),(694,'module','video-clip','themes/default/images/video-clip/jwplayer/provider.shaka.js',1583920727,0),(695,'module','video-clip','themes/default/images/video-clip/jwplayer/provider.youtube.js',1583920727,0),(696,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/beelden.css',1583920727,0),(697,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/bekle.css',1583920727,0),(698,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/five.css',1583920727,0),(699,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/glow.css',1583920727,0),(700,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/index.html',1583920727,0),(701,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/roundster.css',1583920727,0),(702,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/seven.css',1583920727,0),(703,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/six.css',1583920727,0),(704,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/stormtrooper.css',1583920727,0),(705,'module','video-clip','themes/default/images/video-clip/jwplayer/skins/vapor.css',1583920727,0),(706,'module','video-clip','themes/default/images/video-clip/jwplayer/vttparser.js',1583920727,0),(707,'module','video-clip','themes/default/images/video-clip/like.png',1583920727,0),(708,'module','video-clip','themes/default/images/video-clip/play-small.png',1583920727,0),(709,'module','video-clip','themes/default/images/video-clip/play.png',1583920727,0),(710,'module','video-clip','themes/default/images/video-clip/video.png',1583920727,0),(711,'module','video-clip','themes/default/images/video-clip/wait.gif',1583920727,0),(712,'module','video-clip','themes/default/images/video-clip/Zicons.png',1583920727,0),(713,'module','video-clip','themes/default/js/video-clip.js',1583920727,0),(714,'module','video-clip','themes/default/modules/video-clip/.htaccess',1583920727,0),(715,'module','video-clip','themes/default/modules/video-clip/block.box_video.tpl',1583920727,0),(716,'module','video-clip','themes/default/modules/video-clip/block_new_image_video.tpl',1583920727,0),(717,'module','video-clip','themes/default/modules/video-clip/block_new_video.tpl',1583920727,0),(718,'module','video-clip','themes/default/modules/video-clip/block_top_video.tpl',1583920727,0),(719,'module','video-clip','themes/default/modules/video-clip/detail.tpl',1583920727,0),(720,'module','video-clip','themes/default/modules/video-clip/index.html',1583920727,0),(721,'module','video-clip','themes/default/modules/video-clip/main.tpl',1583920727,0),(722,'module','video-clip','themes/mobile_default/css/video-clip.css',1583920727,0),(723,'module','video-clip','themes/mobile_default/images/video-clip/index.html',1583920727,0),(724,'module','video-clip','themes/mobile_default/images/video-clip/play.png',1583920727,0),(725,'module','video-clip','themes/mobile_default/images/video-clip/video.png',1583920727,0),(726,'module','video-clip','themes/mobile_default/modules/video-clip/.htaccess',1583920727,0),(727,'module','video-clip','themes/mobile_default/modules/video-clip/index.html',1583920727,0),(728,'module','video-clip','themes/mobile_default/modules/video-clip/main.tpl',1583920727,0),(729,'module','videoclips','modules/videoclips/action_mysql.php',1583920804,0),(730,'module','videoclips','modules/videoclips/admin/config.php',1583920804,0),(731,'module','videoclips','modules/videoclips/admin/index.html',1583920804,0),(732,'module','videoclips','modules/videoclips/admin/main.php',1583920804,0),(733,'module','videoclips','modules/videoclips/admin/topic.php',1583920804,0),(734,'module','videoclips','modules/videoclips/admin/vbroken.php',1583920804,0),(735,'module','videoclips','modules/videoclips/admin.functions.php',1583920804,0),(736,'module','videoclips','modules/videoclips/admin.menu.php',1583920804,0),(737,'module','videoclips','modules/videoclips/blocks/global.list_video.ini',1583920804,0),(738,'module','videoclips','modules/videoclips/blocks/global.list_video.php',1583920804,0),(739,'module','videoclips','modules/videoclips/blocks/global.slide_list_video.ini',1583920804,0),(740,'module','videoclips','modules/videoclips/blocks/global.slide_list_video.php',1583920804,0),(741,'module','videoclips','modules/videoclips/blocks/global.video.ini',1583920804,0),(742,'module','videoclips','modules/videoclips/blocks/global.video.php',1583920804,0),(743,'module','videoclips','modules/videoclips/blocks/index.html',1583920804,0),(744,'module','videoclips','modules/videoclips/funcs/detail.php',1583920804,0),(745,'module','videoclips','modules/videoclips/funcs/index.html',1583920804,0),(746,'module','videoclips','modules/videoclips/funcs/main.php',1583920804,0),(747,'module','videoclips','modules/videoclips/funcs/rss.php',1583920804,0),(748,'module','videoclips','modules/videoclips/funcs/sitemap.php',1583920804,0),(749,'module','videoclips','modules/videoclips/funcs/topic.php',1583920804,0),(750,'module','videoclips','modules/videoclips/functions.php',1583920804,0),(751,'module','videoclips','modules/videoclips/index.html',1583920804,0),(752,'module','videoclips','modules/videoclips/language/admin_en.php',1583920804,0),(753,'module','videoclips','modules/videoclips/language/admin_ru.php',1583920804,0),(754,'module','videoclips','modules/videoclips/language/admin_vi.php',1583920804,0),(755,'module','videoclips','modules/videoclips/language/en.php',1583920804,0),(756,'module','videoclips','modules/videoclips/language/index.html',1583920804,0),(757,'module','videoclips','modules/videoclips/language/ru.php',1583920804,0),(758,'module','videoclips','modules/videoclips/language/vi.php',1583920804,0),(759,'module','videoclips','modules/videoclips/search.php',1583920804,0),(760,'module','videoclips','modules/videoclips/sitemap.php',1583920804,0),(761,'module','videoclips','modules/videoclips/version.php',1583920804,0),(762,'module','videoclips','themes/admin_default/css/videoclips.css',1583920804,0),(763,'module','videoclips','themes/admin_default/images/videoclips/disabled.png',1583920804,0),(764,'module','videoclips','themes/admin_default/images/videoclips/enabled.png',1583920804,0),(765,'module','videoclips','themes/admin_default/images/videoclips/index.html',1583920804,0),(766,'module','videoclips','themes/admin_default/js/videoclips.js',1583920804,0),(767,'module','videoclips','themes/admin_default/modules/videoclips/cbroken.tpl',1583920804,0),(768,'module','videoclips','themes/admin_default/modules/videoclips/config.tpl',1583920804,0),(769,'module','videoclips','themes/admin_default/modules/videoclips/index.html',1583920804,0),(770,'module','videoclips','themes/admin_default/modules/videoclips/main.tpl',1583920804,0),(771,'module','videoclips','themes/admin_default/modules/videoclips/topic_add.tpl',1583920804,0),(772,'module','videoclips','themes/admin_default/modules/videoclips/topic_list.tpl',1583920804,0),(773,'module','videoclips','themes/admin_default/modules/videoclips/vbroken.tpl',1583920804,0),(774,'module','videoclips','themes/default/css/videoclips.css',1583920804,0),(775,'module','videoclips','themes/default/images/videoclips/flexslider/flexslider.css',1583920804,0),(776,'module','videoclips','themes/default/images/videoclips/flexslider/fonts/flexslider-icon.eot',1583920804,0),(777,'module','videoclips','themes/default/images/videoclips/flexslider/fonts/flexslider-icon.svg',1583920804,0),(778,'module','videoclips','themes/default/images/videoclips/flexslider/fonts/flexslider-icon.ttf',1583920804,0),(779,'module','videoclips','themes/default/images/videoclips/flexslider/fonts/flexslider-icon.woff',1583920804,0),(780,'module','videoclips','themes/default/images/videoclips/flexslider/fonts/index.html',1583920804,0),(781,'module','videoclips','themes/default/images/videoclips/flexslider/index.html',1583920804,0),(782,'module','videoclips','themes/default/images/videoclips/flexslider/jquery.flexslider.js',1583920804,0),(783,'module','videoclips','themes/default/images/videoclips/icons.png',1583920804,0),(784,'module','videoclips','themes/default/images/videoclips/index.html',1583920804,0),(785,'module','videoclips','themes/default/images/videoclips/jwplayer/index.html',1583920804,0),(786,'module','videoclips','themes/default/images/videoclips/jwplayer/jw-icons.ttf',1583920804,0),(787,'module','videoclips','themes/default/images/videoclips/jwplayer/jw-icons.woff',1583920804,0),(788,'module','videoclips','themes/default/images/videoclips/jwplayer/jwplayer.controls.js',1583920804,0),(789,'module','videoclips','themes/default/images/videoclips/jwplayer/jwplayer.flash.swf',1583920804,0),(790,'module','videoclips','themes/default/images/videoclips/jwplayer/jwplayer.js',1583920804,0),(791,'module','videoclips','themes/default/images/videoclips/jwplayer/jwplayer.loader.swf',1583920804,0),(792,'module','videoclips','themes/default/images/videoclips/jwplayer/polyfills.base64.js',1583920804,0),(793,'module','videoclips','themes/default/images/videoclips/jwplayer/polyfills.intersection-observer.js',1583920804,0),(794,'module','videoclips','themes/default/images/videoclips/jwplayer/polyfills.promise.js',1583920804,0),(795,'module','videoclips','themes/default/images/videoclips/jwplayer/polyfills.vttrenderer.js',1583920804,0),(796,'module','videoclips','themes/default/images/videoclips/jwplayer/provider.airplay.js',1583920804,0),(797,'module','videoclips','themes/default/images/videoclips/jwplayer/provider.cast.js',1583920804,0),(798,'module','videoclips','themes/default/images/videoclips/jwplayer/provider.flash.js',1583920804,0),(799,'module','videoclips','themes/default/images/videoclips/jwplayer/provider.hlsjs.js',1583920804,0),(800,'module','videoclips','themes/default/images/videoclips/jwplayer/provider.html5.js',1583920804,0),(801,'module','videoclips','themes/default/images/videoclips/jwplayer/provider.shaka.js',1583920804,0),(802,'module','videoclips','themes/default/images/videoclips/jwplayer/provider.youtube.js',1583920804,0),(803,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/beelden.css',1583920804,0),(804,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/bekle.css',1583920804,0),(805,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/five.css',1583920804,0),(806,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/glow.css',1583920804,0),(807,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/index.html',1583920804,0),(808,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/roundster.css',1583920804,0),(809,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/seven.css',1583920804,0),(810,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/six.css',1583920804,0),(811,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/stormtrooper.css',1583920804,0),(812,'module','videoclips','themes/default/images/videoclips/jwplayer/skins/vapor.css',1583920804,0),(813,'module','videoclips','themes/default/images/videoclips/jwplayer/vttparser.js',1583920804,0),(814,'module','videoclips','themes/default/images/videoclips/like.png',1583920804,0),(815,'module','videoclips','themes/default/images/videoclips/play.png',1583920804,0),(816,'module','videoclips','themes/default/images/videoclips/video.png',1583920804,0),(817,'module','videoclips','themes/default/images/videoclips/wait.gif',1583920804,0),(818,'module','videoclips','themes/default/js/videoclips_jquery.autoresize.js',1583920804,0),(819,'module','videoclips','themes/default/js/videoclips_jquery.matchHeight-min.js',1583920804,0),(820,'module','videoclips','themes/default/modules/videoclips/block_list_video.tpl',1583920804,0),(821,'module','videoclips','themes/default/modules/videoclips/block_slide_list_video.tpl',1583920804,0),(822,'module','videoclips','themes/default/modules/videoclips/block_video.tpl',1583920804,0),(823,'module','videoclips','themes/default/modules/videoclips/detail.tpl',1583920804,0),(824,'module','videoclips','themes/default/modules/videoclips/index.html',1583920804,0),(825,'module','videoclips','themes/default/modules/videoclips/main.tpl',1583920804,0),(826,'module','videoclips','themes/default/modules/videoclips/topic.tpl',1583920804,0),(827,'module','videos','modules/videos/action_mysql.php',1583920967,0),(828,'module','videos','modules/videos/admin/admins.php',1583920967,0),(829,'module','videos','modules/videos/admin/alias.php',1583920967,0),(830,'module','videos','modules/videos/admin/block.php',1583920967,0),(831,'module','videos','modules/videos/admin/cat.php',1583920967,0),(832,'module','videos','modules/videos/admin/change_block.php',1583920967,0),(833,'module','videos','modules/videos/admin/change_cat.php',1583920967,0),(834,'module','videos','modules/videos/admin/change_playlist.php',1583920967,0),(835,'module','videos','modules/videos/admin/change_playlist_cat.php',1583920967,0),(836,'module','videos','modules/videos/admin/change_source.php',1583920967,0),(837,'module','videos','modules/videos/admin/chang_block_cat.php',1583920967,0),(838,'module','videos','modules/videos/admin/content.php',1583920967,0),(839,'module','videos','modules/videos/admin/declined.php',1583920967,0),(840,'module','videos','modules/videos/admin/del_block_cat.php',1583920967,0),(841,'module','videos','modules/videos/admin/del_cat.php',1583920967,0),(842,'module','videos','modules/videos/admin/del_content.php',1583920967,0),(843,'module','videos','modules/videos/admin/del_playlist.php',1583920967,0),(844,'module','videos','modules/videos/admin/del_playlist_cat.php',1583920967,0),(845,'module','videos','modules/videos/admin/del_report.php',1583920967,0),(846,'module','videos','modules/videos/admin/del_source.php',1583920967,0),(847,'module','videos','modules/videos/admin/get.php',1583920967,0),(848,'module','videos','modules/videos/admin/get_list.php',1583920967,0),(849,'module','videos','modules/videos/admin/groups.php',1583920967,0),(850,'module','videos','modules/videos/admin/index.html',1583920967,0),(851,'module','videos','modules/videos/admin/list_block.php',1583920967,0),(852,'module','videos','modules/videos/admin/list_block_cat.php',1583920967,0),(853,'module','videos','modules/videos/admin/list_cat.php',1583920967,0),(854,'module','videos','modules/videos/admin/list_playlist.php',1583920967,0),(855,'module','videos','modules/videos/admin/list_playlist_cat.php',1583920967,0),(856,'module','videos','modules/videos/admin/list_source.php',1583920967,0),(857,'module','videos','modules/videos/admin/main.php',1583920967,0),(858,'module','videos','modules/videos/admin/move.php',1583920967,0),(859,'module','videos','modules/videos/admin/playlist.php',1583920967,0),(860,'module','videos','modules/videos/admin/playlists.php',1583920967,0),(861,'module','videos','modules/videos/admin/publtime.php',1583920967,0),(862,'module','videos','modules/videos/admin/re-published.php',1583920967,0),(863,'module','videos','modules/videos/admin/report.php',1583920967,0),(864,'module','videos','modules/videos/admin/rpc.php',1583920967,0),(865,'module','videos','modules/videos/admin/search.php',1583920967,0),(866,'module','videos','modules/videos/admin/setting.php',1583920967,0),(867,'module','videos','modules/videos/admin/sourceajax.php',1583920967,0),(868,'module','videos','modules/videos/admin/sources.php',1583920967,0),(869,'module','videos','modules/videos/admin/stop.php',1583920967,0),(870,'module','videos','modules/videos/admin/tags.php',1583920967,0),(871,'module','videos','modules/videos/admin/tagsajax.php',1583920967,0),(872,'module','videos','modules/videos/admin/vid_info.php',1583920967,0),(873,'module','videos','modules/videos/admin/view.php',1583920967,0),(874,'module','videos','modules/videos/admin/waiting.php',1583920967,0),(875,'module','videos','modules/videos/admin.functions.php',1583920967,0),(876,'module','videos','modules/videos/admin.menu.php',1583920967,0),(877,'module','videos','modules/videos/blocks/global.block_category.ini',1583920967,0),(878,'module','videos','modules/videos/blocks/global.block_category.php',1583920967,0),(879,'module','videos','modules/videos/blocks/global.block_cat_quickplay.ini',1583920967,0),(880,'module','videos','modules/videos/blocks/global.block_cat_quickplay.php',1583920967,0),(881,'module','videos','modules/videos/blocks/global.block_groups.ini',1583920967,0),(882,'module','videos','modules/videos/blocks/global.block_groups.php',1583920967,0),(883,'module','videos','modules/videos/blocks/global.block_groups_multi_tabs.ini',1583920967,0),(884,'module','videos','modules/videos/blocks/global.block_groups_multi_tabs.php',1583920967,0),(885,'module','videos','modules/videos/blocks/global.block_groups_tabs.ini',1583920967,0),(886,'module','videos','modules/videos/blocks/global.block_groups_tabs.php',1583920967,0),(887,'module','videos','modules/videos/blocks/global.block_news_cat.ini',1583920967,0),(888,'module','videos','modules/videos/blocks/global.block_news_cat.php',1583920967,0),(889,'module','videos','modules/videos/blocks/global.block_new_comment.ini',1583920967,0),(890,'module','videos','modules/videos/blocks/global.block_new_comment.php',1583920967,0),(891,'module','videos','modules/videos/blocks/global.block_tophits.ini',1583920967,0),(892,'module','videos','modules/videos/blocks/global.block_tophits.php',1583920967,0),(893,'module','videos','modules/videos/blocks/index.html',1583920967,0),(894,'module','videos','modules/videos/comment.php',1583920967,0),(895,'module','videos','modules/videos/funcs/detail.php',1583920967,0),(896,'module','videos','modules/videos/funcs/groups.php',1583920967,0),(897,'module','videos','modules/videos/funcs/index.html',1583920967,0),(898,'module','videos','modules/videos/funcs/list_playlist_cat.php',1583920967,0),(899,'module','videos','modules/videos/funcs/main.php',1583920967,0),(900,'module','videos','modules/videos/funcs/player.php',1583920967,0),(901,'module','videos','modules/videos/funcs/playlists.php',1583920967,0),(902,'module','videos','modules/videos/funcs/rating.php',1583920967,0),(903,'module','videos','modules/videos/funcs/rss.php',1583920967,0),(904,'module','videos','modules/videos/funcs/savefile.php',1583920967,0),(905,'module','videos','modules/videos/funcs/search.php',1583920967,0),(906,'module','videos','modules/videos/funcs/sendmail.php',1583920967,0),(907,'module','videos','modules/videos/funcs/sitemap.php',1583920967,0),(908,'module','videos','modules/videos/funcs/tag.php',1583920967,0),(909,'module','videos','modules/videos/funcs/uploader.php',1583920967,0),(910,'module','videos','modules/videos/funcs/user-playlist.php',1583920967,0),(911,'module','videos','modules/videos/funcs/user-video.php',1583920967,0),(912,'module','videos','modules/videos/funcs/viewcat.php',1583920967,0),(913,'module','videos','modules/videos/funcs/v_funcs.php',1583920967,0),(914,'module','videos','modules/videos/functions.php',1583920967,0),(915,'module','videos','modules/videos/global.functions.php',1583920967,0),(916,'module','videos','modules/videos/index.html',1583920967,0),(917,'module','videos','modules/videos/language/admin_en.php',1583920967,0),(918,'module','videos','modules/videos/language/admin_vi.php',1583920967,0),(919,'module','videos','modules/videos/language/block.global.block_category_en.php',1583920967,0),(920,'module','videos','modules/videos/language/block.global.block_category_vi.php',1583920967,0),(921,'module','videos','modules/videos/language/block.global.block_groups_en.php',1583920967,0),(922,'module','videos','modules/videos/language/block.global.block_groups_vi.php',1583920967,0),(923,'module','videos','modules/videos/language/block.global.block_news_cat_en.php',1583920967,0),(924,'module','videos','modules/videos/language/block.global.block_news_cat_vi.php',1583920967,0),(925,'module','videos','modules/videos/language/block.global.block_tophits_en.php',1583920967,0),(926,'module','videos','modules/videos/language/block.global.block_tophits_vi.php',1583920967,0),(927,'module','videos','modules/videos/language/block.module.block_headline_en.php',1583920967,0),(928,'module','videos','modules/videos/language/block.module.block_headline_vi.php',1583920967,0),(929,'module','videos','modules/videos/language/block.module.block_newscenter_en.php',1583920967,0),(930,'module','videos','modules/videos/language/block.module.block_newscenter_vi.php',1583920967,0),(931,'module','videos','modules/videos/language/block.module.block_news_en.php',1583920967,0),(932,'module','videos','modules/videos/language/block.module.block_news_vi.php',1583920967,0),(933,'module','videos','modules/videos/language/en.php',1583920967,0),(934,'module','videos','modules/videos/language/index.html',1583920967,0),(935,'module','videos','modules/videos/language/vi.php',1583920967,0),(936,'module','videos','modules/videos/menu.php',1583920967,0),(937,'module','videos','modules/videos/mobile/index.html',1583920967,0),(938,'module','videos','modules/videos/rssdata.php',1583920967,0),(939,'module','videos','modules/videos/search.php',1583920967,0),(940,'module','videos','modules/videos/site.functions.php',1583920967,0),(941,'module','videos','modules/videos/siteinfo.php',1583920967,0),(942,'module','videos','modules/videos/theme.php',1583920967,0),(943,'module','videos','modules/videos/version.php',1583920967,0),(944,'module','videos','themes/default/modules/videos/block_category.tpl',1583920967,0),(945,'module','videos','themes/default/modules/videos/block_cat_quickplay.tpl',1583920967,0),(946,'module','videos','themes/default/modules/videos/block_groups.tpl',1583920967,0),(947,'module','videos','themes/default/modules/videos/block_groups_multi_tabs.tpl',1583920967,0),(948,'module','videos','themes/default/modules/videos/block_groups_tabs.tpl',1583920967,0),(949,'module','videos','themes/default/modules/videos/block_new_comment.tpl',1583920967,0),(950,'module','videos','themes/default/modules/videos/block_tophits.tpl',1583920967,0),(951,'module','videos','themes/default/modules/videos/block_videos_cat.tpl',1583920967,0),(952,'module','videos','themes/default/modules/videos/detail.tpl',1583920967,0),(953,'module','videos','themes/default/modules/videos/fav_report.tpl',1583920967,0),(954,'module','videos','themes/default/modules/videos/index.html',1583920967,0),(955,'module','videos','themes/default/modules/videos/jwplayer/jw-icons.ttf',1583920967,0),(956,'module','videos','themes/default/modules/videos/jwplayer/jw-icons.woff',1583920967,0),(957,'module','videos','themes/default/modules/videos/jwplayer/jwplayer.core.controls.js',1583920967,0),(958,'module','videos','themes/default/modules/videos/jwplayer/jwplayer.flash.swf',1583920967,0),(959,'module','videos','themes/default/modules/videos/jwplayer/jwplayer.html5.js',1583920967,0),(960,'module','videos','themes/default/modules/videos/jwplayer/jwplayer.js',1583920967,0),(961,'module','videos','themes/default/modules/videos/jwplayer/jwplayer.loader.swf',1583920967,0),(962,'module','videos','themes/default/modules/videos/jwplayer/jwplayer5.swf',1583920967,0),(963,'module','videos','themes/default/modules/videos/jwplayer/polyfills.base64.js',1583920967,0),(964,'module','videos','themes/default/modules/videos/jwplayer/polyfills.intersection-observer.js',1583920967,0),(965,'module','videos','themes/default/modules/videos/jwplayer/polyfills.promise.js',1583920967,0),(966,'module','videos','themes/default/modules/videos/jwplayer/polyfills.vttrenderer.js',1583920967,0),(967,'module','videos','themes/default/modules/videos/jwplayer/provider.airplay.js',1583920967,0),(968,'module','videos','themes/default/modules/videos/jwplayer/provider.cast.js',1583920967,0),(969,'module','videos','themes/default/modules/videos/jwplayer/provider.caterpillar.js',1583920967,0),(970,'module','videos','themes/default/modules/videos/jwplayer/provider.flash.js',1583920967,0),(971,'module','videos','themes/default/modules/videos/jwplayer/provider.hlsjs.js',1583920967,0),(972,'module','videos','themes/default/modules/videos/jwplayer/provider.html5.js',1583920967,0),(973,'module','videos','themes/default/modules/videos/jwplayer/provider.shaka.js',1583920967,0),(974,'module','videos','themes/default/modules/videos/jwplayer/provider.youtube.js',1583920967,0),(975,'module','videos','themes/default/modules/videos/jwplayer/related.js',1583920967,0),(976,'module','videos','themes/default/modules/videos/jwplayer/skins/beelden.css',1583920967,0),(977,'module','videos','themes/default/modules/videos/jwplayer/skins/bekle.css',1583920967,0),(978,'module','videos','themes/default/modules/videos/jwplayer/skins/five.css',1583920967,0),(979,'module','videos','themes/default/modules/videos/jwplayer/skins/glow.css',1583920967,0),(980,'module','videos','themes/default/modules/videos/jwplayer/skins/roundster.css',1583920967,0),(981,'module','videos','themes/default/modules/videos/jwplayer/skins/seven.css',1583920967,0),(982,'module','videos','themes/default/modules/videos/jwplayer/skins/six.css',1583920967,0),(983,'module','videos','themes/default/modules/videos/jwplayer/skins/stormtrooper.css',1583920967,0),(984,'module','videos','themes/default/modules/videos/jwplayer/skins/vapor.css',1583920967,0),(985,'module','videos','themes/default/modules/videos/jwplayer/vttparser.js',1583920967,0),(986,'module','videos','themes/default/modules/videos/playlist.tpl',1583920967,0),(987,'module','videos','themes/default/modules/videos/playlist_cat.tpl',1583920967,0),(988,'module','videos','themes/default/modules/videos/playlist_list.tpl',1583920967,0),(989,'module','videos','themes/default/modules/videos/search.tpl',1583920967,0),(990,'module','videos','themes/default/modules/videos/sendmail.tpl',1583920967,0),(991,'module','videos','themes/default/modules/videos/tag.tpl',1583920967,0),(992,'module','videos','themes/default/modules/videos/uploader.tpl',1583920967,0),(993,'module','videos','themes/default/modules/videos/user-playlist.tpl',1583920967,0),(994,'module','videos','themes/default/modules/videos/user-video.tpl',1583920967,0),(995,'module','videos','themes/default/modules/videos/viewcat_grid.tpl',1583920967,0),(996,'module','videos','themes/default/modules/videos/viewcat_page.tpl',1583920967,0),(997,'module','videos','themes/default/modules/videos/viewgrid_by_cat.tpl',1583920967,0),(998,'module','videos','themes/default/css/videos.css',1583920967,0),(999,'module','videos','themes/default/js/videos.js',1583920967,0),(1000,'module','videos','themes/default/images/videos/index.html',1583920967,0),(1001,'module','videos','themes/default/images/videos/video_placeholder.png',1583920967,0),(1002,'module','videos','themes/admin_default/css/videos.css',1583920967,0),(1003,'module','videos','themes/admin_default/js/videos.js',1583920967,0),(1004,'module','videos','themes/admin_default/js/videos_content.js',1583920967,0),(1005,'module','videos','themes/admin_default/modules/videos/admin.tpl',1583920967,0),(1006,'module','videos','themes/admin_default/modules/videos/block.tpl',1583920967,0),(1007,'module','videos','themes/admin_default/modules/videos/blockcat_lists.tpl',1583920967,0),(1008,'module','videos','themes/admin_default/modules/videos/block_list.tpl',1583920967,0),(1009,'module','videos','themes/admin_default/modules/videos/cat.tpl',1583920967,0),(1010,'module','videos','themes/admin_default/modules/videos/cat_list.tpl',1583920967,0),(1011,'module','videos','themes/admin_default/modules/videos/content.tpl',1583920967,0),(1012,'module','videos','themes/admin_default/modules/videos/del_cat.tpl',1583920967,0),(1013,'module','videos','themes/admin_default/modules/videos/get.tpl',1583920967,0),(1014,'module','videos','themes/admin_default/modules/videos/groups.tpl',1583920967,0),(1015,'module','videos','themes/admin_default/modules/videos/index.html',1583920967,0),(1016,'module','videos','themes/admin_default/modules/videos/main.tpl',1583920967,0),(1017,'module','videos','themes/admin_default/modules/videos/move.tpl',1583920967,0),(1018,'module','videos','themes/admin_default/modules/videos/playlist.tpl',1583920967,0),(1019,'module','videos','themes/admin_default/modules/videos/playlistcat_lists.tpl',1583920967,0),(1020,'module','videos','themes/admin_default/modules/videos/playlists.tpl',1583920967,0),(1021,'module','videos','themes/admin_default/modules/videos/playlist_list.tpl',1583920967,0),(1022,'module','videos','themes/admin_default/modules/videos/redriect.tpl',1583920967,0),(1023,'module','videos','themes/admin_default/modules/videos/report.tpl',1583920967,0),(1024,'module','videos','themes/admin_default/modules/videos/search.tpl',1583920967,0),(1025,'module','videos','themes/admin_default/modules/videos/settings.tpl',1583920967,0),(1026,'module','videos','themes/admin_default/modules/videos/sources.tpl',1583920967,0),(1027,'module','videos','themes/admin_default/modules/videos/sources_list.tpl',1583920967,0),(1028,'module','videos','themes/admin_default/modules/videos/tags.tpl',1583920967,0),(1029,'module','videos','themes/admin_default/modules/videos/tags_lists.tpl',1583920967,0);
/*!40000 ALTER TABLE `nv4_extension_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_ips`
--

DROP TABLE IF EXISTS `nv4_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_ips` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT 0,
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_ips`
--

LOCK TABLES `nv4_ips` WRITE;
/*!40000 ALTER TABLE `nv4_ips` DISABLE KEYS */;
INSERT INTO `nv4_ips` VALUES (1,1,'::1',0,1,1557802830,0,'');
/*!40000 ALTER TABLE `nv4_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_language`
--

DROP TABLE IF EXISTS `nv4_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_language` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_language`
--

LOCK TABLES `nv4_language` WRITE;
/*!40000 ALTER TABLE `nv4_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_language_file`
--

DROP TABLE IF EXISTS `nv4_language_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  PRIMARY KEY (`idfile`),
  UNIQUE KEY `module` (`module`,`admin_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_language_file`
--

LOCK TABLES `nv4_language_file` WRITE;
/*!40000 ALTER TABLE `nv4_language_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_language_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_logs`
--

DROP TABLE IF EXISTS `nv4_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL,
  `log_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1487 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_logs`
--

LOCK TABLES `nv4_logs` WRITE;
/*!40000 ALTER TABLE `nv4_logs` DISABLE KEYS */;
INSERT INTO `nv4_logs` VALUES (1,'vi','login','[chau123@gmail.com] Đăng nhập',' Client IP:::1','',0,1557802835),(2,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1557802901),(3,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1557803169),(4,'vi','themes','Thiết lập giao diện theme: \"phubinh\"','','',1,1557803245),(5,'vi','themes','Kích hoạt theme: \"phubinh\"','','',1,1557803256),(6,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557803376),(7,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557803540),(8,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557803605),(9,'vi','upload','Upload file','uploads/header-bg.jpg','',1,1557803747),(10,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557803850),(11,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557804046),(12,'vi','about','Delete','ID: 1','',1,1557804133),(13,'vi','about','Delete','ID: 2','',1,1557804141),(14,'vi','about','Delete','ID: 3','',1,1557804142),(15,'vi','about','Delete','ID: 4','',1,1557804143),(16,'vi','about','Delete','ID: 5','',1,1557804145),(17,'vi','about','Delete','ID: 6','',1,1557804146),(18,'vi','about','Delete','ID: 7','',1,1557804147),(19,'vi','about','Delete','ID: 8','',1,1557804148),(20,'vi','about','Add',' ','',1,1557804277),(21,'vi','about','Add',' ','',1,1557804347),(22,'vi','about','Add',' ','',1,1557804396),(23,'vi','about','Add',' ','',1,1557804438),(24,'vi','about','Add',' ','',1,1557804470),(25,'vi','about','Add',' ','',1,1557804496),(26,'vi','about','Add',' ','',1,1557804529),(27,'vi','about','Add',' ','',1,1557804553),(28,'vi','about','Add',' ','',1,1557804579),(29,'vi','about','Add',' ','',1,1557804601),(30,'vi','news','Xóa Chuyên mục và các bài viết','Tuyển dụng','',1,1557804814),(31,'vi','news','Xóa Chuyên mục và các bài viết','Đối tác','',1,1557804819),(32,'vi','news','Xóa Chuyên mục và các bài viết','Sản phẩm','',1,1557804823),(33,'vi','news','Xóa Chuyên mục và các bài viết','Thông cáo báo chí','',1,1557804829),(34,'vi','news','Xóa Chuyên mục và các bài viết','Bản tin nội bộ','',1,1557804835),(35,'vi','news','Xóa Chuyên mục và các bài viết','Tin công nghệ','',1,1557804837),(36,'vi','news','Thêm chuyên mục','Góc phụ huynh','',1,1557804870),(37,'vi','news','Thêm chuyên mục','Hoạt động','',1,1557804879),(38,'vi','news','Thêm chuyên mục','Tuyển sinh','',1,1557804887),(39,'vi','news','Thêm chuyên mục','Trợ giúp','',1,1557804898),(40,'vi','news','Thêm chuyên mục','Thực đơn cho bé','',1,1557804949),(41,'vi','menu','Delete menu item','Item ID 16','',1,1557804964),(42,'vi','menu','Delete menu item','Item ID 17','',1,1557804964),(43,'vi','menu','Delete menu item','Item ID 18','',1,1557804964),(44,'vi','menu','Delete menu item','Item ID 19','',1,1557804964),(45,'vi','menu','Delete menu item','Item ID 20','',1,1557804964),(46,'vi','menu','Delete menu item','Item ID 21','',1,1557804964),(47,'vi','menu','Delete menu item','Item ID 22','',1,1557804964),(48,'vi','news','Thêm chuyên mục','Lịch học','',1,1557804999),(49,'vi','news','Thêm chuyên mục','Hoạt dộng','',1,1557805007),(50,'vi','news','Thêm chuyên mục','Dinh dưỡng','',1,1557805033),(51,'vi','news','Thêm chuyên mục','Tập ăn cho con','',1,1557805052),(52,'vi','news','Thêm chuyên mục','Thực đơn trẻ ốm','',1,1557805069),(53,'vi','news','Thêm chuyên mục','Trẻ biến ăn','',1,1557805078),(54,'vi','news','Thêm chuyên mục','Món ngon cho trẻ','',1,1557805191),(55,'vi','news','Thêm chuyên mục','Dạy con','',1,1557805207),(56,'vi','news','Thêm chuyên mục','Phát triển trí tuệ cho trẻ','',1,1557805226),(57,'vi','news','Thêm chuyên mục','Kỹ năng sống','',1,1557805235),(58,'vi','news','Xóa Chuyên mục và các bài viết','Phát triển trí tuệ cho trẻ','',1,1557805243),(59,'vi','news','Xóa Chuyên mục và các bài viết','Kỹ năng sống','',1,1557805245),(60,'vi','news','Thêm chuyên mục','Phát triển trí tuệ cho trẻ','',1,1557805251),(61,'vi','news','Thêm chuyên mục','Kỹ năng sống','',1,1557805256),(62,'vi','news','Thêm chuyên mục','Chơi cùng bé','',1,1557805263),(63,'vi','news','Thêm chuyên mục','Bé dưới 12 tháng','',1,1557805275),(64,'vi','news','Thêm chuyên mục','Bé 12 -24 tháng','',1,1557805286),(65,'vi','news','Thêm chuyên mục','Bé 24 - 36 tháng','',1,1557805295),(66,'vi','news','Thêm chuyên mục','Chăm sóc trẻ','',1,1557805304),(67,'vi','news','Thêm chuyên mục','Phòng bệnh','',1,1557805312),(68,'vi','news','Thêm chuyên mục','Chăm bé ốm','',1,1557805318),(69,'vi','news','Thêm chuyên mục','Tâm lý trẻ em','',1,1557805334),(70,'vi','news','Thêm chuyên mục','Các bệnh tâm lý ở trẻ','',1,1557805351),(71,'vi','news','Thêm chuyên mục','Chọn trường cho con','',1,1557805365),(72,'vi','news','Thêm chuyên mục','Đưa con đến trường','',1,1557805382),(73,'vi','news','Thêm chuyên mục','Kể chuyện cho bé','',1,1557805390),(74,'vi','news','Thêm chuyên mục','Nhà trường','',1,1557805397),(75,'vi','news','Thêm chuyên mục','Thông báo','',1,1557805405),(76,'vi','news','Thêm chuyên mục','Hoạt động','',1,1557805412),(77,'vi','news','Thêm chuyên mục','Tuyển sinh','',1,1557805419),(78,'vi','news','Thêm chuyên mục','Phương pháp','',1,1557805425),(79,'vi','news','Thêm chuyên mục','Montessori','',1,1557805444),(80,'vi','news','Thêm chuyên mục','Tuyển dụng','',1,1557805453),(81,'vi','news','Xóa Chuyên mục và các bài viết','Tuyển sinh','',1,1557805811),(82,'vi','news','Xóa Chuyên mục và các bài viết','Thông báo','',1,1557805829),(83,'vi','news','Xóa Chuyên mục và các bài viết','Montessori','',1,1557805849),(84,'vi','news','Xóa Chuyên mục và các bài viết','Phương pháp','',1,1557805854),(85,'vi','news','Xóa Chuyên mục và các bài viết','Tuyển dụng','',1,1557805862),(86,'vi','news','Xóa Chuyên mục và các bài viết','Hoạt động','',1,1557805892),(87,'vi','news','Xóa Chuyên mục và các bài viết','Hoạt động','',1,1557805923),(88,'vi','news','Thêm chuyên mục','Thông báo','',1,1557805939),(89,'vi','news','Thêm chuyên mục','Hoạt động','',1,1557805946),(90,'vi','news','Thêm chuyên mục','Tuyển sinh','',1,1557805953),(91,'vi','news','Thêm chuyên mục','Phương pháp','',1,1557805958),(92,'vi','news','Thêm chuyên mục','Montessori','',1,1557805966),(93,'vi','news','Thêm chuyên mục','Tuyển dụng','',1,1557805974),(94,'vi','news','Thêm chuyên mục','Công văn','',1,1557806095),(95,'vi','news','Thêm chuyên mục','Văn bản','',1,1557806105),(96,'vi','news','Thêm chuyên mục','Công văn','',1,1557806109),(97,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1557817377),(98,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557817388),(99,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557817466),(100,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557817485),(101,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557817566),(102,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557817625),(103,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557817661),(104,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557817700),(105,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557818162),(106,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557818250),(107,'vi','news','Thêm chuyên mục','Chọn trường cho con','',1,1557818347),(108,'vi','news','Thêm chuyên mục','Thông báo tuyển sinh','',1,1557818359),(109,'vi','news','Thêm chuyên mục','Các câu hỏi thường gặp','',1,1557818466),(110,'vi','news','Thêm chuyên mục','Sử dụng camera online','',1,1557818503),(111,'vi','news','Thêm chuyên mục','Tải về','',1,1557818513),(112,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557819022),(113,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557819478),(114,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557819505),(115,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557819520),(116,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557819645),(117,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557819668),(118,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557820088),(119,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557820324),(120,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557820436),(121,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557820612),(122,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557820645),(123,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557820694),(124,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557820894),(125,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557820997),(126,'vi','banners','log_add_plan','planid 4','',1,1557821710),(127,'vi','banners','log_add_banner','bannerid 4','',1,1557821734),(128,'vi','themes','Thêm block','Name : global banners','',1,1557821784),(129,'vi','themes','Sửa block','Name : global banners','',1,1557821810),(130,'vi','themes','Sửa block','Name : global banners','',1,1557821824),(131,'vi','themes','Sửa block','Name : global banners','',1,1557821843),(132,'vi','themes','Sửa block','Name : global banners','',1,1557821990),(133,'vi','banners','log_edit_plan','planid 4','',1,1557822034),(134,'vi','banners','log_del_banner','bannerid 4','',1,1557822045),(135,'vi','banners','log_edit_plan','planid 4','',1,1557822078),(136,'vi','banners','log_add_banner','bannerid 5','',1,1557822093),(137,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557822622),(138,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557822683),(139,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557822704),(140,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557822760),(141,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557822799),(142,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823034),(143,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823055),(144,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823069),(145,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823080),(146,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823213),(147,'vi','themes','Sửa block','Name : Copyright','',1,1557823360),(148,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823468),(149,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823645),(150,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823687),(151,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557823914),(152,'vi','modules','Thiết lập module mới slider','','',1,1557824046),(153,'vi','modules','Sửa module &ldquo;slider&rdquo;','','',1,1557824052),(154,'vi','upload','Upload file','uploads/slider/2019/be-mam-non-chao-xuan-moi-38_1c6d85c2ff92e954c1023e9becf741d4.jpg','',1,1557824093),(155,'vi','slider','Add',' ','',1,1557824118),(156,'vi','upload','Upload file','uploads/slider/2019/khan-gia-phu-huynh-04_d44c60350c653e0b2f827a8a55667caa.jpg','',1,1557824176),(157,'vi','slider','Add',' ','',1,1557824179),(158,'vi','upload','Upload file','uploads/slider/2019/khan-gia-phu-huynh-12_8e7f2535a7f80ca5b6eaeee3eecaf495.jpg','',1,1557824200),(159,'vi','slider','Add',' ','',1,1557824203),(160,'vi','upload','Upload file','uploads/slider/2019/gio-hoc-lop-mau-giao-be-2012-19_c2c9f722f960f6b40e2aecaefce2f92f.jpg','',1,1557824232),(161,'vi','slider','Add',' ','',1,1557824235),(162,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1557824256),(163,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557824359),(164,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1557824768),(165,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557825345),(166,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557825394),(167,'vi','themes','Thêm block','Name : global banner slider','',1,1557825423),(168,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557825561),(169,'vi','themes','Sửa block','Name : global banner slider','',1,1557825804),(170,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557825989),(171,'vi','themes','Sửa block','Name : Thống kê','',1,1557826058),(172,'vi','themes','Sửa block','Name : Thăm dò ý kiến','',1,1557826064),(173,'vi','themes','Sửa block','Name : Tin xem nhiều','',1,1557826074),(174,'vi','themes','Sửa block','Name : Album hình ảnh','',1,1557826105),(175,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557826230),(176,'vi','themes','Sửa block','Name : Chủ đề','',1,1557826335),(177,'vi','themes','Sửa block','Name : Chủ đề','',1,1557826367),(178,'vi','themes','Sửa block','Name : Điện thoại','',1,1557826387),(179,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557826565),(180,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557826631),(181,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557826784),(182,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557826846),(183,'vi','themes','Sửa block','Name : Điện thoại','',1,1557826909),(184,'vi','themes','Sửa block','Name : Điện thoại','',1,1557826943),(185,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557826986),(186,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827046),(187,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827170),(188,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827248),(189,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827314),(190,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1557827464),(191,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1557827527),(192,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827613),(193,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827681),(194,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827777),(195,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827814),(196,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557827887),(197,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1557839609),(198,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557839885),(199,'vi','themes','Thêm block','Name : global fb chat','',1,1557840447),(200,'vi','themes','Thêm block','Name : global facebook page plugin','',1,1557840721),(201,'vi','themes','Sửa block','Name : global facebook page plugin','',1,1557840742),(202,'vi','themes','Thêm block','Name : global facebook page plugin','',1,1557840774),(203,'vi','themes','Sửa block','Name : Thống kê','',1,1557841326),(204,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557841635),(205,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557841751),(206,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557842751),(207,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557842758),(208,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557842886),(209,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557842940),(210,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557842966),(211,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557842995),(212,'vi','login','[admin] Thoát khỏi tài khoản Quản trị',' Client IP:127.0.0.1','',0,1557844795),(213,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1557846267),(214,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846272),(215,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846341),(216,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846368),(217,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846411),(218,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846451),(219,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846460),(220,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846566),(221,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846596),(222,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846631),(223,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846644),(224,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846659),(225,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557846698),(226,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557847547),(227,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557848346),(228,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557848426),(229,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557848452),(230,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557848512),(231,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557848570),(232,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557848694),(233,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557848974),(234,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557849037),(235,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557849066),(236,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557849226),(237,'vi','themes','Thêm block','Name : global block facebook comment box','',1,1557849432),(238,'vi','themes','Sửa block','Name : global block facebook comment box','',1,1557849444),(239,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557849696),(240,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557849745),(241,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557849807),(242,'vi','themes','Thiết lập layout theme: \"phubinh\"','','',1,1557850185),(243,'vi','contact','Change config module','','',1,1557850397),(244,'vi','themes','Sửa block','Name : Quảng cáo cột trái','',1,1557850686),(245,'vi','themes','Sửa block','Name : Quảng cáo cột trái','',1,1557850775),(246,'vi','themes','Sửa block','Name : Giới thiệu','',1,1557850820),(247,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557850906),(248,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557850954),(249,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557850983),(250,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557851200),(251,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557851317),(252,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557851350),(253,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557851363),(254,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557851393),(255,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557851419),(256,'vi','themes','Sửa block','Name : Giới thiệu','',1,1557852045),(257,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557852240),(258,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557852507),(259,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557852525),(260,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557852905),(261,'vi','about','Edit','ID: 9','',1,1557852931),(262,'vi','about','Edit','ID: 10','',1,1557852944),(263,'vi','about','Edit','ID: 11','',1,1557852948),(264,'vi','about','Edit','ID: 12','',1,1557852954),(265,'vi','about','Edit','ID: 13','',1,1557852967),(266,'vi','about','Edit','ID: 14','',1,1557852974),(267,'vi','about','Edit','ID: 15','',1,1557852980),(268,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557853122),(269,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557853496),(270,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557853541),(271,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557853661),(272,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1557881360),(273,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557881530),(274,'vi','upload','Xóa file','uploads/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg','',1,1557881784),(275,'vi','upload','Xóa file','uploads/news/hoc-viec-tai-cong-ty-vinades.jpg','',1,1557881784),(276,'vi','upload','Xóa file','uploads/news/hoptac 6.jpg','',1,1557881784),(277,'vi','upload','Xóa file','uploads/news/hoptac.jpg','',1,1557881784),(278,'vi','upload','Xóa file','uploads/news/nangly.jpg','',1,1557881784),(279,'vi','upload','Xóa file','uploads/news/nukeviet-cms.jpg','',1,1557881784),(280,'vi','upload','Xóa file','uploads/news/nukeviet-nhantaidatviet2011.jpg','',1,1557881784),(281,'vi','upload','Xóa file','uploads/news/tap-huan-pgd-ha-dong-2015.jpg','',1,1557881784),(282,'vi','upload','Xóa file','uploads/news/thuc-tap-sinh.jpg','',1,1557881784),(283,'vi','upload','Xóa file','uploads/news/tuyen-dung-nvkd.png','',1,1557881784),(284,'vi','upload','Xóa file','uploads/news/tuyendung-kythuat.jpg','',1,1557881784),(285,'vi','upload','Upload file','uploads/news/khao-sat-2.jpg','',1,1557881788),(286,'vi','news','Sửa bài viết','Khảo sát chất lượng khối mẫu giáo lớn năm học 2017-2018','',1,1557881835),(287,'vi','upload','Upload file','uploads/img_0018.jpg','',1,1557882048),(288,'vi','news','Sửa bài viết','Lễ bế giảng và vui tết thiếu nhi năm học 2016 - 2017 tại trường mầm non Thăng Long Kidsmart Long Biên','',1,1557882417),(289,'vi','upload','Upload file','uploads/news/2019_05/img_0018.jpg','',1,1557882452),(290,'vi','news','Sửa bài viết','Lễ bế giảng và vui tết thiếu nhi năm học 2016 - 2017 tại trường mầm non Thăng Long Kidsmart Long Biên','',1,1557882456),(291,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557882679),(292,'vi','themes','Thiết lập layout theme: \"phubinh\"','','',1,1557882760),(293,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557883550),(294,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557883679),(295,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557883871),(296,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557883895),(297,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557883914),(298,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557883934),(299,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557883968),(300,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884015),(301,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884075),(302,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884471),(303,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884509),(304,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884524),(305,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884552),(306,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884580),(307,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884659),(308,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884705),(309,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884764),(310,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884799),(311,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884879),(312,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884909),(313,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884918),(314,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884944),(315,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557884970),(316,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885089),(317,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885161),(318,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885189),(319,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885206),(320,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885227),(321,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885314),(322,'vi','upload','Upload file','uploads/news/2019_05/hoat-dong-huong-noi-2.jpg','',1,1557885499),(323,'vi','news','Thêm bài viết','Bé là người có thể học tập thông qua hoạt động hướng nội thì nên dạy dỗ bé như thế nào?','',1,1557885554),(324,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885886),(325,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885922),(326,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557885936),(327,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557886128),(328,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557886144),(329,'vi','themes','Thêm block','Name : Tin tiêu điểm','',1,1557886275),(330,'vi','news','Sửa bài viết','NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước','',1,1557886291),(331,'vi','news','Sửa bài viết','Lễ bế giảng và vui tết thiếu nhi năm học 2016 - 2017 tại trường mầm non Thăng Long Kidsmart Long Biên','',1,1557886307),(332,'vi','news','Xóa bài viêt','NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước','',1,1557886317),(333,'vi','themes','Sửa block','Name : Tin tiêu điểm','',1,1557886581),(334,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557886674),(335,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557886696),(336,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557886767),(337,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557886832),(338,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557886888),(339,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557887010),(340,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557887159),(341,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557887433),(342,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557887621),(343,'vi','banners','log_del_plan','planid 1','',1,1557887741),(344,'vi','banners','log_del_plan','planid 2','',1,1557887743),(345,'vi','banners','log_edit_plan','planid 3','',1,1557887784),(346,'vi','banners','log_add_banner','bannerid 6','',1,1557887799),(347,'vi','themes','Thêm block','Name : global banners','',1,1557887824),(348,'vi','banners','log_add_banner','bannerid 7','',1,1557887912),(349,'vi','extensions','Cài đặt ứng dụng','nv4_module_photos.zip','',1,1557888049),(350,'vi','modules','Thiết lập module mới photos','','',1,1557888078),(351,'vi','modules','Sửa module &ldquo;photos&rdquo;','','',1,1557888080),(352,'vi','photos','Add new Category','category_id: 1 Các cô đang giúp các con chuẩn bị cho cuộc thi','',1,1557888397),(353,'vi','photos','Edit A Category','category_id: 1','',1,1557888577),(354,'vi','photos','Add A Album','album_id: 1','',1,1557888753),(355,'vi','banners','log_edit_banner','bannerid 7','',1,1557888885),(356,'vi','banners','log_edit_banner','bannerid 7','',1,1557888908),(357,'vi','banners','log_edit_banner','bannerid 7','',1,1557888929),(358,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557889357),(359,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557889408),(360,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557889514),(361,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557889569),(362,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557889593),(363,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557889617),(364,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890061),(365,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890127),(366,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890172),(367,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890224),(368,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890346),(369,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890462),(370,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890505),(371,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890533),(372,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890572),(373,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890744),(374,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890824),(375,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890841),(376,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557890853),(377,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891009),(378,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891048),(379,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891222),(380,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891408),(381,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891417),(382,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891483),(383,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891568),(384,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891665),(385,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891764),(386,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891823),(387,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557891962),(388,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557892031),(389,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1557903749),(390,'vi','upload','Upload file','uploads/favicon.ico','',1,1557903770),(391,'vi','modules','Thiết lập module mới videoclips','','',1,1557904185),(392,'vi','videoclips','Thêm thể loại mới','ID 1','',1,1557904358),(393,'vi','modules','Xóa module \"videoclips\"','','',1,1557905559),(394,'vi','themes','Thiết lập layout theme: \"phubinh\"','','',1,1557906901),(395,'vi','themes','Thiết lập layout theme: \"phubinh\"','','',1,1557906967),(396,'vi','upload','Upload file','uploads/menu/menuthuvienanh.jpg','',1,1557907330),(397,'vi','themes','Thêm block','Name : global treeview','',1,1557907387),(398,'vi','login','[admin] Thoát khỏi tài khoản Quản trị',' Client IP:127.0.0.1','',0,1557907903),(399,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1557907938),(400,'vi','photos','Edit A Album','album_id: 1','',1,1557908025),(401,'vi','modules','Sửa module &ldquo;photos&rdquo;','','',1,1557908167),(402,'vi','photos','Edit A Album','album_id: 1','',1,1557908280),(403,'vi','modules','Xóa module \"photos\"','','',1,1557908602),(404,'vi','modules','Thiết lập module mới photos','','',1,1557908670),(405,'vi','modules','Sửa module &ldquo;photos&rdquo;','','',1,1557908674),(406,'vi','photos','Add new Category','category_id: 1 Lễ bế giảng','',1,1557908717),(407,'vi','photos','Add A Album','album_id: 1','',1,1557908759),(408,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557909190),(409,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557909414),(410,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557909511),(411,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557909562),(412,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557909691),(413,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557909955),(414,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557910100),(415,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1557910156),(416,'vi','login','[admin] Đăng nhập',' Client IP:::1','',0,1583896854),(417,'vi','about','Delete','ID: 9','',1,1583896863),(418,'vi','about','Delete','ID: 10','',1,1583896864),(419,'vi','about','Delete','ID: 11','',1,1583896865),(420,'vi','about','Delete','ID: 12','',1,1583896866),(421,'vi','about','Delete','ID: 13','',1,1583896866),(422,'vi','about','Delete','ID: 14','',1,1583896867),(423,'vi','about','Delete','ID: 15','',1,1583896868),(424,'vi','about','Delete','ID: 16','',1,1583896869),(425,'vi','about','Delete','ID: 17','',1,1583896869),(426,'vi','about','Delete','ID: 18','',1,1583896870),(427,'vi','news','Xóa bài viêt','Bé là người có thể học tập thông qua hoạt động hướng nội thì nên dạy dỗ bé như thế nào?','',1,1583896874),(428,'vi','news','Xóa bài viêt','Khảo sát chất lượng khối mẫu giáo lớn năm học 2017-2018','',1,1583896875),(429,'vi','news','Xóa bài viêt','Lễ bế giảng và vui tết thiếu nhi năm học 2016 - 2017 tại trường mầm non Thăng Long Kidsmart Long Biên','',1,1583896876),(430,'vi','news','Xóa Chuyên mục và các bài viết','Thực đơn cho bé','',1,1583896886),(431,'vi','news','Xóa Chuyên mục và các bài viết','Lịch học','',1,1583896890),(432,'vi','news','Xóa Chuyên mục và các bài viết','Hoạt động','',1,1583896892),(433,'vi','news','Xóa Chuyên mục và các bài viết','Bé','',1,1583896897),(434,'vi','upload','Xóa file','uploads/favicon.ico','',1,1583896915),(435,'vi','upload','Xóa file','uploads/img_0018.jpg','',1,1583896915),(436,'vi','upload','Xóa file','uploads/header-bg.jpg','',1,1583896915),(437,'vi','news','Xóa Chuyên mục và các bài viết','Văn bản','',1,1583896934),(438,'vi','news','Xóa Chuyên mục và các bài viết','Công văn','',1,1583896937),(439,'vi','news','Xóa Chuyên mục và các bài viết','Công văn','',1,1583896942),(440,'vi','news','Xóa Chuyên mục và các bài viết','Các câu hỏi thường gặp','',1,1583896947),(441,'vi','news','Xóa Chuyên mục và các bài viết','Sử dụng camera online','',1,1583896949),(442,'vi','news','Xóa Chuyên mục và các bài viết','Tải về','',1,1583896950),(443,'vi','news','Xóa Chuyên mục và các bài viết','Chọn trường cho con','',1,1583896956),(444,'vi','news','Xóa Chuyên mục và các bài viết','Thông báo tuyển sinh','',1,1583896958),(445,'vi','news','Xóa Chuyên mục và các bài viết','Thông báo','',1,1583896963),(446,'vi','news','Xóa Chuyên mục và các bài viết','Hoạt động','',1,1583896965),(447,'vi','news','Xóa Chuyên mục và các bài viết','Tuyển sinh','',1,1583896967),(448,'vi','news','Xóa Chuyên mục và các bài viết','Tuyển dụng','',1,1583896975),(449,'vi','news','Xóa Chuyên mục và các bài viết','Montessori','',1,1583896981),(450,'vi','news','Xóa Chuyên mục và các bài viết','Trợ giúp','',1,1583896986),(451,'vi','news','Xóa Chuyên mục và các bài viết','Tuyển sinh','',1,1583896991),(452,'vi','news','Xóa Chuyên mục và các bài viết','Phương pháp','',1,1583896994),(453,'vi','news','Xóa Chuyên mục và các bài viết','Nhà trường','',1,1583896998),(454,'vi','news','Xóa Chuyên mục và các bài viết','Kể chuyện cho bé','',1,1583897011),(455,'vi','news','Xóa Chuyên mục và các bài viết','Đưa con đến trường','',1,1583897012),(456,'vi','news','Xóa Chuyên mục và các bài viết','Chọn trường cho con','',1,1583897015),(457,'vi','news','Xóa Chuyên mục và các bài viết','Tập ăn cho con','',1,1583897020),(458,'vi','news','Xóa Chuyên mục và các bài viết','Thực đơn trẻ ốm','',1,1583897022),(459,'vi','news','Xóa Chuyên mục và các bài viết','Trẻ biến ăn','',1,1583897026),(460,'vi','modules','Cài lại module \"news\"','','',1,1583897056),(461,'vi','modules','Cài lại module \"page\"','','',1,1583897072),(462,'vi','modules','Xóa module \"photos\"','','',1,1583897077),(463,'vi','modules','Cài lại module \"slider\"','','',1,1583897081),(464,'vi','modules','Cài lại module \"menu\"','','',1,1583897089),(465,'vi','modules','Cài lại module \"banners\"','','',1,1583897094),(466,'vi','modules','Cài lại module \"contact\"','','',1,1583897101),(467,'vi','modules','Cài lại module \"users\"','','',1,1583897107),(468,'vi','modules','Cài lại module \"about\"','','',1,1583897112),(469,'vi','modules','Cài lại module \"banners\"','','',1,1583897145),(470,'vi','banners','log_del_banner','bannerid 5','',1,1583897156),(471,'vi','banners','log_del_banner','bannerid 6','',1,1583897158),(472,'vi','banners','log_del_banner','bannerid 7','',1,1583897160),(473,'vi','banners','log_del_plan','planid 4','',1,1583897164),(474,'vi','banners','log_del_plan','planid 3','',1,1583897165),(475,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583897298),(476,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583897329),(477,'vi','modules','Thêm module ảo dich_vu','','',1,1583897538),(478,'vi','modules','Thiết lập module mới dich-vu','','',1,1583897551),(479,'vi','modules','Sửa module &ldquo;dich-vu&rdquo;','','',1,1583897563),(480,'vi','modules','Thứ tự module: dich-vu','17 -> 1','',1,1583897569),(481,'vi','upload','Upload file','uploads/dich-vu/3cogai.jpg','',1,1583897695),(482,'vi','dich-vu','Add',' ','',1,1583897727),(483,'vi','upload','Upload file','uploads/dich-vu/vsip-chon-jpg-20151117105840j9x0nplazq.jpg','',1,1583897773),(484,'vi','dich-vu','Add',' ','',1,1583897798),(485,'vi','dich-vu','Add',' ','',1,1583898161),(486,'vi','dich-vu','Add',' ','',1,1583898257),(487,'vi','about','Add',' ','',1,1583898305),(488,'vi','about','Add',' ','',1,1583898342),(489,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1583914050),(490,'vi','themes','Thêm block','Name : global treeview','',1,1583914856),(491,'vi','themes','Thêm block','Name : global bootstrap','',1,1583915491),(492,'vi','upload','Upload file','uploads/logo.png','',1,1583915851),(493,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583917014),(494,'vi','upload','Upload file','uploads/slider/2020/slider2-1.jpg','',1,1583917052),(495,'vi','slider','Add',' ','',1,1583917058),(496,'vi','upload','Upload file','uploads/slider/2020/slider2.jpg','',1,1583917077),(497,'vi','slider','Add',' ','',1,1583917082),(498,'vi','themes','Thêm block','Name : global banner slider','',1,1583917110),(499,'vi','upload','Upload file','uploads/dich-vu/6-long-hau-jpg.jpg','',1,1583917824),(500,'vi','dich-vu','Edit','ID: 2','',1,1583917827),(501,'vi','upload','Upload file','uploads/dich-vu/nds-300x300.png','',1,1583917872),(502,'vi','dich-vu','Edit','ID: 1','',1,1583917876),(503,'vi','upload','Upload file','uploads/dich-vu/ddong-300x300.jpg','',1,1583917898),(504,'vi','dich-vu','Edit','ID: 3','',1,1583917902),(505,'vi','upload','Xóa file','uploads/dich-vu/3cogai.jpg','',1,1583917919),(506,'vi','dich-vu','Edit','ID: 4','',1,1583917923),(507,'vi','freecontent','Edit Block','ID: 1','',1,1583919291),(508,'vi','freecontent','Del Content','ID:2','',1,1583919719),(509,'vi','freecontent','Del Content','ID:3','',1,1583919723),(510,'vi','freecontent','Del Content','ID:4','',1,1583919726),(511,'vi','freecontent','Del Content','ID:5','',1,1583919729),(512,'vi','freecontent','Edit Content','ID: 1','',1,1583919806),(513,'vi','freecontent','Add Content','Giới thiệu 2','',1,1583919826),(514,'vi','freecontent','Del Content','ID:6','',1,1583919854),(515,'vi','freecontent','Add Block','Giới thiệu','',1,1583919863),(516,'vi','freecontent','Add Content','1','',1,1583919877),(517,'vi','themes','Thêm block','Name : global free content','',1,1583919892),(518,'vi','freecontent','Add Content','Giới thiệu 2','',1,1583919941),(519,'vi','freecontent','Del Content','ID:8','',1,1583919951),(520,'vi','freecontent','Add Content','Giới thiệu 2','',1,1583919965),(521,'vi','freecontent','Del Content','ID:1','',1,1583919984),(522,'vi','freecontent','Add Content','Giới thiệu','',1,1583919990),(523,'vi','freecontent','Edit Content','ID: 9','',1,1583920318),(524,'vi','themes','Sửa block','Name : Tại sao nên chọn chúng tôi?','',1,1583920405),(525,'vi','freecontent','Edit Content','ID: 10','',1,1583920434),(526,'vi','banners','log_add_plan','planid 5','',1,1583920510),(527,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583920538),(528,'vi','themes','Thêm block','Name : global banners','',1,1583920578),(529,'vi','banners','log_add_banner','bannerid 8','',1,1583920604),(530,'vi','modules','Thiết lập module mới video-clip','','',1,1583920732),(531,'vi','modules','Sửa module &ldquo;video-clip&rdquo;','','',1,1583920736),(532,'vi','video-clip','Thêm thể loại mới','ID 1','',1,1583920752),(533,'vi','modules','Xóa module \"video-clip\"','','',1,1583920767),(534,'vi','modules','Thiết lập module mới videoclips','','',1,1583920811),(535,'vi','modules','Sửa module &ldquo;videoclips&rdquo;','','',1,1583920815),(536,'vi','videoclips','Thêm thể loại mới','ID 1','',1,1583920828),(537,'vi','modules','Xóa module \"videoclips\"','','',1,1583920891),(538,'vi','modules','Thiết lập module mới videos','','',1,1583920972),(539,'vi','modules','Sửa module &ldquo;videos&rdquo;','','',1,1583920976),(540,'vi','videos','Thêm chuyên mục','Video','',1,1583920995),(541,'vi','videos','Thêm bảng Uploader','admin','',1,1583921021),(542,'vi','videos','Thêm Videos','Dịch vụ bảo vệ','',1,1583921021),(543,'vi','themes','Thêm block','Name : Video','',1,1583921246),(544,'vi','themes','Sửa block','Name : Video','',1,1583921265),(545,'vi','themes','Sửa block','Name : Videos','',1,1583921335),(546,'vi','news','Thêm chuyên mục','Tin tức - Sự kiện','',1,1583921359),(547,'vi','upload','Upload file','uploads/news/2020_03/tang-qua-hs-gioi.jpg','',1,1583921393),(548,'vi','news','Thêm bài viết','Công đoàn chi nhánh Bảo vệ Bình Dương tặng quà trung thu cho con em người lao động','',1,1583921421),(549,'vi','themes','Thêm block','Name : Tin tức - Sự kiện','',1,1583921454),(550,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1583975132),(551,'vi','upload','Xóa file','uploads/news/2020_03/tang-qua-hs-gioi.jpg','',1,1583975662),(552,'vi','upload','Upload file','uploads/news/2020_03/tang-qua-hs-gioi.jpg','',1,1583975666),(553,'vi','news','Sửa bài viết','Công đoàn chi nhánh Bảo vệ Bình Dương tặng quà trung thu cho con em người lao động','',1,1583975671),(554,'vi','upload','Xóa file','uploads/news/2020_03/tang-qua-hs-gioi.jpg','',1,1583975720),(555,'vi','upload','Upload file','uploads/news/2020_03/tang-qua-hs-gioi.jpg','',1,1583975724),(556,'vi','news','Sửa bài viết','Công đoàn chi nhánh Bảo vệ Bình Dương tặng quà trung thu cho con em người lao động','',1,1583975728),(557,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583975733),(558,'vi','upload','Upload file','uploads/news/2020_03/post87.jpg','',1,1583975771),(559,'vi','news','Thêm bài viết','Bảo vệ Ngày &amp; Đêm Bình Dương Tổng kết thi đua khen thưởng nhân kỷ niệm 10 năm – Ngày thành lập','',1,1583975799),(560,'vi','themes','Sửa block','Name : Tin tức - Sự kiện','',1,1583975815),(561,'vi','upload','Upload file','uploads/news/2020_03/b1.jpg','',1,1583975890),(562,'vi','news','Thêm bài viết','BÀI PHÁT BIỂU CỦA ĐỒNG CHÍ LƯU XUÂN TUỆ TRONG HỘI NGHỊ TỔNG KẾT NĂM 2018','',1,1583975915),(563,'vi','news','Sửa bài viết','BÀI PHÁT BIỂU CỦA ĐỒNG CHÍ LƯU XUÂN TUỆ TRONG HỘI NGHỊ TỔNG KẾT NĂM 2018','',1,1583976161),(564,'vi','news','Sửa bài viết','Bảo vệ Ngày &amp; Đêm Bình Dương Tổng kết thi đua khen thưởng nhân kỷ niệm 10 năm – Ngày thành lập','',1,1583976173),(565,'vi','news','Sửa bài viết','Công đoàn chi nhánh Bảo vệ Bình Dương tặng quà trung thu cho con em người lao động','',1,1583976186),(566,'vi','themes','Sửa block','Name : Công ty chủ quản','',1,1583976701),(567,'vi','themes','Sửa block','Name : Các chuyên mục chính','',1,1583976715),(568,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583977261),(569,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583977272),(570,'vi','themes','Thêm block','Name : global copyright','',1,1583977318),(571,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583977429),(572,'vi','news','Thêm chuyên mục','Doanh nghiệp &amp; khách hàng','',1,1583977487),(573,'vi','news','Sửa bài viết','BÀI PHÁT BIỂU CỦA ĐỒNG CHÍ LƯU XUÂN TUỆ TRONG HỘI NGHỊ TỔNG KẾT NĂM 2018','',1,1583977509),(574,'vi','news','Sửa bài viết','Bảo vệ Ngày &amp; Đêm Bình Dương Tổng kết thi đua khen thưởng nhân kỷ niệm 10 năm – Ngày thành lập','',1,1583977516),(575,'vi','news','Sửa bài viết','Công đoàn chi nhánh Bảo vệ Bình Dương tặng quà trung thu cho con em người lao động','',1,1583977528),(576,'vi','themes','Thêm block','Name : Thông tin doanh nghiệp &amp; khách hàng','',1,1583977553),(577,'vi','news','Sửa bài viết','BÀI PHÁT BIỂU CỦA ĐỒNG CHÍ LƯU XUÂN TUỆ TRONG HỘI NGHỊ TỔNG KẾT NĂM 2018','',1,1583977581),(578,'vi','news','Sửa bài viết','BÀI PHÁT BIỂU CỦA ĐỒNG CHÍ LƯU XUÂN TUỆ TRONG HỘI NGHỊ TỔNG KẾT NĂM 2018','',1,1583977611),(579,'vi','upload','Upload file','uploads/news/2020_03/bao-ve-ngay-dem-nestle.jpg','',1,1583977701),(580,'vi','news','Thêm bài viết','Nestlé trao giải thưởng “An toàn toàn diện” cho Bảo vệ Ngày &amp; Đêm','',1,1583977711),(581,'vi','themes','Sửa block','Name : Thông tin doanh nghiệp &amp; khách hàng','',1,1583977736),(582,'vi','themes','Sửa block','Name : Thông tin doanh nghiệp &amp; khách hàng','',1,1583977828),(583,'vi','upload','Upload file','uploads/news/2020_03/bao-ve-ngay-dem-tay-ninh-3.jpg','',1,1583977916),(584,'vi','news','Thêm bài viết','Bảo vệ Ngày &amp; Đêm Tây Ninh tổ chức tổng kết 2018','',1,1583977921),(585,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583979640),(586,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583979983),(587,'vi','themes','Thêm block','Name : global metismenu','',1,1583980022),(588,'vi','themes','Thiết lập layout theme: \"phubinh\"','','',1,1583980447),(589,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1583980705),(590,'vi','themes','Thêm block','Name : Chúng tôi cung cấp các dịch vụ','',1,1583980810),(591,'vi','banners','log_add_plan','planid 6','',1,1583981369),(592,'vi','banners','log_add_banner','bannerid 9','',1,1583981387),(593,'vi','themes','Thêm block','Name : Dịch vụ mới','',1,1583981480),(594,'vi','themes','Sửa block','Name : Chúng tôi cung cấp các dịch vụ','',1,1583981765),(595,'vi','themes','Thiết lập layout theme: \"phubinh\"','','',1,1583981908),(596,'vi','themes','Sửa block','Name : global banners','',1,1583981953),(597,'vi','themes','Sửa block','Name : global banner slider','',1,1583981986),(598,'vi','themes','Sửa block','Name : Chúng tôi cung cấp các dịch vụ','',1,1583982023),(599,'vi','themes','Sửa block','Name : Tin tức - Sự kiện','',1,1583982033),(600,'vi','themes','Sửa block','Name : Thông tin doanh nghiệp &amp; khách hàng','',1,1583982050),(601,'vi','themes','Sửa block','Name : Videos','',1,1583982060),(602,'vi','themes','Sửa block','Name : Tại sao nên chọn chúng tôi?','',1,1583982069),(603,'vi','themes','Thiết lập layout theme: \"phubinh\"','','',1,1583982368),(604,'vi','themes','Thiết lập layout theme: \"phubinh\"','','',1,1583982446),(605,'vi','themes','Sửa block','Name : global banner slider','',1,1583982534),(606,'vi','themes','Sửa block','Name : Chúng tôi cung cấp các dịch vụ','',1,1583982545),(607,'vi','themes','Sửa block','Name : Tin tức - Sự kiện','',1,1583982555),(608,'vi','themes','Sửa block','Name : Thông tin doanh nghiệp &amp; khách hàng','',1,1583982579),(609,'vi','themes','Sửa block','Name : Videos','',1,1583982588),(610,'vi','themes','Sửa block','Name : Tại sao nên chọn chúng tôi?','',1,1583982599),(611,'vi','contact','log_add_row','Chăm sóc khách hàng','',1,1583982809),(612,'vi','themes','Sửa block','Name : global banners','',1,1583983043),(613,'vi','update','Nâng cấp bắt đầu','10:40:20_12-03-2020','',1,1583984420),(614,'vi','update','Cập nhật module users lên 4.3.06','SUCCESS','',1,1583984420),(615,'vi','update','Cập nhật module news lên 4.3.06','SUCCESS','',1,1583984421),(616,'vi','update','Cập nhật hệ thống lên 4.3.06','SUCCESS','',1,1583984422),(617,'vi','update','Cập nhật module users lên 4.3.07','SUCCESS','',1,1583984423),(618,'vi','update','Cập nhật hệ thống lên 4.3.07','SUCCESS','',1,1583984425),(619,'vi','update','Cập nhật hệ thống lên 4.3.08','SUCCESS','',1,1583984426),(620,'vi','update','Cập nhật CSDL lên phiên bản 4.3.08','SUCCESS','',1,1583984427),(621,'vi','update','Tạo thư mục assets/editors/ckeditor/plugins/dialog/styles','SUCCESS','',1,1583984463),(622,'vi','update','Tạo thư mục assets/editors/ckeditor/plugins/pastetools','SUCCESS','',1,1583984463),(623,'vi','update','Tạo thư mục assets/editors/ckeditor/plugins/pastetools/filter','SUCCESS','',1,1583984463),(624,'vi','update','Tạo thư mục assets/editors/ckeditor/vendor','SUCCESS','',1,1583984463),(625,'vi','update','Tạo thư mục vendor/vinades/nukeviet/Seo','SUCCESS','',1,1583984463),(626,'vi','update','Di chuyển file admin/authors/add.php','SUCCESS','',1,1583984463),(627,'vi','update','Di chuyển file admin/authors/del.php','SUCCESS','',1,1583984463),(628,'vi','update','Di chuyển file admin/authors/edit.php','SUCCESS','',1,1583984463),(629,'vi','update','Di chuyển file admin/authors/main.php','SUCCESS','',1,1583984463),(630,'vi','update','Di chuyển file admin/extensions/manage.php','SUCCESS','',1,1583984463),(631,'vi','update','Di chuyển file admin/extensions/upload.php','SUCCESS','',1,1583984463),(632,'vi','update','Di chuyển file admin/index.php','SUCCESS','',1,1583984463),(633,'vi','update','Di chuyển file admin/language/check.php','SUCCESS','',1,1583984463),(634,'vi','update','Di chuyển file admin/language/edit.php','SUCCESS','',1,1583984463),(635,'vi','update','Di chuyển file admin/language/functions.php','SUCCESS','',1,1583984463),(636,'vi','update','Di chuyển file admin/language/interface.php','SUCCESS','',1,1583984463),(637,'vi','update','Di chuyển file admin/language/main.php','SUCCESS','',1,1583984463),(638,'vi','update','Di chuyển file admin/language/read.php','SUCCESS','',1,1583984463),(639,'vi','update','Di chuyển file admin/language/write.php','SUCCESS','',1,1583984463),(640,'vi','update','Di chuyển file admin/modules/del.php','SUCCESS','',1,1583984463),(641,'vi','update','Di chuyển file admin/modules/edit.php','SUCCESS','',1,1583984463),(642,'vi','update','Di chuyển file admin/modules/functions.php','SUCCESS','',1,1583984463),(643,'vi','update','Di chuyển file admin/modules/setup.php','SUCCESS','',1,1583984463),(644,'vi','update','Di chuyển file admin/modules/show.php','SUCCESS','',1,1583984463),(645,'vi','update','Di chuyển file admin/seotools/admin.menu.php','SUCCESS','',1,1583984463),(646,'vi','update','Di chuyển file admin/seotools/functions.php','SUCCESS','',1,1583984463),(647,'vi','update','Di chuyển file admin/seotools/main.php','SUCCESS','',1,1583984463),(648,'vi','update','Di chuyển file admin/seotools/metatags.php','SUCCESS','',1,1583984463),(649,'vi','update','Di chuyển file admin/seotools/robots.php','SUCCESS','',1,1583984463),(650,'vi','update','Di chuyển file admin/settings/cronjobs.php','SUCCESS','',1,1583984463),(651,'vi','update','Di chuyển file admin/settings/cronjobs_add.php','SUCCESS','',1,1583984463),(652,'vi','update','Di chuyển file admin/settings/cronjobs_del.php','SUCCESS','',1,1583984463),(653,'vi','update','Di chuyển file admin/settings/cronjobs_edit.php','SUCCESS','',1,1583984463),(654,'vi','update','Di chuyển file admin/settings/functions.php','SUCCESS','',1,1583984463),(655,'vi','update','Di chuyển file admin/settings/plugin.php','SUCCESS','',1,1583984463),(656,'vi','update','Di chuyển file admin/settings/security.php','SUCCESS','',1,1583984463),(657,'vi','update','Di chuyển file admin/settings/smtp.php','SUCCESS','',1,1583984463),(658,'vi','update','Di chuyển file admin/settings/system.php','SUCCESS','',1,1583984463),(659,'vi','update','Di chuyển file admin/siteinfo/logs.php','SUCCESS','',1,1583984463),(660,'vi','update','Di chuyển file admin/themes/activatetheme.php','SUCCESS','',1,1583984463),(661,'vi','update','Di chuyển file admin/themes/admin.menu.php','SUCCESS','',1,1583984463),(662,'vi','update','Di chuyển file admin/themes/block_content.php','SUCCESS','',1,1583984463),(663,'vi','update','Di chuyển file admin/themes/functions.php','SUCCESS','',1,1583984463),(664,'vi','update','Di chuyển file admin/themes/main.php','SUCCESS','',1,1583984463),(665,'vi','update','Di chuyển file admin/themes/settings.php','SUCCESS','',1,1583984463),(666,'vi','update','Di chuyển file admin/upload/config.php','SUCCESS','',1,1583984463),(667,'vi','update','Di chuyển file admin/upload/folderlist.php','SUCCESS','',1,1583984463),(668,'vi','update','Di chuyển file admin/upload/functions.php','SUCCESS','',1,1583984463),(669,'vi','update','Di chuyển file admin/upload/main.php','SUCCESS','',1,1583984463),(670,'vi','update','Di chuyển file admin/upload/upload.php','SUCCESS','',1,1583984463),(671,'vi','update','Di chuyển file admin/webtools/checkupdate.php','SUCCESS','',1,1583984463),(672,'vi','update','Di chuyển file admin/webtools/clearsystem.php','SUCCESS','',1,1583984463),(673,'vi','update','Di chuyển file admin/webtools/statistics.php','SUCCESS','',1,1583984463),(674,'vi','update','Di chuyển file assets/editors/ckeditor/LICENSE.md','SUCCESS','',1,1583984463),(675,'vi','update','Di chuyển file assets/editors/ckeditor/adapters/jquery.js','SUCCESS','',1,1583984463),(676,'vi','update','Di chuyển file assets/editors/ckeditor/build-config.js','SUCCESS','',1,1583984463),(677,'vi','update','Di chuyển file assets/editors/ckeditor/ckeditor.js','SUCCESS','',1,1583984463),(678,'vi','update','Di chuyển file assets/editors/ckeditor/config.js','SUCCESS','',1,1583984463),(679,'vi','update','Di chuyển file assets/editors/ckeditor/contents.css','SUCCESS','',1,1583984463),(680,'vi','update','Di chuyển file assets/editors/ckeditor/lang/en.js','SUCCESS','',1,1583984463),(681,'vi','update','Di chuyển file assets/editors/ckeditor/lang/fr.js','SUCCESS','',1,1583984463),(682,'vi','update','Di chuyển file assets/editors/ckeditor/lang/vi.js','SUCCESS','',1,1583984463),(683,'vi','update','Di chuyển file assets/editors/ckeditor/nv.php','SUCCESS','',1,1583984463),(684,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/autosave/css/autosave.min.css','SUCCESS','',1,1583984463),(685,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/autosave/js/extensions.min.js','SUCCESS','',1,1583984463),(686,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/balloonpanel/skins/kama/balloonpanel.css','SUCCESS','',1,1583984463),(687,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/balloonpanel/skins/moono/balloonpanel.css','SUCCESS','',1,1583984463),(688,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/balloonpanel/skins/moono-lisa/balloonpanel.css','SUCCESS','',1,1583984463),(689,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/clipboard/dialogs/paste.js','SUCCESS','',1,1583984463),(690,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/codesnippet/dialogs/codesnippet.js','SUCCESS','',1,1583984463),(691,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/colordialog/dialogs/colordialog.css','SUCCESS','',1,1583984463),(692,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/colordialog/dialogs/colordialog.js','SUCCESS','',1,1583984463),(693,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/copyformatting/styles/copyformatting.css','SUCCESS','',1,1583984463),(694,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/dialog/dialogDefinition.js','SUCCESS','',1,1583984463),(695,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/dialog/styles/dialog.css','SUCCESS','',1,1583984463),(696,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/div/dialogs/div.js','SUCCESS','',1,1583984463),(697,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/find/dialogs/find.js','SUCCESS','',1,1583984463),(698,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/flash/dialogs/flash.js','SUCCESS','',1,1583984463),(699,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/iframe/dialogs/iframe.js','SUCCESS','',1,1583984463),(700,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/image2/dialogs/image2.js','SUCCESS','',1,1583984463),(701,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/link/dialogs/anchor.js','SUCCESS','',1,1583984463),(702,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/link/dialogs/link.js','SUCCESS','',1,1583984463),(703,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/liststyle/dialogs/liststyle.js','SUCCESS','',1,1583984463),(704,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/pastefromword/filter/default.js','SUCCESS','',1,1583984463),(705,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/pastetools/filter/common.js','SUCCESS','',1,1583984463),(706,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/placeholder/dialogs/placeholder.js','SUCCESS','',1,1583984463),(707,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/smiley/dialogs/smiley.js','SUCCESS','',1,1583984463),(708,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/specialchar/dialogs/lang/en.js','SUCCESS','',1,1583984463),(709,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/specialchar/dialogs/lang/fr.js','SUCCESS','',1,1583984463),(710,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/specialchar/dialogs/lang/vi.js','SUCCESS','',1,1583984463),(711,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/specialchar/dialogs/specialchar.js','SUCCESS','',1,1583984463),(712,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/table/dialogs/table.js','SUCCESS','',1,1583984463),(713,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/tableselection/styles/tableselection.css','SUCCESS','',1,1583984463),(714,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/tabletools/dialogs/tableCell.js','SUCCESS','',1,1583984463),(715,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/templates/dialogs/templates.css','SUCCESS','',1,1583984463),(716,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/templates/dialogs/templates.js','SUCCESS','',1,1583984463),(717,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/templates/templates/default.js','SUCCESS','',1,1583984463),(718,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/youtube/images/icon-hdpi.png','SUCCESS','',1,1583984463),(719,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/youtube/images/icon.png','SUCCESS','',1,1583984463),(720,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/colorpanel.css','SUCCESS','',1,1583984463),(721,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog.css','SUCCESS','',1,1583984463),(722,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog_ie.css','SUCCESS','',1,1583984463),(723,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog_ie7.css','SUCCESS','',1,1583984463),(724,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog_ie8.css','SUCCESS','',1,1583984463),(725,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog_iequirks.css','SUCCESS','',1,1583984463),(726,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor.css','SUCCESS','',1,1583984463),(727,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_gecko.css','SUCCESS','',1,1583984463),(728,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_ie.css','SUCCESS','',1,1583984463),(729,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_ie7.css','SUCCESS','',1,1583984463),(730,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_ie8.css','SUCCESS','',1,1583984463),(731,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_iequirks.css','SUCCESS','',1,1583984463),(732,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/elementspath.css','SUCCESS','',1,1583984463),(733,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/mainui.css','SUCCESS','',1,1583984463),(734,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/menu.css','SUCCESS','',1,1583984463),(735,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/notification.css','SUCCESS','',1,1583984463),(736,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/panel.css','SUCCESS','',1,1583984463),(737,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/presets.css','SUCCESS','',1,1583984463),(738,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/richcombo.css','SUCCESS','',1,1583984463),(739,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/toolbar.css','SUCCESS','',1,1583984463),(740,'vi','update','Di chuyển file assets/editors/ckeditor/styles.js','SUCCESS','',1,1583984463),(741,'vi','update','Di chuyển file assets/editors/ckeditor/vendor/promise.js','SUCCESS','',1,1583984463),(742,'vi','update','Di chuyển file assets/js/chart/Chart.bundle.min.js','SUCCESS','',1,1583984463),(743,'vi','update','Di chuyển file assets/js/chart/Chart.min.css','SUCCESS','',1,1583984463),(744,'vi','update','Di chuyển file assets/js/chart/Chart.min.js','SUCCESS','',1,1583984463),(745,'vi','update','Di chuyển file assets/js/clipboard/clipboard.min.js','SUCCESS','',1,1583984463),(746,'vi','update','Di chuyển file assets/js/jquery/jquery.min.js','SUCCESS','',1,1583984463),(747,'vi','update','Di chuyển file assets/js/jquery/jquery.validate.min.js','SUCCESS','',1,1583984463),(748,'vi','update','Di chuyển file assets/js/language/jquery.validator-en.js','SUCCESS','',1,1583984463),(749,'vi','update','Di chuyển file assets/js/language/jquery.validator-fr.js','SUCCESS','',1,1583984463),(750,'vi','update','Di chuyển file assets/js/language/jquery.validator-vi.js','SUCCESS','',1,1583984463),(751,'vi','update','Di chuyển file assets/js/pdf.js/viewer.js','SUCCESS','',1,1583984463),(752,'vi','update','Di chuyển file assets/js/pdf.js/viewer.tpl','SUCCESS','',1,1583984463),(753,'vi','update','Di chuyển file assets/js/plupload/Moxie.swf','SUCCESS','',1,1583984463),(754,'vi','update','Di chuyển file assets/js/plupload/plupload.full.min.js','SUCCESS','',1,1583984463),(755,'vi','update','Di chuyển file assets/js/select2/i18n/en.js','SUCCESS','',1,1583984463),(756,'vi','update','Di chuyển file assets/js/select2/i18n/fr.js','SUCCESS','',1,1583984463),(757,'vi','update','Di chuyển file assets/js/select2/i18n/vi.js','SUCCESS','',1,1583984463),(758,'vi','update','Di chuyển file assets/js/select2/select2.min.css','SUCCESS','',1,1583984463),(759,'vi','update','Di chuyển file assets/js/select2/select2.min.js','SUCCESS','',1,1583984463),(760,'vi','update','Di chuyển file assets/js/upload.js','SUCCESS','',1,1583984463),(761,'vi','update','Di chuyển file assets/tpl/flood_blocker.tpl','SUCCESS','',1,1583984463),(762,'vi','update','Di chuyển file assets/tpl/rss.tpl','SUCCESS','',1,1583984463),(763,'vi','update','Di chuyển file composer.json','SUCCESS','',1,1583984463),(764,'vi','update','Di chuyển file data/config/rpc_services.php','SUCCESS','',1,1583984463),(765,'vi','update','Di chuyển file data/ip/0.php','SUCCESS','',1,1583984463),(766,'vi','update','Di chuyển file data/ip/1.php','SUCCESS','',1,1583984463),(767,'vi','update','Di chuyển file data/ip/10.php','SUCCESS','',1,1583984463),(768,'vi','update','Di chuyển file data/ip/100.php','SUCCESS','',1,1583984463),(769,'vi','update','Di chuyển file data/ip/101.php','SUCCESS','',1,1583984463),(770,'vi','update','Di chuyển file data/ip/102.php','SUCCESS','',1,1583984463),(771,'vi','update','Di chuyển file data/ip/103.php','SUCCESS','',1,1583984463),(772,'vi','update','Di chuyển file data/ip/104.php','SUCCESS','',1,1583984463),(773,'vi','update','Di chuyển file data/ip/105.php','SUCCESS','',1,1583984463),(774,'vi','update','Di chuyển file data/ip/106.php','SUCCESS','',1,1583984463),(775,'vi','update','Di chuyển file data/ip/107.php','SUCCESS','',1,1583984463),(776,'vi','update','Di chuyển file data/ip/108.php','SUCCESS','',1,1583984463),(777,'vi','update','Di chuyển file data/ip/109.php','SUCCESS','',1,1583984463),(778,'vi','update','Di chuyển file data/ip/11.php','SUCCESS','',1,1583984463),(779,'vi','update','Di chuyển file data/ip/110.php','SUCCESS','',1,1583984463),(780,'vi','update','Di chuyển file data/ip/111.php','SUCCESS','',1,1583984463),(781,'vi','update','Di chuyển file data/ip/112.php','SUCCESS','',1,1583984463),(782,'vi','update','Di chuyển file data/ip/113.php','SUCCESS','',1,1583984463),(783,'vi','update','Di chuyển file data/ip/114.php','SUCCESS','',1,1583984463),(784,'vi','update','Di chuyển file data/ip/115.php','SUCCESS','',1,1583984463),(785,'vi','update','Di chuyển file data/ip/116.php','SUCCESS','',1,1583984463),(786,'vi','update','Di chuyển file data/ip/117.php','SUCCESS','',1,1583984463),(787,'vi','update','Di chuyển file data/ip/118.php','SUCCESS','',1,1583984463),(788,'vi','update','Di chuyển file data/ip/119.php','SUCCESS','',1,1583984463),(789,'vi','update','Di chuyển file data/ip/12.php','SUCCESS','',1,1583984463),(790,'vi','update','Di chuyển file data/ip/120.php','SUCCESS','',1,1583984463),(791,'vi','update','Di chuyển file data/ip/121.php','SUCCESS','',1,1583984463),(792,'vi','update','Di chuyển file data/ip/122.php','SUCCESS','',1,1583984463),(793,'vi','update','Di chuyển file data/ip/123.php','SUCCESS','',1,1583984463),(794,'vi','update','Di chuyển file data/ip/124.php','SUCCESS','',1,1583984463),(795,'vi','update','Di chuyển file data/ip/125.php','SUCCESS','',1,1583984463),(796,'vi','update','Di chuyển file data/ip/126.php','SUCCESS','',1,1583984463),(797,'vi','update','Di chuyển file data/ip/127.php','SUCCESS','',1,1583984463),(798,'vi','update','Di chuyển file data/ip/128.php','SUCCESS','',1,1583984463),(799,'vi','update','Di chuyển file data/ip/129.php','SUCCESS','',1,1583984463),(800,'vi','update','Di chuyển file data/ip/13.php','SUCCESS','',1,1583984463),(801,'vi','update','Di chuyển file data/ip/130.php','SUCCESS','',1,1583984463),(802,'vi','update','Di chuyển file data/ip/131.php','SUCCESS','',1,1583984463),(803,'vi','update','Di chuyển file data/ip/132.php','SUCCESS','',1,1583984463),(804,'vi','update','Di chuyển file data/ip/133.php','SUCCESS','',1,1583984463),(805,'vi','update','Di chuyển file data/ip/134.php','SUCCESS','',1,1583984463),(806,'vi','update','Di chuyển file data/ip/135.php','SUCCESS','',1,1583984463),(807,'vi','update','Di chuyển file data/ip/136.php','SUCCESS','',1,1583984463),(808,'vi','update','Di chuyển file data/ip/137.php','SUCCESS','',1,1583984463),(809,'vi','update','Di chuyển file data/ip/138.php','SUCCESS','',1,1583984463),(810,'vi','update','Di chuyển file data/ip/139.php','SUCCESS','',1,1583984463),(811,'vi','update','Di chuyển file data/ip/14.php','SUCCESS','',1,1583984463),(812,'vi','update','Di chuyển file data/ip/140.php','SUCCESS','',1,1583984463),(813,'vi','update','Di chuyển file data/ip/141.php','SUCCESS','',1,1583984463),(814,'vi','update','Di chuyển file data/ip/142.php','SUCCESS','',1,1583984463),(815,'vi','update','Di chuyển file data/ip/143.php','SUCCESS','',1,1583984463),(816,'vi','update','Di chuyển file data/ip/144.php','SUCCESS','',1,1583984463),(817,'vi','update','Di chuyển file data/ip/145.php','SUCCESS','',1,1583984463),(818,'vi','update','Di chuyển file data/ip/146.php','SUCCESS','',1,1583984463),(819,'vi','update','Di chuyển file data/ip/147.php','SUCCESS','',1,1583984463),(820,'vi','update','Di chuyển file data/ip/148.php','SUCCESS','',1,1583984463),(821,'vi','update','Di chuyển file data/ip/149.php','SUCCESS','',1,1583984463),(822,'vi','update','Di chuyển file data/ip/15.php','SUCCESS','',1,1583984463),(823,'vi','update','Di chuyển file data/ip/150.php','SUCCESS','',1,1583984463),(824,'vi','update','Di chuyển file data/ip/151.php','SUCCESS','',1,1583984463),(825,'vi','update','Di chuyển file data/ip/152.php','SUCCESS','',1,1583984463),(826,'vi','update','Di chuyển file data/ip/153.php','SUCCESS','',1,1583984463),(827,'vi','update','Di chuyển file data/ip/154.php','SUCCESS','',1,1583984463),(828,'vi','update','Di chuyển file data/ip/155.php','SUCCESS','',1,1583984463),(829,'vi','update','Di chuyển file data/ip/156.php','SUCCESS','',1,1583984463),(830,'vi','update','Di chuyển file data/ip/157.php','SUCCESS','',1,1583984463),(831,'vi','update','Di chuyển file data/ip/158.php','SUCCESS','',1,1583984463),(832,'vi','update','Di chuyển file data/ip/159.php','SUCCESS','',1,1583984463),(833,'vi','update','Di chuyển file data/ip/16.php','SUCCESS','',1,1583984463),(834,'vi','update','Di chuyển file data/ip/160.php','SUCCESS','',1,1583984463),(835,'vi','update','Di chuyển file data/ip/161.php','SUCCESS','',1,1583984463),(836,'vi','update','Di chuyển file data/ip/162.php','SUCCESS','',1,1583984463),(837,'vi','update','Di chuyển file data/ip/163.php','SUCCESS','',1,1583984463),(838,'vi','update','Di chuyển file data/ip/164.php','SUCCESS','',1,1583984463),(839,'vi','update','Di chuyển file data/ip/165.php','SUCCESS','',1,1583984463),(840,'vi','update','Di chuyển file data/ip/166.php','SUCCESS','',1,1583984463),(841,'vi','update','Di chuyển file data/ip/167.php','SUCCESS','',1,1583984463),(842,'vi','update','Di chuyển file data/ip/168.php','SUCCESS','',1,1583984463),(843,'vi','update','Di chuyển file data/ip/169.php','SUCCESS','',1,1583984463),(844,'vi','update','Di chuyển file data/ip/17.php','SUCCESS','',1,1583984463),(845,'vi','update','Di chuyển file data/ip/170.php','SUCCESS','',1,1583984463),(846,'vi','update','Di chuyển file data/ip/171.php','SUCCESS','',1,1583984463),(847,'vi','update','Di chuyển file data/ip/172.php','SUCCESS','',1,1583984463),(848,'vi','update','Di chuyển file data/ip/173.php','SUCCESS','',1,1583984463),(849,'vi','update','Di chuyển file data/ip/174.php','SUCCESS','',1,1583984463),(850,'vi','update','Di chuyển file data/ip/175.php','SUCCESS','',1,1583984463),(851,'vi','update','Di chuyển file data/ip/176.php','SUCCESS','',1,1583984463),(852,'vi','update','Di chuyển file data/ip/177.php','SUCCESS','',1,1583984463),(853,'vi','update','Di chuyển file data/ip/178.php','SUCCESS','',1,1583984463),(854,'vi','update','Di chuyển file data/ip/179.php','SUCCESS','',1,1583984463),(855,'vi','update','Di chuyển file data/ip/18.php','SUCCESS','',1,1583984463),(856,'vi','update','Di chuyển file data/ip/180.php','SUCCESS','',1,1583984463),(857,'vi','update','Di chuyển file data/ip/181.php','SUCCESS','',1,1583984463),(858,'vi','update','Di chuyển file data/ip/182.php','SUCCESS','',1,1583984463),(859,'vi','update','Di chuyển file data/ip/183.php','SUCCESS','',1,1583984463),(860,'vi','update','Di chuyển file data/ip/184.php','SUCCESS','',1,1583984463),(861,'vi','update','Di chuyển file data/ip/185.php','SUCCESS','',1,1583984463),(862,'vi','update','Di chuyển file data/ip/186.php','SUCCESS','',1,1583984463),(863,'vi','update','Di chuyển file data/ip/187.php','SUCCESS','',1,1583984463),(864,'vi','update','Di chuyển file data/ip/188.php','SUCCESS','',1,1583984463),(865,'vi','update','Di chuyển file data/ip/189.php','SUCCESS','',1,1583984463),(866,'vi','update','Di chuyển file data/ip/19.php','SUCCESS','',1,1583984463),(867,'vi','update','Di chuyển file data/ip/190.php','SUCCESS','',1,1583984463),(868,'vi','update','Di chuyển file data/ip/191.php','SUCCESS','',1,1583984463),(869,'vi','update','Di chuyển file data/ip/192.php','SUCCESS','',1,1583984463),(870,'vi','update','Di chuyển file data/ip/193.php','SUCCESS','',1,1583984463),(871,'vi','update','Di chuyển file data/ip/194.php','SUCCESS','',1,1583984463),(872,'vi','update','Di chuyển file data/ip/195.php','SUCCESS','',1,1583984463),(873,'vi','update','Di chuyển file data/ip/196.php','SUCCESS','',1,1583984463),(874,'vi','update','Di chuyển file data/ip/197.php','SUCCESS','',1,1583984463),(875,'vi','update','Di chuyển file data/ip/198.php','SUCCESS','',1,1583984463),(876,'vi','update','Di chuyển file data/ip/199.php','SUCCESS','',1,1583984463),(877,'vi','update','Di chuyển file data/ip/2.php','SUCCESS','',1,1583984463),(878,'vi','update','Di chuyển file data/ip/20.php','SUCCESS','',1,1583984463),(879,'vi','update','Di chuyển file data/ip/200.php','SUCCESS','',1,1583984463),(880,'vi','update','Di chuyển file data/ip/201.php','SUCCESS','',1,1583984463),(881,'vi','update','Di chuyển file data/ip/202.php','SUCCESS','',1,1583984463),(882,'vi','update','Di chuyển file data/ip/203.php','SUCCESS','',1,1583984463),(883,'vi','update','Di chuyển file data/ip/204.php','SUCCESS','',1,1583984463),(884,'vi','update','Di chuyển file data/ip/205.php','SUCCESS','',1,1583984463),(885,'vi','update','Di chuyển file data/ip/206.php','SUCCESS','',1,1583984463),(886,'vi','update','Di chuyển file data/ip/207.php','SUCCESS','',1,1583984463),(887,'vi','update','Di chuyển file data/ip/208.php','SUCCESS','',1,1583984463),(888,'vi','update','Di chuyển file data/ip/209.php','SUCCESS','',1,1583984463),(889,'vi','update','Di chuyển file data/ip/21.php','SUCCESS','',1,1583984463),(890,'vi','update','Di chuyển file data/ip/210.php','SUCCESS','',1,1583984463),(891,'vi','update','Di chuyển file data/ip/211.php','SUCCESS','',1,1583984463),(892,'vi','update','Di chuyển file data/ip/212.php','SUCCESS','',1,1583984463),(893,'vi','update','Di chuyển file data/ip/213.php','SUCCESS','',1,1583984463),(894,'vi','update','Di chuyển file data/ip/214.php','SUCCESS','',1,1583984463),(895,'vi','update','Di chuyển file data/ip/215.php','SUCCESS','',1,1583984463),(896,'vi','update','Di chuyển file data/ip/216.php','SUCCESS','',1,1583984463),(897,'vi','update','Di chuyển file data/ip/217.php','SUCCESS','',1,1583984463),(898,'vi','update','Di chuyển file data/ip/218.php','SUCCESS','',1,1583984463),(899,'vi','update','Di chuyển file data/ip/219.php','SUCCESS','',1,1583984463),(900,'vi','update','Di chuyển file data/ip/22.php','SUCCESS','',1,1583984463),(901,'vi','update','Di chuyển file data/ip/220.php','SUCCESS','',1,1583984463),(902,'vi','update','Di chuyển file data/ip/221.php','SUCCESS','',1,1583984463),(903,'vi','update','Di chuyển file data/ip/222.php','SUCCESS','',1,1583984463),(904,'vi','update','Di chuyển file data/ip/223.php','SUCCESS','',1,1583984463),(905,'vi','update','Di chuyển file data/ip/224.php','SUCCESS','',1,1583984463),(906,'vi','update','Di chuyển file data/ip/225.php','SUCCESS','',1,1583984463),(907,'vi','update','Di chuyển file data/ip/226.php','SUCCESS','',1,1583984463),(908,'vi','update','Di chuyển file data/ip/227.php','SUCCESS','',1,1583984463),(909,'vi','update','Di chuyển file data/ip/228.php','SUCCESS','',1,1583984463),(910,'vi','update','Di chuyển file data/ip/229.php','SUCCESS','',1,1583984463),(911,'vi','update','Di chuyển file data/ip/23.php','SUCCESS','',1,1583984463),(912,'vi','update','Di chuyển file data/ip/230.php','SUCCESS','',1,1583984463),(913,'vi','update','Di chuyển file data/ip/231.php','SUCCESS','',1,1583984463),(914,'vi','update','Di chuyển file data/ip/232.php','SUCCESS','',1,1583984463),(915,'vi','update','Di chuyển file data/ip/233.php','SUCCESS','',1,1583984463),(916,'vi','update','Di chuyển file data/ip/234.php','SUCCESS','',1,1583984463),(917,'vi','update','Di chuyển file data/ip/235.php','SUCCESS','',1,1583984463),(918,'vi','update','Di chuyển file data/ip/236.php','SUCCESS','',1,1583984463),(919,'vi','update','Di chuyển file data/ip/237.php','SUCCESS','',1,1583984463),(920,'vi','update','Di chuyển file data/ip/238.php','SUCCESS','',1,1583984463),(921,'vi','update','Di chuyển file data/ip/239.php','SUCCESS','',1,1583984463),(922,'vi','update','Di chuyển file data/ip/24.php','SUCCESS','',1,1583984463),(923,'vi','update','Di chuyển file data/ip/240.php','SUCCESS','',1,1583984463),(924,'vi','update','Di chuyển file data/ip/241.php','SUCCESS','',1,1583984463),(925,'vi','update','Di chuyển file data/ip/242.php','SUCCESS','',1,1583984463),(926,'vi','update','Di chuyển file data/ip/243.php','SUCCESS','',1,1583984463),(927,'vi','update','Di chuyển file data/ip/244.php','SUCCESS','',1,1583984463),(928,'vi','update','Di chuyển file data/ip/245.php','SUCCESS','',1,1583984463),(929,'vi','update','Di chuyển file data/ip/246.php','SUCCESS','',1,1583984463),(930,'vi','update','Di chuyển file data/ip/247.php','SUCCESS','',1,1583984463),(931,'vi','update','Di chuyển file data/ip/248.php','SUCCESS','',1,1583984463),(932,'vi','update','Di chuyển file data/ip/249.php','SUCCESS','',1,1583984463),(933,'vi','update','Di chuyển file data/ip/25.php','SUCCESS','',1,1583984463),(934,'vi','update','Di chuyển file data/ip/250.php','SUCCESS','',1,1583984463),(935,'vi','update','Di chuyển file data/ip/251.php','SUCCESS','',1,1583984463),(936,'vi','update','Di chuyển file data/ip/252.php','SUCCESS','',1,1583984463),(937,'vi','update','Di chuyển file data/ip/253.php','SUCCESS','',1,1583984463),(938,'vi','update','Di chuyển file data/ip/254.php','SUCCESS','',1,1583984463),(939,'vi','update','Di chuyển file data/ip/255.php','SUCCESS','',1,1583984463),(940,'vi','update','Di chuyển file data/ip/26.php','SUCCESS','',1,1583984463),(941,'vi','update','Di chuyển file data/ip/27.php','SUCCESS','',1,1583984463),(942,'vi','update','Di chuyển file data/ip/28.php','SUCCESS','',1,1583984463),(943,'vi','update','Di chuyển file data/ip/29.php','SUCCESS','',1,1583984463),(944,'vi','update','Di chuyển file data/ip/3.php','SUCCESS','',1,1583984463),(945,'vi','update','Di chuyển file data/ip/30.php','SUCCESS','',1,1583984463),(946,'vi','update','Di chuyển file data/ip/31.php','SUCCESS','',1,1583984463),(947,'vi','update','Di chuyển file data/ip/32.php','SUCCESS','',1,1583984463),(948,'vi','update','Di chuyển file data/ip/33.php','SUCCESS','',1,1583984463),(949,'vi','update','Di chuyển file data/ip/34.php','SUCCESS','',1,1583984463),(950,'vi','update','Di chuyển file data/ip/35.php','SUCCESS','',1,1583984463),(951,'vi','update','Di chuyển file data/ip/36.php','SUCCESS','',1,1583984463),(952,'vi','update','Di chuyển file data/ip/37.php','SUCCESS','',1,1583984463),(953,'vi','update','Di chuyển file data/ip/38.php','SUCCESS','',1,1583984463),(954,'vi','update','Di chuyển file data/ip/39.php','SUCCESS','',1,1583984463),(955,'vi','update','Di chuyển file data/ip/4.php','SUCCESS','',1,1583984463),(956,'vi','update','Di chuyển file data/ip/40.php','SUCCESS','',1,1583984463),(957,'vi','update','Di chuyển file data/ip/41.php','SUCCESS','',1,1583984463),(958,'vi','update','Di chuyển file data/ip/42.php','SUCCESS','',1,1583984463),(959,'vi','update','Di chuyển file data/ip/43.php','SUCCESS','',1,1583984463),(960,'vi','update','Di chuyển file data/ip/44.php','SUCCESS','',1,1583984463),(961,'vi','update','Di chuyển file data/ip/45.php','SUCCESS','',1,1583984463),(962,'vi','update','Di chuyển file data/ip/46.php','SUCCESS','',1,1583984463),(963,'vi','update','Di chuyển file data/ip/47.php','SUCCESS','',1,1583984463),(964,'vi','update','Di chuyển file data/ip/48.php','SUCCESS','',1,1583984463),(965,'vi','update','Di chuyển file data/ip/49.php','SUCCESS','',1,1583984463),(966,'vi','update','Di chuyển file data/ip/5.php','SUCCESS','',1,1583984463),(967,'vi','update','Di chuyển file data/ip/50.php','SUCCESS','',1,1583984463),(968,'vi','update','Di chuyển file data/ip/51.php','SUCCESS','',1,1583984463),(969,'vi','update','Di chuyển file data/ip/52.php','SUCCESS','',1,1583984463),(970,'vi','update','Di chuyển file data/ip/53.php','SUCCESS','',1,1583984463),(971,'vi','update','Di chuyển file data/ip/54.php','SUCCESS','',1,1583984463),(972,'vi','update','Di chuyển file data/ip/55.php','SUCCESS','',1,1583984463),(973,'vi','update','Di chuyển file data/ip/56.php','SUCCESS','',1,1583984463),(974,'vi','update','Di chuyển file data/ip/57.php','SUCCESS','',1,1583984463),(975,'vi','update','Di chuyển file data/ip/58.php','SUCCESS','',1,1583984463),(976,'vi','update','Di chuyển file data/ip/59.php','SUCCESS','',1,1583984463),(977,'vi','update','Di chuyển file data/ip/6.php','SUCCESS','',1,1583984463),(978,'vi','update','Di chuyển file data/ip/60.php','SUCCESS','',1,1583984463),(979,'vi','update','Di chuyển file data/ip/61.php','SUCCESS','',1,1583984463),(980,'vi','update','Di chuyển file data/ip/62.php','SUCCESS','',1,1583984463),(981,'vi','update','Di chuyển file data/ip/63.php','SUCCESS','',1,1583984463),(982,'vi','update','Di chuyển file data/ip/64.php','SUCCESS','',1,1583984463),(983,'vi','update','Di chuyển file data/ip/65.php','SUCCESS','',1,1583984463),(984,'vi','update','Di chuyển file data/ip/66.php','SUCCESS','',1,1583984463),(985,'vi','update','Di chuyển file data/ip/67.php','SUCCESS','',1,1583984463),(986,'vi','update','Di chuyển file data/ip/68.php','SUCCESS','',1,1583984463),(987,'vi','update','Di chuyển file data/ip/69.php','SUCCESS','',1,1583984463),(988,'vi','update','Di chuyển file data/ip/7.php','SUCCESS','',1,1583984463),(989,'vi','update','Di chuyển file data/ip/70.php','SUCCESS','',1,1583984463),(990,'vi','update','Di chuyển file data/ip/71.php','SUCCESS','',1,1583984463),(991,'vi','update','Di chuyển file data/ip/72.php','SUCCESS','',1,1583984463),(992,'vi','update','Di chuyển file data/ip/73.php','SUCCESS','',1,1583984463),(993,'vi','update','Di chuyển file data/ip/74.php','SUCCESS','',1,1583984463),(994,'vi','update','Di chuyển file data/ip/75.php','SUCCESS','',1,1583984463),(995,'vi','update','Di chuyển file data/ip/76.php','SUCCESS','',1,1583984463),(996,'vi','update','Di chuyển file data/ip/77.php','SUCCESS','',1,1583984463),(997,'vi','update','Di chuyển file data/ip/78.php','SUCCESS','',1,1583984463),(998,'vi','update','Di chuyển file data/ip/79.php','SUCCESS','',1,1583984463),(999,'vi','update','Di chuyển file data/ip/8.php','SUCCESS','',1,1583984463),(1000,'vi','update','Di chuyển file data/ip/80.php','SUCCESS','',1,1583984463),(1001,'vi','update','Di chuyển file data/ip/81.php','SUCCESS','',1,1583984463),(1002,'vi','update','Di chuyển file data/ip/82.php','SUCCESS','',1,1583984463),(1003,'vi','update','Di chuyển file data/ip/83.php','SUCCESS','',1,1583984463),(1004,'vi','update','Di chuyển file data/ip/84.php','SUCCESS','',1,1583984463),(1005,'vi','update','Di chuyển file data/ip/85.php','SUCCESS','',1,1583984463),(1006,'vi','update','Di chuyển file data/ip/86.php','SUCCESS','',1,1583984463),(1007,'vi','update','Di chuyển file data/ip/87.php','SUCCESS','',1,1583984463),(1008,'vi','update','Di chuyển file data/ip/88.php','SUCCESS','',1,1583984463),(1009,'vi','update','Di chuyển file data/ip/89.php','SUCCESS','',1,1583984463),(1010,'vi','update','Di chuyển file data/ip/9.php','SUCCESS','',1,1583984463),(1011,'vi','update','Di chuyển file data/ip/90.php','SUCCESS','',1,1583984463),(1012,'vi','update','Di chuyển file data/ip/91.php','SUCCESS','',1,1583984463),(1013,'vi','update','Di chuyển file data/ip/92.php','SUCCESS','',1,1583984463),(1014,'vi','update','Di chuyển file data/ip/93.php','SUCCESS','',1,1583984463),(1015,'vi','update','Di chuyển file data/ip/94.php','SUCCESS','',1,1583984463),(1016,'vi','update','Di chuyển file data/ip/95.php','SUCCESS','',1,1583984463),(1017,'vi','update','Di chuyển file data/ip/96.php','SUCCESS','',1,1583984463),(1018,'vi','update','Di chuyển file data/ip/97.php','SUCCESS','',1,1583984463),(1019,'vi','update','Di chuyển file data/ip/98.php','SUCCESS','',1,1583984463),(1020,'vi','update','Di chuyển file data/ip/99.php','SUCCESS','',1,1583984463),(1021,'vi','update','Di chuyển file data/ip6/2000.php','SUCCESS','',1,1583984463),(1022,'vi','update','Di chuyển file data/ip6/2001.php','SUCCESS','',1,1583984463),(1023,'vi','update','Di chuyển file data/ip6/2003.php','SUCCESS','',1,1583984463),(1024,'vi','update','Di chuyển file data/ip6/2067.php','SUCCESS','',1,1583984463),(1025,'vi','update','Di chuyển file data/ip6/2160.php','SUCCESS','',1,1583984463),(1026,'vi','update','Di chuyển file data/ip6/2400.php','SUCCESS','',1,1583984463),(1027,'vi','update','Di chuyển file data/ip6/2401.php','SUCCESS','',1,1583984463),(1028,'vi','update','Di chuyển file data/ip6/2402.php','SUCCESS','',1,1583984463),(1029,'vi','update','Di chuyển file data/ip6/2403.php','SUCCESS','',1,1583984463),(1030,'vi','update','Di chuyển file data/ip6/2404.php','SUCCESS','',1,1583984463),(1031,'vi','update','Di chuyển file data/ip6/2405.php','SUCCESS','',1,1583984463),(1032,'vi','update','Di chuyển file data/ip6/2406.php','SUCCESS','',1,1583984463),(1033,'vi','update','Di chuyển file data/ip6/2407.php','SUCCESS','',1,1583984463),(1034,'vi','update','Di chuyển file data/ip6/2408.php','SUCCESS','',1,1583984463),(1035,'vi','update','Di chuyển file data/ip6/2409.php','SUCCESS','',1,1583984463),(1036,'vi','update','Di chuyển file data/ip6/240a.php','SUCCESS','',1,1583984463),(1037,'vi','update','Di chuyển file data/ip6/240b.php','SUCCESS','',1,1583984463),(1038,'vi','update','Di chuyển file data/ip6/240c.php','SUCCESS','',1,1583984463),(1039,'vi','update','Di chuyển file data/ip6/240d.php','SUCCESS','',1,1583984463),(1040,'vi','update','Di chuyển file data/ip6/240e.php','SUCCESS','',1,1583984463),(1041,'vi','update','Di chuyển file data/ip6/240f.php','SUCCESS','',1,1583984463),(1042,'vi','update','Di chuyển file data/ip6/2600.php','SUCCESS','',1,1583984463),(1043,'vi','update','Di chuyển file data/ip6/2601.php','SUCCESS','',1,1583984463),(1044,'vi','update','Di chuyển file data/ip6/2602.php','SUCCESS','',1,1583984463),(1045,'vi','update','Di chuyển file data/ip6/2603.php','SUCCESS','',1,1583984463),(1046,'vi','update','Di chuyển file data/ip6/2604.php','SUCCESS','',1,1583984463),(1047,'vi','update','Di chuyển file data/ip6/2605.php','SUCCESS','',1,1583984463),(1048,'vi','update','Di chuyển file data/ip6/2606.php','SUCCESS','',1,1583984463),(1049,'vi','update','Di chuyển file data/ip6/2607.php','SUCCESS','',1,1583984463),(1050,'vi','update','Di chuyển file data/ip6/2608.php','SUCCESS','',1,1583984463),(1051,'vi','update','Di chuyển file data/ip6/2609.php','SUCCESS','',1,1583984463),(1052,'vi','update','Di chuyển file data/ip6/260c.php','SUCCESS','',1,1583984463),(1053,'vi','update','Di chuyển file data/ip6/260f.php','SUCCESS','',1,1583984463),(1054,'vi','update','Di chuyển file data/ip6/2610.php','SUCCESS','',1,1583984463),(1055,'vi','update','Di chuyển file data/ip6/2620.php','SUCCESS','',1,1583984463),(1056,'vi','update','Di chuyển file data/ip6/2800.php','SUCCESS','',1,1583984463),(1057,'vi','update','Di chuyển file data/ip6/2801.php','SUCCESS','',1,1583984463),(1058,'vi','update','Di chuyển file data/ip6/2802.php','SUCCESS','',1,1583984463),(1059,'vi','update','Di chuyển file data/ip6/2803.php','SUCCESS','',1,1583984463),(1060,'vi','update','Di chuyển file data/ip6/2804.php','SUCCESS','',1,1583984463),(1061,'vi','update','Di chuyển file data/ip6/2806.php','SUCCESS','',1,1583984463),(1062,'vi','update','Di chuyển file data/ip6/2a00.php','SUCCESS','',1,1583984463),(1063,'vi','update','Di chuyển file data/ip6/2a01.php','SUCCESS','',1,1583984463),(1064,'vi','update','Di chuyển file data/ip6/2a02.php','SUCCESS','',1,1583984463),(1065,'vi','update','Di chuyển file data/ip6/2a03.php','SUCCESS','',1,1583984463),(1066,'vi','update','Di chuyển file data/ip6/2a04.php','SUCCESS','',1,1583984463),(1067,'vi','update','Di chuyển file data/ip6/2a05.php','SUCCESS','',1,1583984463),(1068,'vi','update','Di chuyển file data/ip6/2a06.php','SUCCESS','',1,1583984463),(1069,'vi','update','Di chuyển file data/ip6/2a07.php','SUCCESS','',1,1583984463),(1070,'vi','update','Di chuyển file data/ip6/2a08.php','SUCCESS','',1,1583984463),(1071,'vi','update','Di chuyển file data/ip6/2a0a.php','SUCCESS','',1,1583984463),(1072,'vi','update','Di chuyển file data/ip6/2a0b.php','SUCCESS','',1,1583984463),(1073,'vi','update','Di chuyển file data/ip6/2a0c.php','SUCCESS','',1,1583984463),(1074,'vi','update','Di chuyển file data/ip6/2a0d.php','SUCCESS','',1,1583984463),(1075,'vi','update','Di chuyển file data/ip6/2c0e.php','SUCCESS','',1,1583984463),(1076,'vi','update','Di chuyển file data/ip6/2c0f.php','SUCCESS','',1,1583984463),(1077,'vi','update','Di chuyển file data/ip6/600.php','SUCCESS','',1,1583984463),(1078,'vi','update','Di chuyển file includes/action_mysql.php','SUCCESS','',1,1583984463),(1079,'vi','update','Di chuyển file includes/constants.php','SUCCESS','',1,1583984463),(1080,'vi','update','Di chuyển file includes/core/admin_access.php','SUCCESS','',1,1583984463),(1081,'vi','update','Di chuyển file includes/core/admin_functions.php','SUCCESS','',1,1583984463),(1082,'vi','update','Di chuyển file includes/core/admin_login.php','SUCCESS','',1,1583984463),(1083,'vi','update','Di chuyển file includes/core/admin_logout.php','SUCCESS','',1,1583984463),(1084,'vi','update','Di chuyển file includes/core/captcha.php','SUCCESS','',1,1583984463),(1085,'vi','update','Di chuyển file includes/core/cronjobs.php','SUCCESS','',1,1583984463),(1086,'vi','update','Di chuyển file includes/core/flood_blocker.php','SUCCESS','',1,1583984463),(1087,'vi','update','Di chuyển file includes/core/is_user.php','SUCCESS','',1,1583984463),(1088,'vi','update','Di chuyển file includes/core/phpinfo.php','SUCCESS','',1,1583984463),(1089,'vi','update','Di chuyển file includes/core/theme_functions.php','SUCCESS','',1,1583984463),(1090,'vi','update','Di chuyển file includes/core/user_functions.php','SUCCESS','',1,1583984463),(1091,'vi','update','Di chuyển file includes/field_not_allow.php','SUCCESS','',1,1583984463),(1092,'vi','update','Di chuyển file includes/footer.php','SUCCESS','',1,1583984463),(1093,'vi','update','Di chuyển file includes/functions.php','SUCCESS','',1,1583984463),(1094,'vi','update','Di chuyển file includes/ini/mime.ini','SUCCESS','',1,1583984463),(1095,'vi','update','Di chuyển file includes/ini.php','SUCCESS','',1,1583984463),(1096,'vi','update','Di chuyển file includes/language/en/admin_authors.php','SUCCESS','',1,1583984463),(1097,'vi','update','Di chuyển file includes/language/en/admin_extensions.php','SUCCESS','',1,1583984463),(1098,'vi','update','Di chuyển file includes/language/en/admin_language.php','SUCCESS','',1,1583984463),(1099,'vi','update','Di chuyển file includes/language/en/admin_modules.php','SUCCESS','',1,1583984463),(1100,'vi','update','Di chuyển file includes/language/en/admin_seotools.php','SUCCESS','',1,1583984463),(1101,'vi','update','Di chuyển file includes/language/en/admin_settings.php','SUCCESS','',1,1583984463),(1102,'vi','update','Di chuyển file includes/language/en/admin_themes.php','SUCCESS','',1,1583984463),(1103,'vi','update','Di chuyển file includes/language/en/admin_upload.php','SUCCESS','',1,1583984463),(1104,'vi','update','Di chuyển file includes/language/en/admin_webtools.php','SUCCESS','',1,1583984463),(1105,'vi','update','Di chuyển file includes/language/en/global.php','SUCCESS','',1,1583984463),(1106,'vi','update','Di chuyển file includes/language/en/install.php','SUCCESS','',1,1583984463),(1107,'vi','update','Di chuyển file includes/language/fr/admin_authors.php','SUCCESS','',1,1583984463),(1108,'vi','update','Di chuyển file includes/language/fr/admin_extensions.php','SUCCESS','',1,1583984463),(1109,'vi','update','Di chuyển file includes/language/fr/admin_language.php','SUCCESS','',1,1583984463),(1110,'vi','update','Di chuyển file includes/language/fr/admin_modules.php','SUCCESS','',1,1583984463),(1111,'vi','update','Di chuyển file includes/language/fr/admin_seotools.php','SUCCESS','',1,1583984463),(1112,'vi','update','Di chuyển file includes/language/fr/admin_settings.php','SUCCESS','',1,1583984463),(1113,'vi','update','Di chuyển file includes/language/fr/admin_themes.php','SUCCESS','',1,1583984463),(1114,'vi','update','Di chuyển file includes/language/fr/admin_upload.php','SUCCESS','',1,1583984463),(1115,'vi','update','Di chuyển file includes/language/fr/admin_webtools.php','SUCCESS','',1,1583984463),(1116,'vi','update','Di chuyển file includes/language/fr/global.php','SUCCESS','',1,1583984463),(1117,'vi','update','Di chuyển file includes/language/fr/install.php','SUCCESS','',1,1583984463),(1118,'vi','update','Di chuyển file includes/language/vi/admin_authors.php','SUCCESS','',1,1583984463),(1119,'vi','update','Di chuyển file includes/language/vi/admin_extensions.php','SUCCESS','',1,1583984463),(1120,'vi','update','Di chuyển file includes/language/vi/admin_language.php','SUCCESS','',1,1583984463),(1121,'vi','update','Di chuyển file includes/language/vi/admin_modules.php','SUCCESS','',1,1583984463),(1122,'vi','update','Di chuyển file includes/language/vi/admin_seotools.php','SUCCESS','',1,1583984463),(1123,'vi','update','Di chuyển file includes/language/vi/admin_settings.php','SUCCESS','',1,1583984463),(1124,'vi','update','Di chuyển file includes/language/vi/admin_themes.php','SUCCESS','',1,1583984463),(1125,'vi','update','Di chuyển file includes/language/vi/admin_upload.php','SUCCESS','',1,1583984463),(1126,'vi','update','Di chuyển file includes/language/vi/admin_webtools.php','SUCCESS','',1,1583984463),(1127,'vi','update','Di chuyển file includes/language/vi/global.php','SUCCESS','',1,1583984463),(1128,'vi','update','Di chuyển file includes/language/vi/install.php','SUCCESS','',1,1583984463),(1129,'vi','update','Di chuyển file includes/mainfile.php','SUCCESS','',1,1583984463),(1130,'vi','update','Di chuyển file includes/plugin/cdn_js_css_image.php','SUCCESS','',1,1583984463),(1131,'vi','update','Di chuyển file includes/plugin/china_censorship.ini','SUCCESS','',1,1583984463),(1132,'vi','update','Di chuyển file includes/plugin/china_censorship.php','SUCCESS','',1,1583984463),(1133,'vi','update','Di chuyển file includes/plugin/mysql_master_slave.php','SUCCESS','',1,1583984463),(1134,'vi','update','Di chuyển file includes/request_uri.php','SUCCESS','',1,1583984463),(1135,'vi','update','Di chuyển file includes/utf8/utf8_functions.php','SUCCESS','',1,1583984463),(1136,'vi','update','Di chuyển file includes/xtemplate.class.php','SUCCESS','',1,1583984463),(1137,'vi','update','Di chuyển file index.php','SUCCESS','',1,1583984463),(1138,'vi','update','Di chuyển file install/action_mysql.php','SUCCESS','',1,1583984463),(1139,'vi','update','Di chuyển file install/config.php','SUCCESS','',1,1583984463),(1140,'vi','update','Di chuyển file install/data.php','SUCCESS','',1,1583984463),(1141,'vi','update','Di chuyển file install/data_by_lang.php','SUCCESS','',1,1583984463),(1142,'vi','update','Di chuyển file install/index.php','SUCCESS','',1,1583984463),(1143,'vi','update','Di chuyển file install/ini.php','SUCCESS','',1,1583984463),(1144,'vi','update','Di chuyển file install/mainfile.php','SUCCESS','',1,1583984463),(1145,'vi','update','Di chuyển file install/tpl/step1.tpl','SUCCESS','',1,1583984463),(1146,'vi','update','Di chuyển file install/tpl/step4.tpl','SUCCESS','',1,1583984463),(1147,'vi','update','Di chuyển file install/tpl/step6.tpl','SUCCESS','',1,1583984463),(1148,'vi','update','Di chuyển file install/update.php','SUCCESS','',1,1583984463),(1149,'vi','update','Di chuyển file modules/banners/admin/add_banner.php','SUCCESS','',1,1583984463),(1150,'vi','update','Di chuyển file modules/banners/admin/b_list.php','SUCCESS','',1,1583984463),(1151,'vi','update','Di chuyển file modules/banners/admin/banners_list.php','SUCCESS','',1,1583984463),(1152,'vi','update','Di chuyển file modules/banners/admin/edit_banner.php','SUCCESS','',1,1583984463),(1153,'vi','update','Di chuyển file modules/banners/admin/info_pl.php','SUCCESS','',1,1583984463),(1154,'vi','update','Di chuyển file modules/banners/admin/main.php','SUCCESS','',1,1583984463),(1155,'vi','update','Di chuyển file modules/banners/admin.functions.php','SUCCESS','',1,1583984463),(1156,'vi','update','Di chuyển file modules/banners/blocks/global.banners.php','SUCCESS','',1,1583984463),(1157,'vi','update','Di chuyển file modules/banners/forms/form_random_one.php','SUCCESS','',1,1583984463),(1158,'vi','update','Di chuyển file modules/banners/funcs/click.php','SUCCESS','',1,1583984463),(1159,'vi','update','Di chuyển file modules/banners/funcs/main.php','SUCCESS','',1,1583984463),(1160,'vi','update','Di chuyển file modules/banners/language/admin_en.php','SUCCESS','',1,1583984463),(1161,'vi','update','Di chuyển file modules/banners/language/admin_fr.php','SUCCESS','',1,1583984463),(1162,'vi','update','Di chuyển file modules/banners/language/admin_vi.php','SUCCESS','',1,1583984463),(1163,'vi','update','Di chuyển file modules/banners/language/en.php','SUCCESS','',1,1583984463),(1164,'vi','update','Di chuyển file modules/banners/language/fr.php','SUCCESS','',1,1583984463),(1165,'vi','update','Di chuyển file modules/banners/language/vi.php','SUCCESS','',1,1583984463),(1166,'vi','update','Di chuyển file modules/banners/version.php','SUCCESS','',1,1583984463),(1167,'vi','update','Di chuyển file modules/comment/admin/del.php','SUCCESS','',1,1583984463),(1168,'vi','update','Di chuyển file modules/comment/admin/main.php','SUCCESS','',1,1583984463),(1169,'vi','update','Di chuyển file modules/comment/comment.php','SUCCESS','',1,1583984463),(1170,'vi','update','Di chuyển file modules/comment/funcs/main.php','SUCCESS','',1,1583984463),(1171,'vi','update','Di chuyển file modules/comment/language/en.php','SUCCESS','',1,1583984463),(1172,'vi','update','Di chuyển file modules/comment/language/fr.php','SUCCESS','',1,1583984463),(1173,'vi','update','Di chuyển file modules/comment/language/vi.php','SUCCESS','',1,1583984463),(1174,'vi','update','Di chuyển file modules/comment/version.php','SUCCESS','',1,1583984463),(1175,'vi','update','Di chuyển file modules/contact/action_mysql.php','SUCCESS','',1,1583984463),(1176,'vi','update','Di chuyển file modules/contact/admin/config.php','SUCCESS','',1,1583984463),(1177,'vi','update','Di chuyển file modules/contact/admin/department.php','SUCCESS','',1,1583984463),(1178,'vi','update','Di chuyển file modules/contact/admin/main.php','SUCCESS','',1,1583984463),(1179,'vi','update','Di chuyển file modules/contact/admin/row.php','SUCCESS','',1,1583984463),(1180,'vi','update','Di chuyển file modules/contact/admin/supporter-content.php','SUCCESS','',1,1583984463),(1181,'vi','update','Di chuyển file modules/contact/admin.functions.php','SUCCESS','',1,1583984463),(1182,'vi','update','Di chuyển file modules/contact/admin.menu.php','SUCCESS','',1,1583984463),(1183,'vi','update','Di chuyển file modules/contact/funcs/main.php','SUCCESS','',1,1583984463),(1184,'vi','update','Di chuyển file modules/contact/language/admin_en.php','SUCCESS','',1,1583984463),(1185,'vi','update','Di chuyển file modules/contact/language/admin_fr.php','SUCCESS','',1,1583984463),(1186,'vi','update','Di chuyển file modules/contact/language/admin_vi.php','SUCCESS','',1,1583984463),(1187,'vi','update','Di chuyển file modules/contact/language/data_en.php','SUCCESS','',1,1583984463),(1188,'vi','update','Di chuyển file modules/contact/language/data_fr.php','SUCCESS','',1,1583984463),(1189,'vi','update','Di chuyển file modules/contact/language/data_vi.php','SUCCESS','',1,1583984463),(1190,'vi','update','Di chuyển file modules/contact/theme.php','SUCCESS','',1,1583984463),(1191,'vi','update','Di chuyển file modules/contact/version.php','SUCCESS','',1,1583984463),(1192,'vi','update','Di chuyển file modules/feeds/admin.functions.php','SUCCESS','',1,1583984463),(1193,'vi','update','Di chuyển file modules/feeds/funcs/main.php','SUCCESS','',1,1583984463),(1194,'vi','update','Di chuyển file modules/feeds/version.php','SUCCESS','',1,1583984463),(1195,'vi','update','Di chuyển file modules/freecontent/admin/manager.php','SUCCESS','',1,1583984463),(1196,'vi','update','Di chuyển file modules/freecontent/language/admin_en.php','SUCCESS','',1,1583984463),(1197,'vi','update','Di chuyển file modules/freecontent/language/admin_fr.php','SUCCESS','',1,1583984463),(1198,'vi','update','Di chuyển file modules/freecontent/language/admin_vi.php','SUCCESS','',1,1583984463),(1199,'vi','update','Di chuyển file modules/freecontent/version.php','SUCCESS','',1,1583984463),(1200,'vi','update','Di chuyển file modules/menu/version.php','SUCCESS','',1,1583984463),(1201,'vi','update','Di chuyển file modules/news/action_mysql.php','SUCCESS','',1,1583984463),(1202,'vi','update','Di chuyển file modules/news/admin/addtotopics.php','SUCCESS','',1,1583984463),(1203,'vi','update','Di chuyển file modules/news/admin/content.php','SUCCESS','',1,1583984463),(1204,'vi','update','Di chuyển file modules/news/admin/groups.php','SUCCESS','',1,1583984463),(1205,'vi','update','Di chuyển file modules/news/admin/main.php','SUCCESS','',1,1583984463),(1206,'vi','update','Di chuyển file modules/news/admin/setting.php','SUCCESS','',1,1583984463),(1207,'vi','update','Di chuyển file modules/news/admin/sources.php','SUCCESS','',1,1583984463),(1208,'vi','update','Di chuyển file modules/news/admin/tags.php','SUCCESS','',1,1583984463),(1209,'vi','update','Di chuyển file modules/news/admin/tagsajax.php','SUCCESS','',1,1583984463),(1210,'vi','update','Di chuyển file modules/news/admin/topics.php','SUCCESS','',1,1583984463),(1211,'vi','update','Di chuyển file modules/news/admin.functions.php','SUCCESS','',1,1583984463),(1212,'vi','update','Di chuyển file modules/news/blocks/module.block_headline.php','SUCCESS','',1,1583984463),(1213,'vi','update','Di chuyển file modules/news/blocks/module.block_news.php','SUCCESS','',1,1583984463),(1214,'vi','update','Di chuyển file modules/news/funcs/content.php','SUCCESS','',1,1583984463),(1215,'vi','update','Di chuyển file modules/news/funcs/detail.php','SUCCESS','',1,1583984463),(1216,'vi','update','Di chuyển file modules/news/funcs/main.php','SUCCESS','',1,1583984463),(1217,'vi','update','Di chuyển file modules/news/funcs/print.php','SUCCESS','',1,1583984463),(1218,'vi','update','Di chuyển file modules/news/funcs/rss.php','SUCCESS','',1,1583984463),(1219,'vi','update','Di chuyển file modules/news/funcs/sendmail.php','SUCCESS','',1,1583984463),(1220,'vi','update','Di chuyển file modules/news/funcs/sitemap.php','SUCCESS','',1,1583984463),(1221,'vi','update','Di chuyển file modules/news/funcs/tag.php','SUCCESS','',1,1583984463),(1222,'vi','update','Di chuyển file modules/news/functions.php','SUCCESS','',1,1583984463),(1223,'vi','update','Di chuyển file modules/news/global.functions.php','SUCCESS','',1,1583984463),(1224,'vi','update','Di chuyển file modules/news/language/admin_en.php','SUCCESS','',1,1583984463),(1225,'vi','update','Di chuyển file modules/news/language/admin_fr.php','SUCCESS','',1,1583984463),(1226,'vi','update','Di chuyển file modules/news/language/admin_vi.php','SUCCESS','',1,1583984463),(1227,'vi','update','Di chuyển file modules/news/language/data_en.php','SUCCESS','',1,1583984463),(1228,'vi','update','Di chuyển file modules/news/language/data_fr.php','SUCCESS','',1,1583984463),(1229,'vi','update','Di chuyển file modules/news/language/data_vi.php','SUCCESS','',1,1583984463),(1230,'vi','update','Di chuyển file modules/news/language/en.php','SUCCESS','',1,1583984463),(1231,'vi','update','Di chuyển file modules/news/language/fr.php','SUCCESS','',1,1583984463),(1232,'vi','update','Di chuyển file modules/news/language/vi.php','SUCCESS','',1,1583984463),(1233,'vi','update','Di chuyển file modules/news/theme.php','SUCCESS','',1,1583984463),(1234,'vi','update','Di chuyển file modules/news/version.php','SUCCESS','',1,1583984463),(1235,'vi','update','Di chuyển file modules/page/action_mysql.php','SUCCESS','',1,1583984463),(1236,'vi','update','Di chuyển file modules/page/admin/content.php','SUCCESS','',1,1583984463),(1237,'vi','update','Di chuyển file modules/page/admin/del.php','SUCCESS','',1,1583984463),(1238,'vi','update','Di chuyển file modules/page/funcs/main.php','SUCCESS','',1,1583984463),(1239,'vi','update','Di chuyển file modules/page/funcs/rss.php','SUCCESS','',1,1583984463),(1240,'vi','update','Di chuyển file modules/page/language/admin_en.php','SUCCESS','',1,1583984463),(1241,'vi','update','Di chuyển file modules/page/language/admin_fr.php','SUCCESS','',1,1583984463),(1242,'vi','update','Di chuyển file modules/page/language/admin_vi.php','SUCCESS','',1,1583984463),(1243,'vi','update','Di chuyển file modules/page/language/data_en.php','SUCCESS','',1,1583984463),(1244,'vi','update','Di chuyển file modules/page/language/data_fr.php','SUCCESS','',1,1583984463),(1245,'vi','update','Di chuyển file modules/page/language/data_vi.php','SUCCESS','',1,1583984463),(1246,'vi','update','Di chuyển file modules/page/theme.php','SUCCESS','',1,1583984463),(1247,'vi','update','Di chuyển file modules/page/version.php','SUCCESS','',1,1583984463),(1248,'vi','update','Di chuyển file modules/seek/version.php','SUCCESS','',1,1583984463),(1249,'vi','update','Di chuyển file modules/statistics/admin/cleardata.php','SUCCESS','',1,1583984463),(1250,'vi','update','Di chuyển file modules/statistics/admin.functions.php','SUCCESS','',1,1583984463),(1251,'vi','update','Di chuyển file modules/statistics/admin.menu.php','SUCCESS','',1,1583984463),(1252,'vi','update','Di chuyển file modules/statistics/language/admin_en.php','SUCCESS','',1,1583984463),(1253,'vi','update','Di chuyển file modules/statistics/language/admin_fr.php','SUCCESS','',1,1583984463),(1254,'vi','update','Di chuyển file modules/statistics/language/admin_vi.php','SUCCESS','',1,1583984463),(1255,'vi','update','Di chuyển file modules/statistics/version.php','SUCCESS','',1,1583984463),(1256,'vi','update','Di chuyển file modules/two-step-verification/version.php','SUCCESS','',1,1583984463),(1257,'vi','update','Di chuyển file modules/users/action_mysql.php','SUCCESS','',1,1583984463),(1258,'vi','update','Di chuyển file modules/users/admin/authors.php','SUCCESS','',1,1583984463),(1259,'vi','update','Di chuyển file modules/users/admin/config.php','SUCCESS','',1,1583984463),(1260,'vi','update','Di chuyển file modules/users/admin/del.php','SUCCESS','',1,1583984463),(1261,'vi','update','Di chuyển file modules/users/admin/edit.php','SUCCESS','',1,1583984463),(1262,'vi','update','Di chuyển file modules/users/admin/edit_2step.php','SUCCESS','',1,1583984463),(1263,'vi','update','Di chuyển file modules/users/admin/editcensor.php','SUCCESS','',1,1583984463),(1264,'vi','update','Di chuyển file modules/users/admin/fields.php','SUCCESS','',1,1583984463),(1265,'vi','update','Di chuyển file modules/users/admin/groups.php','SUCCESS','',1,1583984463),(1266,'vi','update','Di chuyển file modules/users/admin/main.php','SUCCESS','',1,1583984463),(1267,'vi','update','Di chuyển file modules/users/admin/setofficial.php','SUCCESS','',1,1583984463),(1268,'vi','update','Di chuyển file modules/users/admin/user_add.php','SUCCESS','',1,1583984463),(1269,'vi','update','Di chuyển file modules/users/admin/user_waiting.php','SUCCESS','',1,1583984463),(1270,'vi','update','Di chuyển file modules/users/admin/user_waiting_remail.php','SUCCESS','',1,1583984463),(1271,'vi','update','Di chuyển file modules/users/admin.functions.php','SUCCESS','',1,1583984463),(1272,'vi','update','Di chuyển file modules/users/admin.menu.php','SUCCESS','',1,1583984463),(1273,'vi','update','Di chuyển file modules/users/blocks/global.login.php','SUCCESS','',1,1583984463),(1274,'vi','update','Di chuyển file modules/users/blocks/global.user_button.php','SUCCESS','',1,1583984463),(1275,'vi','update','Di chuyển file modules/users/fields.check.php','SUCCESS','',1,1583984463),(1276,'vi','update','Di chuyển file modules/users/funcs/active.php','SUCCESS','',1,1583984463),(1277,'vi','update','Di chuyển file modules/users/funcs/editinfo.php','SUCCESS','',1,1583984463),(1278,'vi','update','Di chuyển file modules/users/funcs/groups.php','SUCCESS','',1,1583984463),(1279,'vi','update','Di chuyển file modules/users/funcs/login.php','SUCCESS','',1,1583984463),(1280,'vi','update','Di chuyển file modules/users/funcs/logout.php','SUCCESS','',1,1583984463),(1281,'vi','update','Di chuyển file modules/users/funcs/lostactivelink.php','SUCCESS','',1,1583984463),(1282,'vi','update','Di chuyển file modules/users/funcs/lostpass.php','SUCCESS','',1,1583984463),(1283,'vi','update','Di chuyển file modules/users/funcs/memberlist.php','SUCCESS','',1,1583984463),(1284,'vi','update','Di chuyển file modules/users/funcs/register.php','SUCCESS','',1,1583984463),(1285,'vi','update','Di chuyển file modules/users/functions.php','SUCCESS','',1,1583984463),(1286,'vi','update','Di chuyển file modules/users/global.functions.php','SUCCESS','',1,1583984463),(1287,'vi','update','Di chuyển file modules/users/language/admin_en.php','SUCCESS','',1,1583984463),(1288,'vi','update','Di chuyển file modules/users/language/admin_fr.php','SUCCESS','',1,1583984463),(1289,'vi','update','Di chuyển file modules/users/language/admin_vi.php','SUCCESS','',1,1583984463),(1290,'vi','update','Di chuyển file modules/users/language/en.php','SUCCESS','',1,1583984463),(1291,'vi','update','Di chuyển file modules/users/language/fr.php','SUCCESS','',1,1583984463),(1292,'vi','update','Di chuyển file modules/users/language/vi.php','SUCCESS','',1,1583984463),(1293,'vi','update','Di chuyển file modules/users/login/oauth-facebook.php','SUCCESS','',1,1583984463),(1294,'vi','update','Di chuyển file modules/users/login/oauth-google.php','SUCCESS','',1,1583984463),(1295,'vi','update','Di chuyển file modules/users/notification.php','SUCCESS','',1,1583984463),(1296,'vi','update','Di chuyển file modules/users/siteinfo.php','SUCCESS','',1,1583984463),(1297,'vi','update','Di chuyển file modules/users/theme.php','SUCCESS','',1,1583984463),(1298,'vi','update','Di chuyển file modules/users/version.php','SUCCESS','',1,1583984463),(1299,'vi','update','Di chuyển file modules/voting/funcs/main.php','SUCCESS','',1,1583984463),(1300,'vi','update','Di chuyển file modules/voting/language/admin_en.php','SUCCESS','',1,1583984463),(1301,'vi','update','Di chuyển file modules/voting/language/admin_fr.php','SUCCESS','',1,1583984463),(1302,'vi','update','Di chuyển file modules/voting/language/admin_vi.php','SUCCESS','',1,1583984463),(1303,'vi','update','Di chuyển file modules/voting/version.php','SUCCESS','',1,1583984463),(1304,'vi','update','Di chuyển file robots.php','SUCCESS','',1,1583984463),(1305,'vi','update','Di chuyển file themes/admin_default/css/settings.css','SUCCESS','',1,1583984463),(1306,'vi','update','Di chuyển file themes/admin_default/css/style.css','SUCCESS','',1,1583984463),(1307,'vi','update','Di chuyển file themes/admin_default/css/themes.css','SUCCESS','',1,1583984463),(1308,'vi','update','Di chuyển file themes/admin_default/css/upload.css','SUCCESS','',1,1583984463),(1309,'vi','update','Di chuyển file themes/admin_default/css/users.css','SUCCESS','',1,1583984463),(1310,'vi','update','Di chuyển file themes/admin_default/js/banners.js','SUCCESS','',1,1583984463),(1311,'vi','update','Di chuyển file themes/admin_default/js/extensions.js','SUCCESS','',1,1583984463),(1312,'vi','update','Di chuyển file themes/admin_default/js/main.js','SUCCESS','',1,1583984463),(1313,'vi','update','Di chuyển file themes/admin_default/js/news.js','SUCCESS','',1,1583984463),(1314,'vi','update','Di chuyển file themes/admin_default/js/news_content.js','SUCCESS','',1,1583984463),(1315,'vi','update','Di chuyển file themes/admin_default/js/seotools.js','SUCCESS','',1,1583984463),(1316,'vi','update','Di chuyển file themes/admin_default/js/settings.js','SUCCESS','',1,1583984463),(1317,'vi','update','Di chuyển file themes/admin_default/js/siteinfo.js','SUCCESS','',1,1583984463),(1318,'vi','update','Di chuyển file themes/admin_default/js/statistics.js','SUCCESS','',1,1583984463),(1319,'vi','update','Di chuyển file themes/admin_default/js/themes.js','SUCCESS','',1,1583984463),(1320,'vi','update','Di chuyển file themes/admin_default/js/users.js','SUCCESS','',1,1583984463),(1321,'vi','update','Di chuyển file themes/admin_default/js/voting.js','SUCCESS','',1,1583984463),(1322,'vi','update','Di chuyển file themes/admin_default/modules/authors/add.tpl','SUCCESS','',1,1583984463),(1323,'vi','update','Di chuyển file themes/admin_default/modules/authors/edit.tpl','SUCCESS','',1,1583984463),(1324,'vi','update','Di chuyển file themes/admin_default/modules/banners/add_banner.tpl','SUCCESS','',1,1583984463),(1325,'vi','update','Di chuyển file themes/admin_default/modules/banners/add_plan.tpl','SUCCESS','',1,1583984463),(1326,'vi','update','Di chuyển file themes/admin_default/modules/banners/b_list.tpl','SUCCESS','',1,1583984463),(1327,'vi','update','Di chuyển file themes/admin_default/modules/banners/edit_plan.tpl','SUCCESS','',1,1583984463),(1328,'vi','update','Di chuyển file themes/admin_default/modules/banners/main.tpl','SUCCESS','',1,1583984463),(1329,'vi','update','Di chuyển file themes/admin_default/modules/comment/main.tpl','SUCCESS','',1,1583984463),(1330,'vi','update','Di chuyển file themes/admin_default/modules/contact/config.tpl','SUCCESS','',1,1583984463),(1331,'vi','update','Di chuyển file themes/admin_default/modules/contact/forward.tpl','SUCCESS','',1,1583984463),(1332,'vi','update','Di chuyển file themes/admin_default/modules/contact/main.tpl','SUCCESS','',1,1583984463),(1333,'vi','update','Di chuyển file themes/admin_default/modules/contact/reply.tpl','SUCCESS','',1,1583984463),(1334,'vi','update','Di chuyển file themes/admin_default/modules/contact/row.tpl','SUCCESS','',1,1583984463),(1335,'vi','update','Di chuyển file themes/admin_default/modules/contact/send.tpl','SUCCESS','',1,1583984463),(1336,'vi','update','Di chuyển file themes/admin_default/modules/extensions/manage.tpl','SUCCESS','',1,1583984463),(1337,'vi','update','Di chuyển file themes/admin_default/modules/freecontent/list.tpl','SUCCESS','',1,1583984463),(1338,'vi','update','Di chuyển file themes/admin_default/modules/freecontent/main.tpl','SUCCESS','',1,1583984463),(1339,'vi','update','Di chuyển file themes/admin_default/modules/language/check.tpl','SUCCESS','',1,1583984463),(1340,'vi','update','Di chuyển file themes/admin_default/modules/modules/edit.tpl','SUCCESS','',1,1583984463),(1341,'vi','update','Di chuyển file themes/admin_default/modules/news/content.tpl','SUCCESS','',1,1583984463),(1342,'vi','update','Di chuyển file themes/admin_default/modules/news/main.tpl','SUCCESS','',1,1583984463),(1343,'vi','update','Di chuyển file themes/admin_default/modules/news/settings.tpl','SUCCESS','',1,1583984463),(1344,'vi','update','Di chuyển file themes/admin_default/modules/news/sources.tpl','SUCCESS','',1,1583984463),(1345,'vi','update','Di chuyển file themes/admin_default/modules/page/content.tpl','SUCCESS','',1,1583984463),(1346,'vi','update','Di chuyển file themes/admin_default/modules/seotools/metatags.tpl','SUCCESS','',1,1583984463),(1347,'vi','update','Di chuyển file themes/admin_default/modules/settings/cronjobs_add.tpl','SUCCESS','',1,1583984463),(1348,'vi','update','Di chuyển file themes/admin_default/modules/settings/plugin.tpl','SUCCESS','',1,1583984463),(1349,'vi','update','Di chuyển file themes/admin_default/modules/settings/security.tpl','SUCCESS','',1,1583984463),(1350,'vi','update','Di chuyển file themes/admin_default/modules/settings/smtp.tpl','SUCCESS','',1,1583984463),(1351,'vi','update','Di chuyển file themes/admin_default/modules/settings/system.tpl','SUCCESS','',1,1583984463),(1352,'vi','update','Di chuyển file themes/admin_default/modules/siteinfo/logs.tpl','SUCCESS','',1,1583984463),(1353,'vi','update','Di chuyển file themes/admin_default/modules/statistics/cleardata.tpl','SUCCESS','',1,1583984463),(1354,'vi','update','Di chuyển file themes/admin_default/modules/statistics/index.html','SUCCESS','',1,1583984463),(1355,'vi','update','Di chuyển file themes/admin_default/modules/themes/main.tpl','SUCCESS','',1,1583984463),(1356,'vi','update','Di chuyển file themes/admin_default/modules/themes/settings.tpl','SUCCESS','',1,1583984463),(1357,'vi','update','Di chuyển file themes/admin_default/modules/upload/foldlist.tpl','SUCCESS','',1,1583984463),(1358,'vi','update','Di chuyển file themes/admin_default/modules/upload/main.tpl','SUCCESS','',1,1583984463),(1359,'vi','update','Di chuyển file themes/admin_default/modules/users/config.tpl','SUCCESS','',1,1583984463),(1360,'vi','update','Di chuyển file themes/admin_default/modules/users/editcensor.tpl','SUCCESS','',1,1583984463),(1361,'vi','update','Di chuyển file themes/admin_default/modules/users/editcensor_review.tpl','SUCCESS','',1,1583984463),(1362,'vi','update','Di chuyển file themes/admin_default/modules/users/fields.tpl','SUCCESS','',1,1583984463),(1363,'vi','update','Di chuyển file themes/admin_default/modules/users/getuserid.tpl','SUCCESS','',1,1583984463),(1364,'vi','update','Di chuyển file themes/admin_default/modules/users/groups.tpl','SUCCESS','',1,1583984463),(1365,'vi','update','Di chuyển file themes/admin_default/modules/users/main.tpl','SUCCESS','',1,1583984463),(1366,'vi','update','Di chuyển file themes/admin_default/modules/users/user_add.tpl','SUCCESS','',1,1583984463),(1367,'vi','update','Di chuyển file themes/admin_default/modules/users/user_edit.tpl','SUCCESS','',1,1583984463),(1368,'vi','update','Di chuyển file themes/admin_default/modules/users/user_waiting_remail.tpl','SUCCESS','',1,1583984463),(1369,'vi','update','Di chuyển file themes/admin_default/modules/users/user_waitting.tpl','SUCCESS','',1,1583984463),(1370,'vi','update','Di chuyển file themes/admin_default/modules/voting/main.tpl','SUCCESS','',1,1583984463),(1371,'vi','update','Di chuyển file themes/admin_default/modules/webtools/statistics.tpl','SUCCESS','',1,1583984463),(1372,'vi','update','Di chuyển file themes/admin_default/system/main.tpl','SUCCESS','',1,1583984463),(1373,'vi','update','Di chuyển file themes/admin_default/theme.php','SUCCESS','',1,1583984463),(1374,'vi','update','Di chuyển file themes/default/blocks/global.company_info.ini','SUCCESS','',1,1583984463),(1375,'vi','update','Di chuyển file themes/default/blocks/global.company_info.php','SUCCESS','',1,1583984463),(1376,'vi','update','Di chuyển file themes/default/blocks/global.company_info.tpl','SUCCESS','',1,1583984463),(1377,'vi','update','Di chuyển file themes/default/blocks/global.theme_switch.php','SUCCESS','',1,1583984463),(1378,'vi','update','Di chuyển file themes/default/blocks/global.theme_switch.tpl','SUCCESS','',1,1583984463),(1379,'vi','update','Di chuyển file themes/default/config.ini','SUCCESS','',1,1583984463),(1380,'vi','update','Di chuyển file themes/default/config.php','SUCCESS','',1,1583984463),(1381,'vi','update','Di chuyển file themes/default/css/contentslider.css','SUCCESS','',1,1583984463),(1382,'vi','update','Di chuyển file themes/default/css/jquery.ui.tabs.css','SUCCESS','',1,1583984463),(1383,'vi','update','Di chuyển file themes/default/css/style.css','SUCCESS','',1,1583984463),(1384,'vi','update','Di chuyển file themes/default/default.jpg','SUCCESS','',1,1583984463),(1385,'vi','update','Di chuyển file themes/default/js/main.js','SUCCESS','',1,1583984463),(1386,'vi','update','Di chuyển file themes/default/js/users.js','SUCCESS','',1,1583984463),(1387,'vi','update','Di chuyển file themes/default/language/admin_en.php','SUCCESS','',1,1583984463),(1388,'vi','update','Di chuyển file themes/default/language/admin_fr.php','SUCCESS','',1,1583984463),(1389,'vi','update','Di chuyển file themes/default/language/admin_vi.php','SUCCESS','',1,1583984463),(1390,'vi','update','Di chuyển file themes/default/language/en.php','SUCCESS','',1,1583984463),(1391,'vi','update','Di chuyển file themes/default/language/fr.php','SUCCESS','',1,1583984463),(1392,'vi','update','Di chuyển file themes/default/language/vi.php','SUCCESS','',1,1583984463),(1393,'vi','update','Di chuyển file themes/default/layout/header_only.tpl','SUCCESS','',1,1583984463),(1394,'vi','update','Di chuyển file themes/default/modules/comment/comment.tpl','SUCCESS','',1,1583984463),(1395,'vi','update','Di chuyển file themes/default/modules/comment/main.tpl','SUCCESS','',1,1583984463),(1396,'vi','update','Di chuyển file themes/default/modules/contact/form.tpl','SUCCESS','',1,1583984463),(1397,'vi','update','Di chuyển file themes/default/modules/contact/main.tpl','SUCCESS','',1,1583984463),(1398,'vi','update','Di chuyển file themes/default/modules/menu/global.bootstrap.tpl','SUCCESS','',1,1583984463),(1399,'vi','update','Di chuyển file themes/default/modules/news/block_headline.tpl','SUCCESS','',1,1583984463),(1400,'vi','update','Di chuyển file themes/default/modules/news/block_news.tpl','SUCCESS','',1,1583984463),(1401,'vi','update','Di chuyển file themes/default/modules/news/block_newscenter.tpl','SUCCESS','',1,1583984463),(1402,'vi','update','Di chuyển file themes/default/modules/news/detail.tpl','SUCCESS','',1,1583984463),(1403,'vi','update','Di chuyển file themes/default/modules/news/sendmail.tpl','SUCCESS','',1,1583984463),(1404,'vi','update','Di chuyển file themes/default/modules/page/main.tpl','SUCCESS','',1,1583984463),(1405,'vi','update','Di chuyển file themes/default/modules/users/block.login.tpl','SUCCESS','',1,1583984463),(1406,'vi','update','Di chuyển file themes/default/modules/users/block.user_button.tpl','SUCCESS','',1,1583984463),(1407,'vi','update','Di chuyển file themes/default/modules/users/lostactivelink.tpl','SUCCESS','',1,1583984463),(1408,'vi','update','Di chuyển file themes/default/modules/users/register_form.tpl','SUCCESS','',1,1583984463),(1409,'vi','update','Di chuyển file themes/default/system/config.tpl','SUCCESS','',1,1583984463),(1410,'vi','update','Di chuyển file themes/default/theme.php','SUCCESS','',1,1583984463),(1411,'vi','update','Di chuyển file themes/mobile_default/blocks/global.company_info.ini','SUCCESS','',1,1583984463),(1412,'vi','update','Di chuyển file themes/mobile_default/blocks/global.company_info.php','SUCCESS','',1,1583984463),(1413,'vi','update','Di chuyển file themes/mobile_default/blocks/global.company_info.tpl','SUCCESS','',1,1583984463),(1414,'vi','update','Di chuyển file themes/mobile_default/config.ini','SUCCESS','',1,1583984463),(1415,'vi','update','Di chuyển file themes/mobile_default/config.php','SUCCESS','',1,1583984463),(1416,'vi','update','Di chuyển file themes/mobile_default/css/style.css','SUCCESS','',1,1583984463),(1417,'vi','update','Di chuyển file themes/mobile_default/js/main.js','SUCCESS','',1,1583984463),(1418,'vi','update','Di chuyển file themes/mobile_default/language/admin_en.php','SUCCESS','',1,1583984463),(1419,'vi','update','Di chuyển file themes/mobile_default/language/admin_fr.php','SUCCESS','',1,1583984463),(1420,'vi','update','Di chuyển file themes/mobile_default/language/admin_vi.php','SUCCESS','',1,1583984463),(1421,'vi','update','Di chuyển file themes/mobile_default/language/en.php','SUCCESS','',1,1583984463),(1422,'vi','update','Di chuyển file themes/mobile_default/language/fr.php','SUCCESS','',1,1583984463),(1423,'vi','update','Di chuyển file themes/mobile_default/language/vi.php','SUCCESS','',1,1583984463),(1424,'vi','update','Di chuyển file themes/mobile_default/layout/header_only.tpl','SUCCESS','',1,1583984463),(1425,'vi','update','Di chuyển file themes/mobile_default/mobile_default.jpg','SUCCESS','',1,1583984463),(1426,'vi','update','Di chuyển file themes/mobile_default/modules/comment/main.tpl','SUCCESS','',1,1583984463),(1427,'vi','update','Di chuyển file themes/mobile_default/modules/news/block_news.tpl','SUCCESS','',1,1583984463),(1428,'vi','update','Di chuyển file themes/mobile_default/modules/news/detail.tpl','SUCCESS','',1,1583984463),(1429,'vi','update','Di chuyển file themes/mobile_default/modules/news/sendmail.tpl','SUCCESS','',1,1583984463),(1430,'vi','update','Di chuyển file themes/mobile_default/modules/news/theme.php','SUCCESS','',1,1583984463),(1431,'vi','update','Di chuyển file themes/mobile_default/modules/users/block.user_button.tpl','SUCCESS','',1,1583984463),(1432,'vi','update','Di chuyển file themes/mobile_default/modules/users/register_form.tpl','SUCCESS','',1,1583984463),(1433,'vi','update','Di chuyển file themes/mobile_default/system/config.tpl','SUCCESS','',1,1583984463),(1434,'vi','update','Di chuyển file themes/mobile_default/theme.php','SUCCESS','',1,1583984463),(1435,'vi','update','Di chuyển file vendor/composer/ClassLoader.php','SUCCESS','',1,1583984463),(1436,'vi','update','Di chuyển file vendor/composer/LICENSE','SUCCESS','',1,1583984463),(1437,'vi','update','Di chuyển file vendor/composer/autoload_classmap.php','SUCCESS','',1,1583984463),(1438,'vi','update','Di chuyển file vendor/composer/autoload_files.php','SUCCESS','',1,1583984463),(1439,'vi','update','Di chuyển file vendor/composer/autoload_psr4.php','SUCCESS','',1,1583984463),(1440,'vi','update','Di chuyển file vendor/composer/autoload_real.php','SUCCESS','',1,1583984463),(1441,'vi','update','Di chuyển file vendor/composer/autoload_static.php','SUCCESS','',1,1583984463),(1442,'vi','update','Di chuyển file vendor/composer/installed.json','SUCCESS','',1,1583984463),(1443,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/LICENSE','SUCCESS','',1,1583984463),(1444,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/VERSION','SUCCESS','',1,1583984463),(1445,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/Exception.php','SUCCESS','',1,1583984463),(1446,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/OAuth.php','SUCCESS','',1,1583984463),(1447,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/PHPMailer.php','SUCCESS','',1,1583984463),(1448,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/POP3.php','SUCCESS','',1,1583984463),(1449,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/SMTP.php','SUCCESS','',1,1583984463),(1450,'vi','update','Di chuyển file vendor/vinades/nukeviet/Cache/Memcached.php','SUCCESS','',1,1583984463),(1451,'vi','update','Di chuyển file vendor/vinades/nukeviet/Cache/Redis.php','SUCCESS','',1,1583984463),(1452,'vi','update','Di chuyển file vendor/vinades/nukeviet/Client/Gfonts.php','SUCCESS','',1,1583984463),(1453,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Blocker.php','SUCCESS','',1,1583984463),(1454,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Database.php','SUCCESS','',1,1583984463),(1455,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Error.php','SUCCESS','',1,1583984463),(1456,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Ips.php','SUCCESS','',1,1583984463),(1457,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Optimizer.php','SUCCESS','',1,1583984463),(1458,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Request.php','SUCCESS','',1,1583984463),(1459,'vi','update','Di chuyển file vendor/vinades/nukeviet/Files/Upload.php','SUCCESS','',1,1583984463),(1460,'vi','update','Di chuyển file vendor/vinades/nukeviet/Http/Http.php','SUCCESS','',1,1583984463),(1461,'vi','update','Di chuyển file vendor/vinades/nukeviet/Seo/BotManager.php','SUCCESS','',1,1583984463),(1462,'vi','login','[admin] Đăng nhập',' Client IP:127.0.0.1','',0,1585876788),(1463,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1585876823),(1464,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1585876825),(1465,'vi','upload','Upload file','uploads/dich-vu/codinh-300x300.jpg','',1,1585876924),(1466,'vi','dich-vu','Add',' ','',1,1585876937),(1467,'vi','upload','Upload file','uploads/dich-vu/vip-300x300.jpg','',1,1585877013),(1468,'vi','dich-vu','Add',' ','',1,1585877020),(1469,'vi','themes','Sửa block','Name : Chúng tôi cung cấp các dịch vụ','',1,1585877032),(1470,'vi','upload','Upload file','uploads/logo-giuseart.png','',1,1585877078),(1471,'vi','upload','Upload file','uploads/logo_hoaphat-ketthuc.png','',1,1585877167),(1472,'vi','themes','Sửa block','Name : Công ty chủ quản','',1,1585877240),(1473,'vi','themes','Sửa block','Name : Các chuyên mục chính','',1,1585877710),(1474,'vi','themes','Sửa block','Name : global copyright','',1,1585877776),(1475,'vi','themes','Sửa block','Name : global copyright','',1,1585877886),(1476,'vi','themes','Sửa block','Name : Social icon','',1,1585878008),(1477,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:116.99.183.234','',0,1633665583),(1478,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:116.99.183.234','',0,1633665587),(1479,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:116.99.183.234','',0,1633665593),(1480,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:116.99.183.234','',0,1633665597),(1481,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:116.99.183.234','',0,1633665601),(1482,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:59.153.224.60','',0,1633665741),(1483,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:59.153.224.60','',0,1633665746),(1484,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:59.153.224.60','',0,1633665758),(1485,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:59.153.224.60','',0,1633665774),(1486,'vi','login','[admin] Đăng nhập',' Client IP:116.99.183.234','',0,1633683435);
/*!40000 ALTER TABLE `nv4_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_notification`
--

DROP TABLE IF EXISTS `nv4_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_notification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `send_to` mediumint(8) unsigned NOT NULL,
  `send_from` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `area` tinyint(1) unsigned NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) unsigned NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_notification`
--

LOCK TABLES `nv4_notification` WRITE;
/*!40000 ALTER TABLE `nv4_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_plugin`
--

DROP TABLE IF EXISTS `nv4_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `plugin_file` (`plugin_file`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_plugin`
--

LOCK TABLES `nv4_plugin` WRITE;
/*!40000 ALTER TABLE `nv4_plugin` DISABLE KEYS */;
INSERT INTO `nv4_plugin` VALUES (1,'qrcode.php',1,1),(2,'cdn_js_css_image.php',3,1);
/*!40000 ALTER TABLE `nv4_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_sessions`
--

DROP TABLE IF EXISTS `nv4_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `session_id` (`session_id`),
  KEY `onl_time` (`onl_time`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_sessions`
--

LOCK TABLES `nv4_sessions` WRITE;
/*!40000 ALTER TABLE `nv4_sessions` DISABLE KEYS */;
INSERT INTO `nv4_sessions` VALUES ('v52qh7c2l8gffsndsdia7607sd',1,'admin',1633683521);
/*!40000 ALTER TABLE `nv4_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_setup_extensions`
--

DROP TABLE IF EXISTS `nv4_setup_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT 0,
  `is_virtual` tinyint(1) NOT NULL DEFAULT 0,
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  UNIQUE KEY `title` (`type`,`title`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_setup_extensions`
--

LOCK TABLES `nv4_setup_extensions` WRITE;
/*!40000 ALTER TABLE `nv4_setup_extensions` DISABLE KEYS */;
INSERT INTO `nv4_setup_extensions` VALUES (0,'module','about',0,0,'page','about','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(0,'module','siteterms',0,0,'page','siteterms','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(19,'module','banners',1,0,'banners','banners','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(20,'module','contact',0,1,'contact','contact','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(1,'module','news',0,1,'news','news','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(21,'module','voting',0,0,'voting','voting','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(0,'theme','phubinh',0,0,'phubinh','phubinh','4.3.05 1557823932',1557823932,'VINADES.,JSC','Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),(284,'module','seek',1,0,'seek','seek','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(24,'module','users',1,1,'users','users','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(27,'module','statistics',0,0,'statistics','statistics','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(29,'module','menu',0,0,'menu','menu','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(283,'module','feeds',1,0,'feeds','feeds','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(282,'module','page',1,1,'page','page','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(281,'module','comment',1,0,'comment','comment','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(312,'module','freecontent',0,1,'freecontent','freecontent','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(327,'module','two-step-verification',1,0,'two-step-verification','two_step_verification','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(307,'theme','default',0,0,'default','default','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(311,'theme','mobile_default',0,0,'mobile_default','mobile_default','4.3.08 1577523600',1557802785,'VINADES <contact@vinades.vn>',''),(0,'module','slider',0,1,'slider','slider','4.3.02 1499748546',1557824044,'CCG Dev (contact@ccgdev.net)',''),(0,'module','dich-vu',0,0,'page','dich_vu','4.3.08 1577523600',1583897538,'',''),(313,'module','videos',0,1,'videos','videos','1.0.01 1583920967',1583920967,'anhyeuviolet (nguyentiendat713@gmail.com)','Module được phát triển trên nền tảng NukeViet 4.');
/*!40000 ALTER TABLE `nv4_setup_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_setup_language`
--

DROP TABLE IF EXISTS `nv4_setup_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT 0,
  `weight` smallint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_setup_language`
--

LOCK TABLES `nv4_setup_language` WRITE;
/*!40000 ALTER TABLE `nv4_setup_language` DISABLE KEYS */;
INSERT INTO `nv4_setup_language` VALUES ('vi',1,1);
/*!40000 ALTER TABLE `nv4_setup_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_upload_dir`
--

DROP TABLE IF EXISTS `nv4_upload_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL AUTO_INCREMENT,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `thumb_type` tinyint(4) NOT NULL DEFAULT 0,
  `thumb_width` smallint(6) NOT NULL DEFAULT 0,
  `thumb_height` smallint(6) NOT NULL DEFAULT 0,
  `thumb_quality` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`did`),
  UNIQUE KEY `name` (`dirname`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_upload_dir`
--

LOCK TABLES `nv4_upload_dir` WRITE;
/*!40000 ALTER TABLE `nv4_upload_dir` DISABLE KEYS */;
INSERT INTO `nv4_upload_dir` VALUES (0,'',0,3,100,150,90),(1,'uploads',1557903775,0,0,0,0),(2,'uploads/about',0,0,0,0,0),(3,'uploads/banners',0,0,0,0,0),(4,'uploads/banners/files',0,0,0,0,0),(5,'uploads/comment',0,0,0,0,0),(6,'uploads/contact',0,0,0,0,0),(7,'uploads/freecontent',0,0,0,0,0),(8,'uploads/menu',1557907319,0,0,0,0),(9,'uploads/news',1557881772,0,0,0,0),(10,'uploads/news/source',0,0,0,0,0),(11,'uploads/news/temp_pic',0,0,0,0,0),(12,'uploads/news/topics',0,0,0,0,0),(13,'uploads/page',0,0,0,0,0),(14,'uploads/siteterms',0,0,0,0,0),(15,'uploads/users',0,0,0,0,0),(16,'uploads/users/groups',0,0,0,0,0),(17,'uploads/news/2019_05',1557882448,0,0,0,0),(18,'uploads/slider',0,0,0,0,0),(19,'uploads/slider/2019',1557824086,0,0,0,0),(54,'uploads/videos',0,0,0,0,0),(55,'uploads/videos/img',0,0,0,0,0),(56,'uploads/videos/vid',0,0,0,0,0),(57,'uploads/videos/img/playlists',0,0,0,0,0),(29,'uploads/view360',0,0,0,0,0),(45,'uploads/slider/2020',1583917049,0,0,0,0),(44,'uploads/dich-vu',1583897692,4,500,500,90),(58,'uploads/videos/img/groups',0,0,0,0,0),(59,'uploads/videos/thumbs',0,0,0,0,0),(60,'uploads/videos/img/2020_03',0,0,0,0,0),(61,'uploads/videos/vid/2020_03',0,0,0,0,0),(62,'uploads/news/2020_03',1583921390,4,500,500,90);
/*!40000 ALTER TABLE `nv4_upload_dir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_upload_file`
--

DROP TABLE IF EXISTS `nv4_upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT 0,
  `srcheight` int(11) NOT NULL DEFAULT 0,
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `mtime` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `did` (`did`,`title`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_upload_file`
--

LOCK TABLES `nv4_upload_file` WRITE;
/*!40000 ALTER TABLE `nv4_upload_file` DISABLE KEYS */;
INSERT INTO `nv4_upload_file` VALUES ('tang-qua-h...jpg','jpg','image',90967,'assets/news/2020_03/tang-qua-hs-gioi.jpg',80,80,'418|283',1,1583975725,62,'tang-qua-hs-gioi.jpg','tang qua hs gioi'),('be-mam-non...jpg','jpg','image',135024,'assets/slider/2019/be-mam-non-chao-xuan-moi-38_1c6d85c2ff92e954c1023e9becf741d4.jpg',80,60,'440|330',1,1557824095,19,'be-mam-non-chao-xuan-moi-38_1c6d85c2ff92e954c1023e9becf741d4.jpg','be mam non chao xuan moi 38 1c6d85c2ff92e954c1023e9becf741d4'),('khan-gia-p...jpg','jpg','image',137953,'assets/slider/2019/khan-gia-phu-huynh-04_d44c60350c653e0b2f827a8a55667caa.jpg',80,60,'440|330',1,1557824177,19,'khan-gia-phu-huynh-04_d44c60350c653e0b2f827a8a55667caa.jpg','khan gia phu huynh 04 d44c60350c653e0b2f827a8a55667caa'),('khan-gia-p...jpg','jpg','image',137312,'assets/slider/2019/khan-gia-phu-huynh-12_8e7f2535a7f80ca5b6eaeee3eecaf495.jpg',80,60,'440|330',1,1557824201,19,'khan-gia-phu-huynh-12_8e7f2535a7f80ca5b6eaeee3eecaf495.jpg','khan gia phu huynh 12 8e7f2535a7f80ca5b6eaeee3eecaf495'),('gio-hoc-lo...jpg','jpg','image',130974,'assets/slider/2019/gio-hoc-lop-mau-giao-be-2012-19_c2c9f722f960f6b40e2aecaefce2f92f.jpg',80,63,'440|344',1,1557824232,19,'gio-hoc-lop-mau-giao-be-2012-19_c2c9f722f960f6b40e2aecaefce2f92f.jpg','gio hoc lop mau giao be 2012 19 c2c9f722f960f6b40e2aecaefce2f92f'),('menuthuvie...jpg','jpg','image',10504,'assets/menu/menuthuvienanh.jpg',69,80,'160|185',1,1557907330,8,'menuthuvienanh.jpg','menuthuvienanh'),('hoat-dong-...jpg','jpg','image',84098,'assets/news/2019_05/hoat-dong-huong-noi-2.jpg',80,54,'600|400',1,1557885501,17,'hoat-dong-huong-noi-2.jpg','hoat dong huong noi 2'),('img_0018.jpg','jpg','image',323741,'assets/news/2019_05/img_0018.jpg',80,53,'1024|668',1,1557882452,17,'img_0018.jpg','img 0018'),('vsip-chon-...jpg','jpg','image',125719,'assets/dich-vu/vsip-chon-jpg-20151117105840j9x0nplazq.jpg',80,32,'800|313',1,1583897773,44,'vsip-chon-jpg-20151117105840j9x0nplazq.jpg','vsip chon jpg 20151117105840j9X0npLAzq'),('khao-sat-2.jpg','jpg','image',211608,'assets/news/khao-sat-2.jpg',80,46,'1024|576',1,1557881789,9,'khao-sat-2.jpg','khao sat 2'),('logo.png','png','image',31943,'assets/logo.png',80,22,'770|212',1,1583915851,1,'logo.png','logo'),('slider2-1.jpg','jpg','image',170434,'assets/slider/2020/slider2-1.jpg',80,19,'1500|352',1,1583917055,45,'slider2-1.jpg','slider2 1'),('slider2.jpg','jpg','image',164441,'assets/slider/2020/slider2.jpg',80,19,'1500|352',1,1583917079,45,'slider2.jpg','slider2'),('6-long-hau...jpg','jpg','image',77323,'assets/dich-vu/6-long-hau-jpg.jpg',80,80,'800|313',1,1583917824,44,'6-long-hau-jpg.jpg','6 long hau jpg'),('nds-300x300.png','png','image',130101,'assets/dich-vu/nds-300x300.png',80,80,'300|300',1,1583917874,44,'nds-300x300.png','nds 300x300'),('ddong-300x300.jpg','jpg','image',34319,'assets/dich-vu/ddong-300x300.jpg',80,80,'300|300',1,1583917899,44,'ddong-300x300.jpg','ddong 300x300'),('post87.jpg','jpg','image',27691,'assets/news/2020_03/post87.jpg',80,80,'400|249',1,1583975772,62,'post87.jpg','post87'),('b1.jpg','jpg','image',100202,'assets/news/2020_03/b1.jpg',80,80,'600|372',1,1583975892,62,'b1.jpg','B1'),('bao-ve-nga...jpg','jpg','image',79514,'assets/news/2020_03/bao-ve-ngay-dem-nestle.jpg',80,80,'649|434',1,1583977703,62,'bao-ve-ngay-dem-nestle.jpg','bao ve ngay dem nestle'),('bao-ve-nga...jpg','jpg','image',99591,'assets/news/2020_03/bao-ve-ngay-dem-tay-ninh-3.jpg',80,80,'800|482',1,1583977917,62,'bao-ve-ngay-dem-tay-ninh-3.jpg','bao ve ngay dem tay ninh 3'),('codinh-300...jpg','jpg','image',20664,'assets/dich-vu/codinh-300x300.jpg',80,80,'300|300',1,1585876924,44,'codinh-300x300.jpg','codinh 300x300'),('vip-300x300.jpg','jpg','image',28114,'assets/dich-vu/vip-300x300.jpg',80,80,'300|300',1,1585877013,44,'vip-300x300.jpg','VIP 300x300'),('logo-giuseart.png','png','image',8486,'assets/logo-giuseart.png',80,24,'252|74',1,1585877078,1,'logo-giuseart.png','logo giuseart'),('logo_hoaph...png','png','image',27276,'assets/logo_hoaphat-ketthuc.png',80,32,'338|134',1,1585877167,1,'logo_hoaphat-ketthuc.png','logo hoaphat ketthuc');
/*!40000 ALTER TABLE `nv4_upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users`
--

DROP TABLE IF EXISTS `nv4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `remember` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `active2step` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT 0,
  `safemode` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT -1 COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `md5username` (`md5username`),
  UNIQUE KEY `email` (`email`),
  KEY `idsite` (`idsite`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users`
--

LOCK TABLES `nv4_users` WRITE;
/*!40000 ALTER TABLE `nv4_users` DISABLE KEYS */;
INSERT INTO `nv4_users` VALUES (1,1,'admin','21232f297a57a5a743894a0e4a801fc3','a60abad72cfc0db940e5770f418c955fe04c78dd','chauquynh06@gmail.com','admin','','','',0,'',1557802830,'jhhcs','hfghf','',0,1,'1',1,0,'','',1557802830,'','','',0,0,0,'',-3,'SYSTEM');
/*!40000 ALTER TABLE `nv4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_backupcodes`
--

DROP TABLE IF EXISTS `nv4_users_backupcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_backupcodes` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `time_used` int(11) unsigned NOT NULL DEFAULT 0,
  `time_creat` int(11) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `userid` (`userid`,`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_backupcodes`
--

LOCK TABLES `nv4_users_backupcodes` WRITE;
/*!40000 ALTER TABLE `nv4_users_backupcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_backupcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_config`
--

DROP TABLE IF EXISTS `nv4_users_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`config`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_config`
--

LOCK TABLES `nv4_users_config` WRITE;
/*!40000 ALTER TABLE `nv4_users_config` DISABLE KEYS */;
INSERT INTO `nv4_users_config` VALUES ('access_admin','a:7:{s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}',1352873462),('password_simple','000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass',1557802785),('deny_email','yoursite.com|mysite.com|localhost|xxx',1557802785),('deny_name','anonimo|anonymous|god|linux|nobody|operator|root',1557802785),('avatar_width','80',1557802785),('avatar_height','80',1557802785),('active_group_newusers','0',1557802785),('active_editinfo_censor','0',1557802785),('active_user_logs','1',1557802785),('min_old_user','16',1557802785),('register_active_time','86400',1557802785),('siteterms_vi','<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>',1274757129);
/*!40000 ALTER TABLE `nv4_users_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_edit`
--

DROP TABLE IF EXISTS `nv4_users_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_edit` (
  `userid` mediumint(8) unsigned NOT NULL,
  `lastedit` int(11) unsigned NOT NULL DEFAULT 0,
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_edit`
--

LOCK TABLES `nv4_users_edit` WRITE;
/*!40000 ALTER TABLE `nv4_users_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_field`
--

DROP TABLE IF EXISTS `nv4_users_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) unsigned NOT NULL DEFAULT 0,
  `required` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `show_register` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `user_editable` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `show_profile` tinyint(4) NOT NULL DEFAULT 1,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `field` (`field`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_field`
--

LOCK TABLES `nv4_users_field` WRITE;
/*!40000 ALTER TABLE `nv4_users_field` DISABLE KEYS */;
INSERT INTO `nv4_users_field` VALUES (1,'first_name',1,'textbox','','','none','','',0,100,1,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}','',1),(2,'last_name',2,'textbox','','','none','','',0,100,0,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}','',1),(3,'gender',3,'select','a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}','','none','','',0,1,0,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}','2',1),(4,'birthday',4,'date','a:1:{s:12:\"current_date\";i:0;}','','none','','',0,0,1,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}','0',1),(5,'sig',5,'textarea','','','none','','',0,1000,0,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}','',1),(6,'question',6,'textbox','','','none','','',3,255,1,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}','',1),(7,'answer',7,'textbox','','','none','','',3,255,1,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}','',1);
/*!40000 ALTER TABLE `nv4_users_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_groups`
--

DROP TABLE IF EXISTS `nv4_users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_type` tinyint(4) unsigned NOT NULL DEFAULT 0 COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `require_2step_site` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) unsigned NOT NULL DEFAULT 0,
  `act` tinyint(1) unsigned NOT NULL,
  `idsite` int(11) unsigned NOT NULL DEFAULT 0,
  `numbers` mediumint(9) unsigned NOT NULL DEFAULT 0,
  `siteus` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `ktitle` (`title`,`idsite`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_groups`
--

LOCK TABLES `nv4_users_groups` WRITE;
/*!40000 ALTER TABLE `nv4_users_groups` DISABLE KEYS */;
INSERT INTO `nv4_users_groups` VALUES (1,'Super admin','','Super Admin','',0,'','',0,0,0,1557802785,0,1,1,0,1,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(2,'General admin','','General Admin','',0,'','',0,0,0,1557802785,0,2,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(3,'Module admin','','Module Admin','',0,'','',0,0,0,1557802785,0,3,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(4,'Users','','Users','',0,'','',0,0,0,1557802785,0,4,1,0,1,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(7,'New Users','','New Users','',0,'','',0,0,0,1557802785,0,5,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(5,'Guest','','Guest','',0,'','',0,0,0,1557802785,0,6,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(6,'All','','All','',0,'','',0,0,0,1557802785,0,7,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(10,'NukeViet-Fans','','Nhóm những người hâm mộ hệ thống NukeViet','',2,'','',0,0,1,1557802785,0,8,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(11,'NukeViet-Admins','','Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet','',2,'','',0,0,0,1557802785,0,9,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(12,'NukeViet-Programmers','','Nhóm Lập trình viên hệ thống NukeViet','',1,'','',0,0,0,1557802785,0,10,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');
/*!40000 ALTER TABLE `nv4_users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_groups_users`
--

DROP TABLE IF EXISTS `nv4_users_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `is_leader` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `approved` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Thời gian duyệt yêu cầu tham gia',
  PRIMARY KEY (`group_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_groups_users`
--

LOCK TABLES `nv4_users_groups_users` WRITE;
/*!40000 ALTER TABLE `nv4_users_groups_users` DISABLE KEYS */;
INSERT INTO `nv4_users_groups_users` VALUES (1,1,1,1,'0',0,0);
/*!40000 ALTER TABLE `nv4_users_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_info`
--

DROP TABLE IF EXISTS `nv4_users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_info`
--

LOCK TABLES `nv4_users_info` WRITE;
/*!40000 ALTER TABLE `nv4_users_info` DISABLE KEYS */;
INSERT INTO `nv4_users_info` VALUES (1);
/*!40000 ALTER TABLE `nv4_users_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_openid`
--

DROP TABLE IF EXISTS `nv4_users_openid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`opid`),
  KEY `userid` (`userid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_openid`
--

LOCK TABLES `nv4_users_openid` WRITE;
/*!40000 ALTER TABLE `nv4_users_openid` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_openid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_question`
--

DROP TABLE IF EXISTS `nv4_users_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) unsigned NOT NULL DEFAULT 0,
  `edit_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `title` (`title`,`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_question`
--

LOCK TABLES `nv4_users_question` WRITE;
/*!40000 ALTER TABLE `nv4_users_question` DISABLE KEYS */;
INSERT INTO `nv4_users_question` VALUES (1,'Bạn thích môn thể thao nào nhất','vi',1,1274840238,1274840238),(2,'Món ăn mà bạn yêu thích','vi',2,1274840250,1274840250),(3,'Thần tượng điện ảnh của bạn','vi',3,1274840257,1274840257),(4,'Bạn thích nhạc sỹ nào nhất','vi',4,1274840264,1274840264),(5,'Quê ngoại của bạn ở đâu','vi',5,1274840270,1274840270),(6,'Tên cuốn sách &quot;gối đầu giường&quot;','vi',6,1274840278,1274840278),(7,'Ngày lễ mà bạn luôn mong đợi','vi',7,1274840285,1274840285);
/*!40000 ALTER TABLE `nv4_users_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_reg`
--

DROP TABLE IF EXISTS `nv4_users_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) unsigned NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openid_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `login` (`username`),
  UNIQUE KEY `md5username` (`md5username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_reg`
--

LOCK TABLES `nv4_users_reg` WRITE;
/*!40000 ALTER TABLE `nv4_users_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_about`
--

DROP TABLE IF EXISTS `nv4_vi_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_about`
--

LOCK TABLES `nv4_vi_about` WRITE;
/*!40000 ALTER TABLE `nv4_vi_about` DISABLE KEYS */;
INSERT INTO `nv4_vi_about` VALUES (1,'Chính sách chất lượng','chinh-sach-chat-luong','','',0,'','<p>Công Ty Dịch Vụ Bảo Vệ Ngày &amp; Đêm cam kết với khách hàng xây dựng lực lượng bảo vệ:</p>\r\n\r\n<h3><strong>1. Chuyên Nghiệp</strong></h3>\r\n\r\n<p>– Đào tạo lực lượng bảo vệ chuyên nghiệp có phẩm chất tốt, nghiệp vụ giỏi.<br  />\r\n– Sử dụng các thiết bị an ninh hiện đại phù hợp trong thực thi cung cấp dịch vụ bảo vệ.<br  />\r\n– Áp dụng và duy trì hệ thống quản l‎í chất lượng dịch vụ phù hợp với tiêu chuẩn&nbsp;<strong>ISO 9001:2015</strong>&nbsp;và trách nhiệm xã hội phù hợp với tiêu chuẩn SA 8000.</p>\r\n\r\n<h3><strong>2. Hiệu Quả</strong></h3>\r\n\r\n<p>– Cung cấp các giải pháp tối ưu, phù hợp nhất để đảm bảo an ninh, an toàn cho khách hàng.<br  />\r\n– Cùng tạo ra giá trị gia tăng thực sự trong hoạt động kinh doanh của khách hàng.<br  />\r\n– Góp phần tạo môi trường làm việc chuyên nghiệp và văn hóa tốt nhất cho khách hàng.</p>\r\n\r\n<h3><strong>3. Tận Tụy</strong></h3>\r\n\r\n<p>– Thỏa mãn mọi yêu cầu hợp l‎ý của khách hàng.<br  />\r\n– Giải quyết nhanh chóng những sự việc xảy ra giảm tối đa thiệt hại cho khách hàng và xã hội.<br  />\r\n– Sẵn sàng giúp đỡ khách hàng khi cần thiết hoặc được yêu cầu phù hợp.</p>','',1,'4','',1,1,1583898305,1583898305,1,8,0),(2,'Lịch sử hình thành','lich-su-hinh-thanh','','',0,'','<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Công ty TNHH DV&nbsp;<strong>Bảo vệ</strong>&nbsp;Ngày &amp; Đêm, trụ sở tại 600 Cộng Hòa, phường 13, Quận Tân Bình, TP. HCM, do các cựu sỹ quan, cựu chiến binh giàu kinh nghiệm trong lĩnh vực an ninh sáng lập và lãnh đạo, được UBND TP.HCM cấp giấy chứng nhận đăng ký kinh doanh hoạt động từ ngày&nbsp;<strong>12/08/2003</strong>. Bảo vệ Ngày &amp; Đêm còn được&nbsp;<strong>Bộ Công an cấp giấy chứng nhận Đủ Điều Kiện An Ninh Trật Tự hoạt động trên lãnh thổ Việt Nam</strong>, cho phép&nbsp;<strong>CÔNG TY BẢO VỆ&nbsp;NGÀY &amp; ĐÊM&nbsp;tự tổ chức các khóa đào tạo nghiệp vụ&nbsp;bảo</strong>&nbsp;<strong>vệ</strong>&nbsp;hoặc gửi đào tạo tại các trường nghiệp vụ của Bộ Công An và được Bộ Công An sát hạch cấp chứng chỉ nghề cho Vệ Sỹ.</p>\r\n\r\n<p>Qúa trình hoạt động, Công Ty&nbsp;Dịch Vụ Bảo Vệ&nbsp;Ngày &amp; Đêm đã khẳng định được là&nbsp;công ty dịch vụ bảo vệ uy tín chuyên nghiệp tại tphcm,&nbsp;thương hiệu NDS trong ngành nghề dịch vụ bảo vệ, đã có hàng chục chi nhánh, văn phòng đại diện tại các tỉnh, thành trong cả nước như: Hà Nội, Tp. Vinh, Huế, Đà Nẵng, TP. Hồ Chí Minh, Đồng Nai, Bình Phước, Bình Dương, Tây Ninh, Bà Rịa – Vũng Tàu, Long An, Cần Thơ….. đáp ứng mọi yêu cầu về dịch vụ bảo vệ của khách hàng trên toàn quốc. Bảo vệ Ngày &amp; Đêm đã và đang sử dụng một lực lượng hàng ngàn vệ sĩ có phẩm chất đạo đức tốt, nghiệp vụ bảo vệ giỏi, sử dụng thành thạo những loại công cụ hỗ trợ và thiết bị an ninh chuyên nghiệp, đáp ứng mọi nhu cầu an toàn an ninh cho khách hàng. Hơn nữa, vệ sỹ công ty Bảo vệ Ngày &amp; Đêm được trang bị đồng phục màu thiên thanh mang ý nghĩa “Đẹp và Thân thiện” sẽ làm mới và đẹp thêm bộ mặt công sở của khách hàng. Cùng với việc áp dụng hệ thống quản lý chất lượng theo tiêu chuẩn&nbsp;<strong>ISO 9001:2008</strong>&nbsp;và trang bị phầm mềm quản lý tiện ích hiện đại, cho nên Công ty Bảo Vệ Ngày &amp; Đêm được đánh giá là một trong những công ty bảo vệ có uy tín chất lượng và chuyên nghiệp hàng đầu tại Việt Nam.</p>\r\n\r\n<p>Song song với nhiệm vụ kinh doanh Bảo vệ Ngày &amp; Đêm đã thành lập và duy trì hoạt động có hiệu quả các&nbsp;tuyển việc làm bảo vệ&nbsp;, tổ chức Chi bộ, Chi đoàn, Công đoàn, Hội chữ thập đỏ… tạo nên môi trường làm việc, thu nhập ổn định và rèn luyện phấn đấu tốt cho người lao động nhờ vậy hầu hết CBNV Bảo vệ Ngày &amp; Đêm đều tận tâm phục vụ khách hàng với tinh thần trách nhiệm cao nhất.</p>\r\n\r\n<p>Quá trình xây dựng và trưởng thành những năm qua Bảo vệ Ngày &amp; Đêm vinh dự được Bộ Công Thương, UBND TP.HCM, Liên Đoàn Lao Động TP.HCM, Trung Ương Hội Chữ Thập Đỏ Việt Nam, Hội Chữ Thập Đỏ TP.HCM, Tổng Cục Thuế, CA TP.HCM, Cục Thuế TP.HCM và các cơ quan Đảng, Chính quyền, Đoàn thể Quận Tân Bình và TP.HCM tặng nhiều giấy khen và bằng khen cùng nhiều cúp vàng, cúp bạc, giấy chứng nhận… của các tổ chức quản lý chất lượng, cục sở hữu trí tuệ, tổ chức xã hội vinh danh và khen tặng.</p>','lịch sử',1,'4','',2,1,1583898342,1583898342,1,4,0);
/*!40000 ALTER TABLE `nv4_vi_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_about_config`
--

DROP TABLE IF EXISTS `nv4_vi_about_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_about_config`
--

LOCK TABLES `nv4_vi_about_config` WRITE;
/*!40000 ALTER TABLE `nv4_vi_about_config` DISABLE KEYS */;
INSERT INTO `nv4_vi_about_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','20'),('news_first','0'),('related_articles','5'),('copy_page','0'),('alias_lower','1');
/*!40000 ALTER TABLE `nv4_vi_about_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_blocks_groups`
--

DROP TABLE IF EXISTS `nv4_vi_blocks_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT 0,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `theme` (`theme`),
  KEY `module` (`module`),
  KEY `position` (`position`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

LOCK TABLES `nv4_vi_blocks_groups` WRITE;
/*!40000 ALTER TABLE `nv4_vi_blocks_groups` DISABLE KEYS */;
INSERT INTO `nv4_vi_blocks_groups` VALUES (1,'default','news','module.block_newscenter.php','Tin mới nhất','','no_title','[TOP]',0,'1',1,'6',0,1,'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),(2,'default','banners','global.banners.php','Quảng cáo giữa trang','','no_title','[TOP]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:1;}'),(3,'default','news','global.block_category.php','Chủ đề','','no_title','[LEFT]',0,'1',1,'6',0,1,'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),(4,'default','theme','global.module_menu.php','Module Menu','','no_title','[LEFT]',0,'1',1,'6',0,2,''),(5,'default','banners','global.banners.php','Quảng cáo cột trái','','no_title','[LEFT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:2;}'),(6,'default','statistics','global.counter.php','Thống kê','','primary','[LEFT]',0,'1',1,'6',1,4,''),(7,'default','about','global.about.php','Giới thiệu','','border','[RIGHT]',0,'1',1,'6',1,1,''),(8,'default','banners','global.banners.php','Quảng cáo cột phải','','no_title','[RIGHT]',0,'1',1,'6',1,2,'a:1:{s:12:\"idplanbanner\";i:3;}'),(9,'default','voting','global.voting_random.php','Thăm dò ý kiến','','primary','[RIGHT]',0,'1',1,'6',1,3,''),(10,'default','news','global.block_tophits.php','Tin xem nhiều','','primary','[RIGHT]',0,'1',1,'6',1,4,'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),(11,'default','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:48:\"/nukeviet/index.php?language=vi&amp;nv=siteterms\";}'),(12,'default','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,2,''),(13,'default','theme','global.QR_code.php','QR code','','no_title','[QR_CODE]',0,'1',1,'6',1,1,'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(14,'default','statistics','global.counter_button.php','Online button','','no_title','[QR_CODE]',0,'1',1,'6',1,2,''),(15,'default','users','global.user_button.php','Đăng nhập thành viên','','no_title','[PERSONALAREA]',0,'1',1,'6',1,1,''),(16,'default','theme','global.company_info.php','Công ty chủ quản','','simple','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984516;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(17,'default','menu','global.bootstrap.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(18,'default','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(19,'default','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(20,'default','theme','global.menu_footer.php','Các chuyên mục chính','','simple','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),(21,'default','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(22,'mobile_default','menu','global.metismenu.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(23,'mobile_default','users','global.user_button.php','Sign In','','no_title','[MENU_SITE]',0,'1',1,'6',1,2,''),(24,'mobile_default','contact','global.contact_default.php','Contact Default','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,''),(25,'mobile_default','contact','global.contact_form.php','Feedback','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,2,''),(26,'mobile_default','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,3,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(27,'mobile_default','theme','global.QR_code.php','QR code','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,4,'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(28,'mobile_default','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:48:\"/nukeviet/index.php?language=vi&amp;nv=siteterms\";}'),(29,'mobile_default','theme','global.menu_footer.php','Các chuyên mục chính','','primary','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),(30,'mobile_default','theme','global.company_info.php','Công ty chủ quản','','primary','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984516;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(31,'phubinh','theme','global.company_info.php','Công ty chủ quản','','no_title','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:23:\"Công ty Phú Bình Pro\";s:16:\"company_sortname\";s:14:\"PHUBINHPRO.LTD\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:69:\"226 Huỳnh Thúc Kháng, An Xuân, Tam Kỳ, Quảng Nam, Việt Nam\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984516;s:14:\"company_maplng\";d:105.795475;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:10:\"0934741747\";s:11:\"company_fax\";s:10:\"0934741747\";s:13:\"company_email\";s:16:\"hotro@phubinh.vn\";s:15:\"company_website\";s:17:\"http://phubinh.vn\";}'),(32,'phubinh','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(33,'phubinh','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(34,'phubinh','theme','global.company_info.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:60:\"TRƯỜNG MẦM NON CHẤT LƯỢNG CAO THĂNG LONG KIDSMART\";s:16:\"company_sortname\";s:0:\"\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:53:\"Số 37, Ngõ 67, Đức Giang, Long Biên, Hà Nội\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.79547500000001;s:14:\"company_maplat\";d:20.984516000000013;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:22;s:13:\"company_phone\";s:24:\"04.38771889  04.36555959\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:33:\"truongthanglongkidsmart@gmail.com\";s:15:\"company_website\";s:18:\"mamnonlongbien.com\";}'),(37,'phubinh','theme','global.module_menu.php','Module Menu','','no_title','[LEFT]',0,'1',1,'6',0,1,''),(38,'phubinh','menu','global.metismenu.php','Giới thiệu','','about','[LEFT]',0,'1',1,'6',0,2,'a:2:{s:6:\"menuid\";i:2;s:12:\"title_length\";i:0;}'),(40,'phubinh','contact','global.block_facebook_like_box.php','Các chuyên mục chính','','no_title','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:7:{s:3:\"url\";s:38:\"http://www.facebook.com/webquangnam92/\";s:5:\"width\";i:292;s:6:\"height\";i:290;s:6:\"scheme\";s:5:\"light\";s:5:\"faces\";i:1;s:6:\"stream\";i:0;s:6:\"header\";i:1;}'),(41,'phubinh','menu','global.bootstrap.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(49,'phubinh','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:24:\"http://www.facebook.com/\";s:11:\"google_plus\";s:23:\"https://www.google.com/\";s:7:\"youtube\";s:24:\"https://www.youtube.com/\";s:7:\"twitter\";s:20:\"https://twitter.com/\";}'),(52,'phubinh','banners','global.banners.php','global banners','','no_title','[BANNER]',0,'1',1,'6',0,1,'a:1:{s:12:\"idplanbanner\";i:4;}'),(61,'phubinh','menu','global.treeview.php','global treeview','','no_title','[HEAD_RIGHT]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(63,'phubinh','slider','global.banner_slider.php','global banner slider','','no_title','[SLIDER]',0,'1',1,'6',0,1,'a:3:{s:6:\"size_w\";i:980;s:6:\"size_h\";i:380;s:10:\"responsive\";i:1;}'),(64,'phubinh','freecontent','global.free_content.php','Tại sao nên chọn chúng tôi?','','','[NEWS_1]',0,'1',1,'6',0,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(65,'phubinh','banners','global.banners.php','global banners','','no_title','[BANNER]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:5;}'),(66,'phubinh','videos','global.block_cat_quickplay.php','Videos','','primary','[NEWS_2]',0,'1',1,'6',0,1,'a:3:{s:5:\"catid\";i:1;s:6:\"numrow\";i:5;s:9:\"show_logo\";i:0;}'),(67,'phubinh','news','global.block_news_cat.php','Tin tức - Sự kiện','','primary','[NEWS]',0,'1',1,'6',0,1,'a:6:{s:5:\"catid\";a:1:{i:0;s:1:\"1\";}s:6:\"numrow\";i:3;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),(68,'phubinh','theme','global.copyright.php','global copyright','','no_title','[COPYRING]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:36:\"Website mẫu dịch vụ bảo vệ\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:23:\"Công ty Phú Bình pro\";s:10:\"design_url\";s:18:\"http://phubinh.vn/\";s:13:\"siteterms_url\";s:35:\"/index.php?language=vi&nv=siteterms\";}'),(69,'phubinh','news','global.block_news.php','Thông tin doanh nghiệp &amp; khách hàng','','simple','[NEWS_3]',0,'1',1,'6',0,1,'a:6:{s:5:\"catid\";a:1:{i:0;s:1:\"2\";}s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),(70,'phubinh','menu','global.metismenu.php','global metismenu','','no_title','[MOBILE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(71,'phubinh','dich-vu','global.page_list.php','Chúng tôi cung cấp các dịch vụ','','simple','[PAGE]',0,'1',1,'6',0,1,'a:2:{s:12:\"title_length\";i:0;s:6:\"numrow\";i:6;}'),(72,'phubinh','banners','global.banners.php','Dịch vụ mới','','border','[RIGHT]',0,'1',1,'6',1,1,'a:1:{s:12:\"idplanbanner\";i:6;}');
/*!40000 ALTER TABLE `nv4_vi_blocks_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_blocks_weight`
--

DROP TABLE IF EXISTS `nv4_vi_blocks_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `func_id` mediumint(8) NOT NULL DEFAULT 0,
  `weight` mediumint(8) NOT NULL DEFAULT 0,
  UNIQUE KEY `bid` (`bid`,`func_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

LOCK TABLES `nv4_vi_blocks_weight` WRITE;
/*!40000 ALTER TABLE `nv4_vi_blocks_weight` DISABLE KEYS */;
INSERT INTO `nv4_vi_blocks_weight` VALUES (16,1,1),(16,38,1),(16,39,1),(16,40,1),(16,41,1),(16,47,1),(16,48,1),(16,49,1),(16,50,1),(16,51,1),(16,61,1),(16,64,1),(16,4,1),(16,5,1),(16,6,1),(16,7,1),(16,8,1),(16,9,1),(16,10,1),(16,11,1),(16,12,1),(16,52,1),(16,63,1),(16,55,1),(16,56,1),(16,31,1),(16,32,1),(16,33,1),(16,34,1),(16,35,1),(16,36,1),(16,37,1),(16,58,1),(16,59,1),(16,60,1),(16,19,1),(16,20,1),(16,21,1),(16,22,1),(16,23,1),(16,24,1),(16,25,1),(16,26,1),(16,27,1),(16,28,1),(16,29,1),(16,62,1),(18,1,1),(18,38,1),(18,39,1),(18,40,1),(18,41,1),(18,47,1),(18,48,1),(18,49,1),(18,50,1),(18,51,1),(18,61,1),(18,64,1),(18,4,1),(18,5,1),(18,6,1),(18,7,1),(18,8,1),(18,9,1),(18,10,1),(18,11,1),(18,12,1),(18,52,1),(18,63,1),(18,55,1),(18,56,1),(18,31,1),(18,32,1),(18,33,1),(18,34,1),(18,35,1),(18,36,1),(18,37,1),(18,58,1),(18,59,1),(18,60,1),(18,19,1),(18,20,1),(18,21,1),(18,22,1),(18,23,1),(18,24,1),(18,25,1),(18,26,1),(18,27,1),(18,28,1),(18,29,1),(18,62,1),(21,1,1),(21,38,1),(21,39,1),(21,40,1),(21,41,1),(21,47,1),(21,48,1),(21,49,1),(21,50,1),(21,51,1),(21,61,1),(21,64,1),(21,4,1),(21,5,1),(21,6,1),(21,7,1),(21,8,1),(21,9,1),(21,10,1),(21,11,1),(21,12,1),(21,52,1),(21,63,1),(21,55,1),(21,56,1),(21,31,1),(21,32,1),(21,33,1),(21,34,1),(21,35,1),(21,36,1),(21,37,1),(21,58,1),(21,59,1),(21,60,1),(21,19,1),(21,20,1),(21,21,1),(21,22,1),(21,23,1),(21,24,1),(21,25,1),(21,26,1),(21,27,1),(21,28,1),(21,29,1),(21,62,1),(11,1,1),(11,38,1),(11,39,1),(11,40,1),(11,41,1),(11,47,1),(11,48,1),(11,49,1),(11,50,1),(11,51,1),(11,61,1),(11,64,1),(11,4,1),(11,5,1),(11,6,1),(11,7,1),(11,8,1),(11,9,1),(11,10,1),(11,11,1),(11,12,1),(11,52,1),(11,63,1),(11,55,1),(11,56,1),(11,31,1),(11,32,1),(11,33,1),(11,34,1),(11,35,1),(11,36,1),(11,37,1),(11,58,1),(11,59,1),(11,60,1),(11,19,1),(11,20,1),(11,21,1),(11,22,1),(11,23,1),(11,24,1),(11,25,1),(11,26,1),(11,27,1),(11,28,1),(11,29,1),(11,62,1),(12,1,2),(12,38,2),(12,39,2),(12,40,2),(12,41,2),(12,47,2),(12,48,2),(12,49,2),(12,50,2),(12,51,2),(12,61,2),(12,64,2),(12,4,2),(12,5,2),(12,6,2),(12,7,2),(12,8,2),(12,9,2),(12,10,2),(12,11,2),(12,12,2),(12,52,2),(12,63,2),(12,55,2),(12,56,2),(12,31,2),(12,32,2),(12,33,2),(12,34,2),(12,35,2),(12,36,2),(12,37,2),(12,58,2),(12,59,2),(12,60,2),(12,19,2),(12,20,2),(12,21,2),(12,22,2),(12,23,2),(12,24,2),(12,25,2),(12,26,2),(12,27,2),(12,28,2),(12,29,2),(12,62,2),(3,4,1),(3,5,1),(3,6,1),(3,7,1),(3,8,1),(3,9,1),(3,10,1),(3,11,1),(3,12,1),(4,19,1),(4,20,1),(4,21,1),(4,22,1),(4,23,1),(4,24,1),(4,25,1),(4,26,1),(4,27,1),(4,28,1),(4,31,1),(4,32,1),(4,33,1),(4,34,1),(4,35,1),(4,36,1),(4,37,1),(5,1,1),(5,38,1),(5,39,1),(5,40,1),(5,41,1),(5,47,1),(5,48,1),(5,49,1),(5,50,1),(5,51,1),(5,61,1),(5,64,1),(5,4,2),(5,5,2),(5,6,2),(5,7,2),(5,8,2),(5,9,2),(5,10,2),(5,11,2),(5,12,2),(5,52,1),(5,63,1),(5,55,1),(5,56,1),(5,31,2),(5,32,2),(5,33,2),(5,34,2),(5,35,2),(5,36,2),(5,37,2),(5,58,1),(5,59,1),(5,60,1),(5,19,2),(5,20,2),(5,21,2),(5,22,2),(5,23,2),(5,24,2),(5,25,2),(5,26,2),(5,27,2),(5,28,2),(5,29,1),(5,62,1),(6,1,2),(6,38,2),(6,39,2),(6,40,2),(6,41,2),(6,47,2),(6,48,2),(6,49,2),(6,50,2),(6,51,2),(6,61,2),(6,64,2),(6,4,3),(6,5,3),(6,6,3),(6,7,3),(6,8,3),(6,9,3),(6,10,3),(6,11,3),(6,12,3),(6,52,2),(6,63,2),(6,55,2),(6,56,2),(6,31,3),(6,32,3),(6,33,3),(6,34,3),(6,35,3),(6,36,3),(6,37,3),(6,58,2),(6,59,2),(6,60,2),(6,19,3),(6,20,3),(6,21,3),(6,22,3),(6,23,3),(6,24,3),(6,25,3),(6,26,3),(6,27,3),(6,28,3),(6,29,2),(6,62,2),(20,1,1),(20,38,1),(20,39,1),(20,40,1),(20,41,1),(20,47,1),(20,48,1),(20,49,1),(20,50,1),(20,51,1),(20,61,1),(20,64,1),(20,4,1),(20,5,1),(20,6,1),(20,7,1),(20,8,1),(20,9,1),(20,10,1),(20,11,1),(20,12,1),(20,52,1),(20,63,1),(20,55,1),(20,56,1),(20,31,1),(20,32,1),(20,33,1),(20,34,1),(20,35,1),(20,36,1),(20,37,1),(20,58,1),(20,59,1),(20,60,1),(20,19,1),(20,20,1),(20,21,1),(20,22,1),(20,23,1),(20,24,1),(20,25,1),(20,26,1),(20,27,1),(20,28,1),(20,29,1),(20,62,1),(17,1,1),(17,38,1),(17,39,1),(17,40,1),(17,41,1),(17,47,1),(17,48,1),(17,49,1),(17,50,1),(17,51,1),(17,61,1),(17,64,1),(17,4,1),(17,5,1),(17,6,1),(17,7,1),(17,8,1),(17,9,1),(17,10,1),(17,11,1),(17,12,1),(17,52,1),(17,63,1),(17,55,1),(17,56,1),(17,31,1),(17,32,1),(17,33,1),(17,34,1),(17,35,1),(17,36,1),(17,37,1),(17,58,1),(17,59,1),(17,60,1),(17,19,1),(17,20,1),(17,21,1),(17,22,1),(17,23,1),(17,24,1),(17,25,1),(17,26,1),(17,27,1),(17,28,1),(17,29,1),(17,62,1),(15,1,1),(15,38,1),(15,39,1),(15,40,1),(15,41,1),(15,47,1),(15,48,1),(15,49,1),(15,50,1),(15,51,1),(15,61,1),(15,64,1),(15,4,1),(15,5,1),(15,6,1),(15,7,1),(15,8,1),(15,9,1),(15,10,1),(15,11,1),(15,12,1),(15,52,1),(15,63,1),(15,55,1),(15,56,1),(15,31,1),(15,32,1),(15,33,1),(15,34,1),(15,35,1),(15,36,1),(15,37,1),(15,58,1),(15,59,1),(15,60,1),(15,19,1),(15,20,1),(15,21,1),(15,22,1),(15,23,1),(15,24,1),(15,25,1),(15,26,1),(15,27,1),(15,28,1),(15,29,1),(15,62,1),(13,1,1),(13,38,1),(13,39,1),(13,40,1),(13,41,1),(13,47,1),(13,48,1),(13,49,1),(13,50,1),(13,51,1),(13,61,1),(13,64,1),(13,4,1),(13,5,1),(13,6,1),(13,7,1),(13,8,1),(13,9,1),(13,10,1),(13,11,1),(13,12,1),(13,52,1),(13,63,1),(13,55,1),(13,56,1),(13,31,1),(13,32,1),(13,33,1),(13,34,1),(13,35,1),(13,36,1),(13,37,1),(13,58,1),(13,59,1),(13,60,1),(13,19,1),(13,20,1),(13,21,1),(13,22,1),(13,23,1),(13,24,1),(13,25,1),(13,26,1),(13,27,1),(13,28,1),(13,29,1),(13,62,1),(14,1,2),(14,38,2),(14,39,2),(14,40,2),(14,41,2),(14,47,2),(14,48,2),(14,49,2),(14,50,2),(14,51,2),(14,61,2),(14,64,2),(14,4,2),(14,5,2),(14,6,2),(14,7,2),(14,8,2),(14,9,2),(14,10,2),(14,11,2),(14,12,2),(14,52,2),(14,63,2),(14,55,2),(14,56,2),(14,31,2),(14,32,2),(14,33,2),(14,34,2),(14,35,2),(14,36,2),(14,37,2),(14,58,2),(14,59,2),(14,60,2),(14,19,2),(14,20,2),(14,21,2),(14,22,2),(14,23,2),(14,24,2),(14,25,2),(14,26,2),(14,27,2),(14,28,2),(14,29,2),(14,62,2),(7,1,1),(7,38,1),(7,39,1),(7,40,1),(7,41,1),(7,47,1),(7,48,1),(7,49,1),(7,50,1),(7,51,1),(7,61,1),(7,64,1),(7,4,1),(7,5,1),(7,6,1),(7,7,1),(7,8,1),(7,9,1),(7,10,1),(7,11,1),(7,12,1),(7,52,1),(7,63,1),(7,55,1),(7,56,1),(7,31,1),(7,32,1),(7,33,1),(7,34,1),(7,35,1),(7,36,1),(7,37,1),(7,58,1),(7,59,1),(7,60,1),(7,19,1),(7,20,1),(7,21,1),(7,22,1),(7,23,1),(7,24,1),(7,25,1),(7,26,1),(7,27,1),(7,28,1),(7,29,1),(7,62,1),(8,1,2),(8,38,2),(8,39,2),(8,40,2),(8,41,2),(8,47,2),(8,48,2),(8,49,2),(8,50,2),(8,51,2),(8,61,2),(8,64,2),(8,4,2),(8,5,2),(8,6,2),(8,7,2),(8,8,2),(8,9,2),(8,10,2),(8,11,2),(8,12,2),(8,52,2),(8,63,2),(8,55,2),(8,56,2),(8,31,2),(8,32,2),(8,33,2),(8,34,2),(8,35,2),(8,36,2),(8,37,2),(8,58,2),(8,59,2),(8,60,2),(8,19,2),(8,20,2),(8,21,2),(8,22,2),(8,23,2),(8,24,2),(8,25,2),(8,26,2),(8,27,2),(8,28,2),(8,29,2),(8,62,2),(9,1,3),(9,38,3),(9,39,3),(9,40,3),(9,41,3),(9,47,3),(9,48,3),(9,49,3),(9,50,3),(9,51,3),(9,61,3),(9,64,3),(9,4,3),(9,5,3),(9,6,3),(9,7,3),(9,8,3),(9,9,3),(9,10,3),(9,11,3),(9,12,3),(9,52,3),(9,63,3),(9,55,3),(9,56,3),(9,31,3),(9,32,3),(9,33,3),(9,34,3),(9,35,3),(9,36,3),(9,37,3),(9,58,3),(9,59,3),(9,60,3),(9,19,3),(9,20,3),(9,21,3),(9,22,3),(9,23,3),(9,24,3),(9,25,3),(9,26,3),(9,27,3),(9,28,3),(9,29,3),(9,62,3),(10,1,4),(10,38,4),(10,39,4),(10,40,4),(10,41,4),(10,47,4),(10,48,4),(10,49,4),(10,50,4),(10,51,4),(10,61,4),(10,64,4),(10,4,4),(10,5,4),(10,6,4),(10,7,4),(10,8,4),(10,9,4),(10,10,4),(10,11,4),(10,12,4),(10,52,4),(10,63,4),(10,55,4),(10,56,4),(10,31,4),(10,32,4),(10,33,4),(10,34,4),(10,35,4),(10,36,4),(10,37,4),(10,58,4),(10,59,4),(10,60,4),(10,19,4),(10,20,4),(10,21,4),(10,22,4),(10,23,4),(10,24,4),(10,25,4),(10,26,4),(10,27,4),(10,28,4),(10,29,4),(10,62,4),(19,1,1),(19,38,1),(19,39,1),(19,40,1),(19,41,1),(19,47,1),(19,48,1),(19,49,1),(19,50,1),(19,51,1),(19,61,1),(19,64,1),(19,4,1),(19,5,1),(19,6,1),(19,7,1),(19,8,1),(19,9,1),(19,10,1),(19,11,1),(19,12,1),(19,52,1),(19,63,1),(19,55,1),(19,56,1),(19,31,1),(19,32,1),(19,33,1),(19,34,1),(19,35,1),(19,36,1),(19,37,1),(19,58,1),(19,59,1),(19,60,1),(19,19,1),(19,20,1),(19,21,1),(19,22,1),(19,23,1),(19,24,1),(19,25,1),(19,26,1),(19,27,1),(19,28,1),(19,29,1),(19,62,1),(1,4,1),(2,4,2),(30,1,1),(30,38,1),(30,39,1),(30,40,1),(30,41,1),(30,47,1),(30,48,1),(30,49,1),(30,50,1),(30,51,1),(30,61,1),(30,64,1),(30,4,1),(30,5,1),(30,6,1),(30,7,1),(30,8,1),(30,9,1),(30,10,1),(30,11,1),(30,12,1),(30,52,1),(30,63,1),(30,55,1),(30,56,1),(30,31,1),(30,32,1),(30,33,1),(30,34,1),(30,35,1),(30,36,1),(30,37,1),(30,58,1),(30,59,1),(30,60,1),(30,19,1),(30,20,1),(30,21,1),(30,22,1),(30,23,1),(30,24,1),(30,25,1),(30,26,1),(30,27,1),(30,28,1),(30,29,1),(30,62,1),(28,1,1),(28,38,1),(28,39,1),(28,40,1),(28,41,1),(28,47,1),(28,48,1),(28,49,1),(28,50,1),(28,51,1),(28,61,1),(28,64,1),(28,4,1),(28,5,1),(28,6,1),(28,7,1),(28,8,1),(28,9,1),(28,10,1),(28,11,1),(28,12,1),(28,52,1),(28,63,1),(28,55,1),(28,56,1),(28,31,1),(28,32,1),(28,33,1),(28,34,1),(28,35,1),(28,36,1),(28,37,1),(28,58,1),(28,59,1),(28,60,1),(28,19,1),(28,20,1),(28,21,1),(28,22,1),(28,23,1),(28,24,1),(28,25,1),(28,26,1),(28,27,1),(28,28,1),(28,29,1),(28,62,1),(29,1,1),(29,38,1),(29,39,1),(29,40,1),(29,41,1),(29,47,1),(29,48,1),(29,49,1),(29,50,1),(29,51,1),(29,61,1),(29,64,1),(29,4,1),(29,5,1),(29,6,1),(29,7,1),(29,8,1),(29,9,1),(29,10,1),(29,11,1),(29,12,1),(29,52,1),(29,63,1),(29,55,1),(29,56,1),(29,31,1),(29,32,1),(29,33,1),(29,34,1),(29,35,1),(29,36,1),(29,37,1),(29,58,1),(29,59,1),(29,60,1),(29,19,1),(29,20,1),(29,21,1),(29,22,1),(29,23,1),(29,24,1),(29,25,1),(29,26,1),(29,27,1),(29,28,1),(29,29,1),(29,62,1),(22,1,1),(22,38,1),(22,39,1),(22,40,1),(22,41,1),(22,47,1),(22,48,1),(22,49,1),(22,50,1),(22,51,1),(22,61,1),(22,64,1),(22,4,1),(22,5,1),(22,6,1),(22,7,1),(22,8,1),(22,9,1),(22,10,1),(22,11,1),(22,12,1),(22,52,1),(22,63,1),(22,55,1),(22,56,1),(22,31,1),(22,32,1),(22,33,1),(22,34,1),(22,35,1),(22,36,1),(22,37,1),(22,58,1),(22,59,1),(22,60,1),(22,19,1),(22,20,1),(22,21,1),(22,22,1),(22,23,1),(22,24,1),(22,25,1),(22,26,1),(22,27,1),(22,28,1),(22,29,1),(22,62,1),(23,1,2),(23,38,2),(23,39,2),(23,40,2),(23,41,2),(23,47,2),(23,48,2),(23,49,2),(23,50,2),(23,51,2),(23,61,2),(23,64,2),(23,4,2),(23,5,2),(23,6,2),(23,7,2),(23,8,2),(23,9,2),(23,10,2),(23,11,2),(23,12,2),(23,52,2),(23,63,2),(23,55,2),(23,56,2),(23,31,2),(23,32,2),(23,33,2),(23,34,2),(23,35,2),(23,36,2),(23,37,2),(23,58,2),(23,59,2),(23,60,2),(23,19,2),(23,20,2),(23,21,2),(23,22,2),(23,23,2),(23,24,2),(23,25,2),(23,26,2),(23,27,2),(23,28,2),(23,29,2),(23,62,2),(24,1,1),(24,38,1),(24,39,1),(24,40,1),(24,41,1),(24,47,1),(24,48,1),(24,49,1),(24,50,1),(24,51,1),(24,61,1),(24,64,1),(24,4,1),(24,5,1),(24,6,1),(24,7,1),(24,8,1),(24,9,1),(24,10,1),(24,11,1),(24,12,1),(24,52,1),(24,63,1),(24,55,1),(24,56,1),(24,31,1),(24,32,1),(24,33,1),(24,34,1),(24,35,1),(24,36,1),(24,37,1),(24,58,1),(24,59,1),(24,60,1),(24,19,1),(24,20,1),(24,21,1),(24,22,1),(24,23,1),(24,24,1),(24,25,1),(24,26,1),(24,27,1),(24,28,1),(24,29,1),(24,62,1),(25,1,2),(25,38,2),(25,39,2),(25,40,2),(25,41,2),(25,47,2),(25,48,2),(25,49,2),(25,50,2),(25,51,2),(25,61,2),(25,64,2),(25,4,2),(25,5,2),(25,6,2),(25,7,2),(25,8,2),(25,9,2),(25,10,2),(25,11,2),(25,12,2),(25,52,2),(25,63,2),(25,55,2),(25,56,2),(25,31,2),(25,32,2),(25,33,2),(25,34,2),(25,35,2),(25,36,2),(25,37,2),(25,58,2),(25,59,2),(25,60,2),(25,19,2),(25,20,2),(25,21,2),(25,22,2),(25,23,2),(25,24,2),(25,25,2),(25,26,2),(25,27,2),(25,28,2),(25,29,2),(25,62,2),(26,1,3),(26,38,3),(26,39,3),(26,40,3),(26,41,3),(26,47,3),(26,48,3),(26,49,3),(26,50,3),(26,51,3),(26,61,3),(26,64,3),(26,4,3),(26,5,3),(26,6,3),(26,7,3),(26,8,3),(26,9,3),(26,10,3),(26,11,3),(26,12,3),(26,52,3),(26,63,3),(26,55,3),(26,56,3),(26,31,3),(26,32,3),(26,33,3),(26,34,3),(26,35,3),(26,36,3),(26,37,3),(26,58,3),(26,59,3),(26,60,3),(26,19,3),(26,20,3),(26,21,3),(26,22,3),(26,23,3),(26,24,3),(26,25,3),(26,26,3),(26,27,3),(26,28,3),(26,29,3),(26,62,3),(27,1,4),(27,38,4),(27,39,4),(27,40,4),(27,41,4),(27,47,4),(27,48,4),(27,49,4),(27,50,4),(27,51,4),(27,61,4),(27,64,4),(27,4,4),(27,5,4),(27,6,4),(27,7,4),(27,8,4),(27,9,4),(27,10,4),(27,11,4),(27,12,4),(27,52,4),(27,63,4),(27,55,4),(27,56,4),(27,31,4),(27,32,4),(27,33,4),(27,34,4),(27,35,4),(27,36,4),(27,37,4),(27,58,4),(27,59,4),(27,60,4),(27,19,4),(27,20,4),(27,21,4),(27,22,4),(27,23,4),(27,24,4),(27,25,4),(27,26,4),(27,27,4),(27,28,4),(27,29,4),(27,62,4),(31,1,1),(31,38,1),(31,39,1),(31,40,1),(31,41,1),(31,47,1),(31,48,1),(31,49,1),(31,50,1),(31,51,1),(31,61,1),(31,64,1),(31,4,1),(31,5,1),(31,6,1),(31,7,1),(31,8,1),(31,9,1),(31,10,1),(31,11,1),(31,12,1),(31,52,1),(31,63,1),(31,55,1),(31,56,1),(31,31,1),(31,32,1),(31,33,1),(31,34,1),(31,35,1),(31,36,1),(31,37,1),(31,58,1),(31,59,1),(31,60,1),(31,19,1),(31,20,1),(31,21,1),(31,22,1),(31,23,1),(31,24,1),(31,25,1),(31,26,1),(31,27,1),(31,28,1),(31,29,1),(31,62,1),(32,1,1),(32,38,1),(32,39,1),(32,40,1),(32,41,1),(32,47,1),(32,48,1),(32,49,1),(32,50,1),(32,51,1),(32,61,1),(32,64,1),(32,4,1),(32,5,1),(32,6,1),(32,7,1),(32,8,1),(32,9,1),(32,10,1),(32,11,1),(32,12,1),(32,52,1),(32,63,1),(32,55,1),(32,56,1),(32,31,1),(32,32,1),(32,33,1),(32,34,1),(32,35,1),(32,36,1),(32,37,1),(32,58,1),(32,59,1),(32,60,1),(32,19,1),(32,20,1),(32,21,1),(32,22,1),(32,23,1),(32,24,1),(32,25,1),(32,26,1),(32,27,1),(32,28,1),(32,29,1),(32,62,1),(33,1,1),(33,38,1),(33,39,1),(33,40,1),(33,41,1),(33,47,1),(33,48,1),(33,49,1),(33,50,1),(33,51,1),(33,61,1),(33,64,1),(33,4,1),(33,5,1),(33,6,1),(33,7,1),(33,8,1),(33,9,1),(33,10,1),(33,11,1),(33,12,1),(33,52,1),(33,63,1),(33,55,1),(33,56,1),(33,31,1),(33,32,1),(33,33,1),(33,34,1),(33,35,1),(33,36,1),(33,37,1),(33,58,1),(33,59,1),(33,60,1),(33,19,1),(33,20,1),(33,21,1),(33,22,1),(33,23,1),(33,24,1),(33,25,1),(33,26,1),(33,27,1),(33,28,1),(33,29,1),(33,62,1),(34,1,1),(34,38,1),(34,39,1),(34,40,1),(34,41,1),(34,47,1),(34,48,1),(34,49,1),(34,50,1),(34,51,1),(34,61,1),(34,64,1),(34,4,1),(34,5,1),(34,6,1),(34,7,1),(34,8,1),(34,9,1),(34,10,1),(34,11,1),(34,12,1),(34,52,1),(34,63,1),(34,55,1),(34,56,1),(34,31,1),(34,32,1),(34,33,1),(34,34,1),(34,35,1),(34,36,1),(34,37,1),(34,58,1),(34,59,1),(34,60,1),(34,19,1),(34,20,1),(34,21,1),(34,22,1),(34,23,1),(34,24,1),(34,25,1),(34,26,1),(34,27,1),(34,28,1),(34,29,1),(34,62,1),(37,19,1),(37,20,1),(37,21,1),(37,22,1),(37,23,1),(37,24,1),(37,25,1),(37,26,1),(37,27,1),(37,28,1),(37,31,1),(37,32,1),(37,33,1),(37,34,1),(37,35,1),(37,36,1),(37,37,1),(38,1,1),(40,1,1),(40,38,1),(40,39,1),(40,40,1),(40,41,1),(40,47,1),(40,48,1),(40,49,1),(40,50,1),(40,51,1),(40,61,1),(40,64,1),(40,4,1),(40,5,1),(40,6,1),(40,7,1),(40,8,1),(40,9,1),(40,10,1),(40,11,1),(40,12,1),(40,52,1),(40,63,1),(40,55,1),(40,56,1),(40,31,1),(40,32,1),(40,33,1),(40,34,1),(40,35,1),(40,36,1),(40,37,1),(40,58,1),(40,59,1),(40,60,1),(40,19,1),(40,20,1),(40,21,1),(40,22,1),(40,23,1),(40,24,1),(40,25,1),(40,26,1),(40,27,1),(40,28,1),(40,29,1),(40,62,1),(41,1,1),(41,38,1),(41,39,1),(41,40,1),(41,41,1),(41,47,1),(41,48,1),(41,49,1),(41,50,1),(41,51,1),(41,61,1),(41,64,1),(41,4,1),(41,5,1),(41,6,1),(41,7,1),(41,8,1),(41,9,1),(41,10,1),(41,11,1),(41,12,1),(41,52,1),(41,63,1),(41,55,1),(41,56,1),(41,31,1),(41,32,1),(41,33,1),(41,34,1),(41,35,1),(41,36,1),(41,37,1),(41,58,1),(41,59,1),(41,60,1),(41,19,1),(41,20,1),(41,21,1),(41,22,1),(41,23,1),(41,24,1),(41,25,1),(41,26,1),(41,27,1),(41,28,1),(41,29,1),(41,62,1),(49,1,1),(49,38,1),(49,39,1),(49,40,1),(49,41,1),(49,47,1),(49,48,1),(49,49,1),(49,50,1),(49,51,1),(49,61,1),(49,64,1),(49,4,1),(49,5,1),(49,6,1),(49,7,1),(49,8,1),(49,9,1),(49,10,1),(49,11,1),(49,12,1),(49,52,1),(49,63,1),(49,55,1),(49,56,1),(49,31,1),(49,32,1),(49,33,1),(49,34,1),(49,35,1),(49,36,1),(49,37,1),(49,58,1),(49,59,1),(49,60,1),(49,19,1),(49,20,1),(49,21,1),(49,22,1),(49,23,1),(49,24,1),(49,25,1),(49,26,1),(49,27,1),(49,28,1),(49,29,1),(49,62,1),(52,4,1),(16,68,1),(16,77,1),(16,66,1),(16,65,1),(16,67,1),(16,73,1),(16,76,1),(18,68,1),(18,77,1),(18,66,1),(18,65,1),(18,67,1),(18,73,1),(18,76,1),(21,68,1),(21,77,1),(21,66,1),(21,65,1),(21,67,1),(21,73,1),(21,76,1),(11,68,1),(11,77,1),(11,66,1),(11,65,1),(11,67,1),(11,73,1),(11,76,1),(12,68,2),(12,77,2),(12,66,2),(12,65,2),(12,67,2),(12,73,2),(12,76,2),(5,68,1),(5,77,1),(5,66,1),(5,65,1),(5,67,1),(5,73,1),(5,76,1),(6,68,2),(6,77,2),(6,66,2),(6,65,2),(6,67,2),(6,73,2),(6,76,2),(20,68,1),(20,77,1),(20,66,1),(20,65,1),(20,67,1),(20,73,1),(20,76,1),(17,68,1),(17,77,1),(17,66,1),(17,65,1),(17,67,1),(17,73,1),(17,76,1),(15,68,1),(15,77,1),(15,66,1),(15,65,1),(15,67,1),(15,73,1),(15,76,1),(13,68,1),(13,77,1),(13,66,1),(13,65,1),(13,67,1),(13,73,1),(13,76,1),(14,68,2),(14,77,2),(14,66,2),(14,65,2),(14,67,2),(14,73,2),(14,76,2),(7,68,1),(7,77,1),(7,66,1),(7,65,1),(7,67,1),(7,73,1),(7,76,1),(8,68,2),(8,77,2),(8,66,2),(8,65,2),(8,67,2),(8,73,2),(8,76,2),(9,68,3),(9,77,3),(9,66,3),(9,65,3),(9,67,3),(9,73,3),(9,76,3),(10,68,4),(10,77,4),(10,66,4),(10,65,4),(10,67,4),(10,73,4),(10,76,4),(19,68,1),(19,77,1),(19,66,1),(19,65,1),(19,67,1),(19,73,1),(19,76,1),(30,68,1),(30,77,1),(30,66,1),(30,65,1),(30,67,1),(30,73,1),(30,76,1),(28,68,1),(28,77,1),(28,66,1),(28,65,1),(28,67,1),(28,73,1),(28,76,1),(29,68,1),(29,77,1),(29,66,1),(29,65,1),(29,67,1),(29,73,1),(29,76,1),(22,68,1),(22,77,1),(22,66,1),(22,65,1),(22,67,1),(22,73,1),(22,76,1),(23,68,2),(23,77,2),(23,66,2),(23,65,2),(23,67,2),(23,73,2),(23,76,2),(24,68,1),(24,77,1),(24,66,1),(24,65,1),(24,67,1),(24,73,1),(24,76,1),(25,68,2),(25,77,2),(25,66,2),(25,65,2),(25,67,2),(25,73,2),(25,76,2),(26,68,3),(26,77,3),(26,66,3),(26,65,3),(26,67,3),(26,73,3),(26,76,3),(27,68,4),(27,77,4),(27,66,4),(27,65,4),(27,67,4),(27,73,4),(27,76,4),(68,39,1),(68,37,1),(68,41,1),(68,63,1),(68,40,1),(68,38,1),(68,62,1),(32,68,1),(32,77,1),(32,66,1),(32,65,1),(32,67,1),(32,73,1),(32,76,1),(33,68,1),(33,77,1),(33,66,1),(33,65,1),(33,67,1),(33,73,1),(33,76,1),(34,68,1),(34,77,1),(34,66,1),(34,65,1),(34,67,1),(34,73,1),(34,76,1),(68,28,1),(68,10,1),(68,22,1),(68,23,1),(68,21,1),(68,20,1),(68,19,1),(41,68,1),(41,77,1),(41,66,1),(41,65,1),(41,67,1),(41,73,1),(41,76,1),(16,79,1),(16,82,1),(16,78,1),(18,79,1),(18,82,1),(18,78,1),(21,79,1),(21,82,1),(21,78,1),(11,79,1),(11,82,1),(11,78,1),(12,79,2),(12,82,2),(12,78,2),(5,79,1),(5,82,1),(5,78,1),(6,79,2),(6,82,2),(6,78,2),(20,79,1),(20,82,1),(20,78,1),(17,79,1),(17,82,1),(17,78,1),(15,79,1),(15,82,1),(15,78,1),(13,79,1),(13,82,1),(13,78,1),(14,79,2),(14,82,2),(14,78,2),(7,79,1),(7,82,1),(7,78,1),(8,79,2),(8,82,2),(8,78,2),(9,79,3),(9,82,3),(9,78,3),(10,79,4),(10,82,4),(10,78,4),(19,79,1),(19,82,1),(19,78,1),(30,79,1),(30,82,1),(30,78,1),(28,79,1),(28,82,1),(28,78,1),(29,79,1),(29,82,1),(29,78,1),(22,79,1),(22,82,1),(22,78,1),(23,79,2),(23,82,2),(23,78,2),(24,79,1),(24,82,1),(24,78,1),(25,79,2),(25,82,2),(25,78,2),(26,79,3),(26,82,3),(26,78,3),(27,79,4),(27,82,4),(27,78,4),(68,35,1),(68,34,1),(68,36,1),(32,79,1),(32,82,1),(32,78,1),(33,79,1),(33,82,1),(33,78,1),(34,79,1),(34,82,1),(34,78,1),(68,7,1),(68,11,1),(68,9,1),(41,79,1),(41,82,1),(41,78,1),(16,86,1),(16,95,1),(16,84,1),(16,83,1),(16,85,1),(16,91,1),(16,94,1),(18,86,1),(18,95,1),(18,84,1),(18,83,1),(18,85,1),(18,91,1),(18,94,1),(21,86,1),(21,95,1),(21,84,1),(21,83,1),(21,85,1),(21,91,1),(21,94,1),(11,86,1),(11,95,1),(11,84,1),(11,83,1),(11,85,1),(11,91,1),(11,94,1),(12,86,2),(12,95,2),(12,84,2),(12,83,2),(12,85,2),(12,91,2),(12,94,2),(5,86,1),(5,95,1),(5,84,1),(5,83,1),(5,85,1),(5,91,1),(5,94,1),(6,86,2),(6,95,2),(6,84,2),(6,83,2),(6,85,2),(6,91,2),(6,94,2),(20,86,1),(20,95,1),(20,84,1),(20,83,1),(20,85,1),(20,91,1),(20,94,1),(17,86,1),(17,95,1),(17,84,1),(17,83,1),(17,85,1),(17,91,1),(17,94,1),(15,86,1),(15,95,1),(15,84,1),(15,83,1),(15,85,1),(15,91,1),(15,94,1),(13,86,1),(13,95,1),(13,84,1),(13,83,1),(13,85,1),(13,91,1),(13,94,1),(14,86,2),(14,95,2),(14,84,2),(14,83,2),(14,85,2),(14,91,2),(14,94,2),(7,86,1),(7,95,1),(7,84,1),(7,83,1),(7,85,1),(7,91,1),(7,94,1),(8,86,2),(8,95,2),(8,84,2),(8,83,2),(8,85,2),(8,91,2),(8,94,2),(9,86,3),(9,95,3),(9,84,3),(9,83,3),(9,85,3),(9,91,3),(9,94,3),(10,86,4),(10,95,4),(10,84,4),(10,83,4),(10,85,4),(10,91,4),(10,94,4),(19,86,1),(19,95,1),(19,84,1),(19,83,1),(19,85,1),(19,91,1),(19,94,1),(30,86,1),(30,95,1),(30,84,1),(30,83,1),(30,85,1),(30,91,1),(30,94,1),(28,86,1),(28,95,1),(28,84,1),(28,83,1),(28,85,1),(28,91,1),(28,94,1),(29,86,1),(29,95,1),(29,84,1),(29,83,1),(29,85,1),(29,91,1),(29,94,1),(22,86,1),(22,95,1),(22,84,1),(22,83,1),(22,85,1),(22,91,1),(22,94,1),(23,86,2),(23,95,2),(23,84,2),(23,83,2),(23,85,2),(23,91,2),(23,94,2),(24,86,1),(24,95,1),(24,84,1),(24,83,1),(24,85,1),(24,91,1),(24,94,1),(25,86,2),(25,95,2),(25,84,2),(25,83,2),(25,85,2),(25,91,2),(25,94,2),(26,86,3),(26,95,3),(26,84,3),(26,83,3),(26,85,3),(26,91,3),(26,94,3),(27,86,4),(27,95,4),(27,84,4),(27,83,4),(27,85,4),(27,91,4),(27,94,4),(68,61,1),(68,24,1),(68,32,1),(68,33,1),(68,31,1),(68,29,1),(68,26,1),(32,86,1),(32,95,1),(32,84,1),(32,83,1),(32,85,1),(32,91,1),(32,94,1),(33,86,1),(33,95,1),(33,84,1),(33,83,1),(33,85,1),(33,91,1),(33,94,1),(34,86,1),(34,95,1),(34,84,1),(34,83,1),(34,85,1),(34,91,1),(34,94,1),(68,5,1),(68,1,1),(68,12,1),(68,8,1),(68,6,1),(68,4,1),(68,3,1),(41,86,1),(41,95,1),(41,84,1),(41,83,1),(41,85,1),(41,91,1),(41,94,1),(16,97,1),(16,98,1),(18,97,1),(18,98,1),(21,97,1),(21,98,1),(11,97,1),(11,98,1),(12,97,2),(12,98,2),(5,97,1),(5,98,1),(6,97,2),(6,98,2),(20,97,1),(20,98,1),(17,97,1),(17,98,1),(15,97,1),(15,98,1),(13,97,1),(13,98,1),(14,97,2),(14,98,2),(7,97,1),(7,98,1),(8,97,2),(8,98,2),(9,97,3),(9,98,3),(10,97,4),(10,98,4),(19,97,1),(19,98,1),(30,97,1),(30,98,1),(28,97,1),(28,98,1),(29,97,1),(29,98,1),(22,97,1),(22,98,1),(23,97,2),(23,98,2),(24,97,1),(24,98,1),(25,97,2),(25,98,2),(26,97,3),(26,98,3),(27,97,4),(27,98,4),(31,97,1),(31,98,1),(32,97,1),(32,98,1),(33,97,1),(33,98,1),(34,97,1),(34,98,1),(40,97,1),(40,98,1),(41,97,1),(41,98,1),(49,97,1),(49,98,1),(61,97,1),(61,98,1),(61,1,1),(61,3,1),(61,4,1),(61,5,1),(61,6,1),(61,12,1),(61,8,1),(61,11,1),(61,7,1),(61,9,1),(61,10,1),(61,19,1),(61,20,1),(61,28,1),(61,21,1),(61,22,1),(61,23,1),(61,25,1),(61,27,1),(61,24,1),(61,26,1),(61,29,1),(61,61,1),(61,31,1),(61,32,1),(61,33,1),(61,34,1),(61,35,1),(61,36,1),(61,37,1),(61,62,1),(61,38,1),(61,39,1),(61,40,1),(61,41,1),(61,63,1),(61,64,1),(61,52,1),(61,54,1),(61,47,1),(61,48,1),(61,49,1),(61,50,1),(61,51,1),(61,55,1),(61,56,1),(61,58,1),(61,59,1),(61,60,1),(63,4,1),(64,4,1),(65,4,2),(16,100,1),(18,100,1),(21,100,1),(11,100,1),(12,100,2),(5,100,1),(6,100,2),(20,100,1),(17,100,1),(15,100,1),(13,100,1),(14,100,2),(7,100,1),(8,100,2),(9,100,3),(10,100,4),(19,100,1),(30,100,1),(28,100,1),(29,100,1),(22,100,1),(23,100,2),(24,100,1),(25,100,2),(26,100,3),(27,100,4),(68,27,1),(32,100,1),(33,100,1),(34,100,1),(61,100,1),(68,98,1),(41,100,1),(16,104,1),(16,107,1),(16,103,1),(18,104,1),(18,107,1),(18,103,1),(21,104,1),(21,107,1),(21,103,1),(11,104,1),(11,107,1),(11,103,1),(12,104,2),(12,107,2),(12,103,2),(5,104,1),(5,107,1),(5,103,1),(6,104,2),(6,107,2),(6,103,2),(20,104,1),(20,107,1),(20,103,1),(17,104,1),(17,107,1),(17,103,1),(15,104,1),(15,107,1),(15,103,1),(13,104,1),(13,107,1),(13,103,1),(14,104,2),(14,107,2),(14,103,2),(7,104,1),(7,107,1),(7,103,1),(8,104,2),(8,107,2),(8,103,2),(9,104,3),(9,107,3),(9,103,3),(10,104,4),(10,107,4),(10,103,4),(19,104,1),(19,107,1),(19,103,1),(30,104,1),(30,107,1),(30,103,1),(28,104,1),(28,107,1),(28,103,1),(29,104,1),(29,107,1),(29,103,1),(22,104,1),(22,107,1),(22,103,1),(23,104,2),(23,107,2),(23,103,2),(24,104,1),(24,107,1),(24,103,1),(25,104,2),(25,107,2),(25,103,2),(26,104,3),(26,107,3),(26,103,3),(27,104,4),(27,107,4),(27,103,4),(31,54,1),(31,3,1),(68,25,1),(32,104,1),(32,107,1),(32,103,1),(33,104,1),(33,107,1),(33,103,1),(34,104,1),(34,107,1),(34,103,1),(61,104,1),(61,107,1),(61,103,1),(40,54,1),(40,3,1),(68,97,1),(41,104,1),(41,107,1),(41,103,1),(49,54,1),(49,3,1),(16,111,1),(16,125,1),(16,113,1),(16,121,1),(16,112,1),(16,109,1),(16,108,1),(16,117,1),(16,122,1),(16,123,1),(16,120,1),(16,115,1),(18,111,1),(18,125,1),(18,113,1),(18,121,1),(18,112,1),(18,109,1),(18,108,1),(18,117,1),(18,122,1),(18,123,1),(18,120,1),(18,115,1),(21,111,1),(21,125,1),(21,113,1),(21,121,1),(21,112,1),(21,109,1),(21,108,1),(21,117,1),(21,122,1),(21,123,1),(21,120,1),(21,115,1),(11,111,1),(11,125,1),(11,113,1),(11,121,1),(11,112,1),(11,109,1),(11,108,1),(11,117,1),(11,122,1),(11,123,1),(11,120,1),(11,115,1),(12,111,2),(12,125,2),(12,113,2),(12,121,2),(12,112,2),(12,109,2),(12,108,2),(12,117,2),(12,122,2),(12,123,2),(12,120,2),(12,115,2),(5,111,1),(5,125,1),(5,113,1),(5,121,1),(5,112,1),(5,109,1),(5,108,1),(5,117,1),(5,122,1),(5,123,1),(5,120,1),(5,115,1),(6,111,2),(6,125,2),(6,113,2),(6,121,2),(6,112,2),(6,109,2),(6,108,2),(6,117,2),(6,122,2),(6,123,2),(6,120,2),(6,115,2),(20,111,1),(20,125,1),(20,113,1),(20,121,1),(20,112,1),(20,109,1),(20,108,1),(20,117,1),(20,122,1),(20,123,1),(20,120,1),(20,115,1),(17,111,1),(17,125,1),(17,113,1),(17,121,1),(17,112,1),(17,109,1),(17,108,1),(17,117,1),(17,122,1),(17,123,1),(17,120,1),(17,115,1),(15,111,1),(15,125,1),(15,113,1),(15,121,1),(15,112,1),(15,109,1),(15,108,1),(15,117,1),(15,122,1),(15,123,1),(15,120,1),(15,115,1),(13,111,1),(13,125,1),(13,113,1),(13,121,1),(13,112,1),(13,109,1),(13,108,1),(13,117,1),(13,122,1),(13,123,1),(13,120,1),(13,115,1),(14,111,2),(14,125,2),(14,113,2),(14,121,2),(14,112,2),(14,109,2),(14,108,2),(14,117,2),(14,122,2),(14,123,2),(14,120,2),(14,115,2),(7,111,1),(7,125,1),(7,113,1),(7,121,1),(7,112,1),(7,109,1),(7,108,1),(7,117,1),(7,122,1),(7,123,1),(7,120,1),(7,115,1),(8,111,2),(8,125,2),(8,113,2),(8,121,2),(8,112,2),(8,109,2),(8,108,2),(8,117,2),(8,122,2),(8,123,2),(8,120,2),(8,115,2),(9,111,3),(9,125,3),(9,113,3),(9,121,3),(9,112,3),(9,109,3),(9,108,3),(9,117,3),(9,122,3),(9,123,3),(9,120,3),(9,115,3),(10,111,4),(10,125,4),(10,113,4),(10,121,4),(10,112,4),(10,109,4),(10,108,4),(10,117,4),(10,122,4),(10,123,4),(10,120,4),(10,115,4),(19,111,1),(19,125,1),(19,113,1),(19,121,1),(19,112,1),(19,109,1),(19,108,1),(19,117,1),(19,122,1),(19,123,1),(19,120,1),(19,115,1),(30,111,1),(30,125,1),(30,113,1),(30,121,1),(30,112,1),(30,109,1),(30,108,1),(30,117,1),(30,122,1),(30,123,1),(30,120,1),(30,115,1),(28,111,1),(28,125,1),(28,113,1),(28,121,1),(28,112,1),(28,109,1),(28,108,1),(28,117,1),(28,122,1),(28,123,1),(28,120,1),(28,115,1),(29,111,1),(29,125,1),(29,113,1),(29,121,1),(29,112,1),(29,109,1),(29,108,1),(29,117,1),(29,122,1),(29,123,1),(29,120,1),(29,115,1),(22,111,1),(22,125,1),(22,113,1),(22,121,1),(22,112,1),(22,109,1),(22,108,1),(22,117,1),(22,122,1),(22,123,1),(22,120,1),(22,115,1),(23,111,2),(23,125,2),(23,113,2),(23,121,2),(23,112,2),(23,109,2),(23,108,2),(23,117,2),(23,122,2),(23,123,2),(23,120,2),(23,115,2),(24,111,1),(24,125,1),(24,113,1),(24,121,1),(24,112,1),(24,109,1),(24,108,1),(24,117,1),(24,122,1),(24,123,1),(24,120,1),(24,115,1),(25,111,2),(25,125,2),(25,113,2),(25,121,2),(25,112,2),(25,109,2),(25,108,2),(25,117,2),(25,122,2),(25,123,2),(25,120,2),(25,115,2),(26,111,3),(26,125,3),(26,113,3),(26,121,3),(26,112,3),(26,109,3),(26,108,3),(26,117,3),(26,122,3),(26,123,3),(26,120,3),(26,115,3),(27,111,4),(27,125,4),(27,113,4),(27,121,4),(27,112,4),(27,109,4),(27,108,4),(27,117,4),(27,122,4),(27,123,4),(27,120,4),(27,115,4),(31,111,1),(31,125,1),(31,113,1),(31,121,1),(31,112,1),(31,109,1),(31,108,1),(31,117,1),(31,122,1),(31,123,1),(31,120,1),(31,115,1),(32,111,1),(32,125,1),(32,113,1),(32,121,1),(32,112,1),(32,109,1),(32,108,1),(32,117,1),(32,122,1),(32,123,1),(32,120,1),(32,115,1),(33,111,1),(33,125,1),(33,113,1),(33,121,1),(33,112,1),(33,109,1),(33,108,1),(33,117,1),(33,122,1),(33,123,1),(33,120,1),(33,115,1),(34,111,1),(34,125,1),(34,113,1),(34,121,1),(34,112,1),(34,109,1),(34,108,1),(34,117,1),(34,122,1),(34,123,1),(34,120,1),(34,115,1),(61,111,1),(61,125,1),(61,113,1),(61,121,1),(61,112,1),(61,109,1),(61,108,1),(61,117,1),(61,122,1),(61,123,1),(61,120,1),(61,115,1),(40,111,1),(40,125,1),(40,113,1),(40,121,1),(40,112,1),(40,109,1),(40,108,1),(40,117,1),(40,122,1),(40,123,1),(40,120,1),(40,115,1),(41,111,1),(41,125,1),(41,113,1),(41,121,1),(41,112,1),(41,109,1),(41,108,1),(41,117,1),(41,122,1),(41,123,1),(41,120,1),(41,115,1),(49,111,1),(49,125,1),(49,113,1),(49,121,1),(49,112,1),(49,109,1),(49,108,1),(49,117,1),(49,122,1),(49,123,1),(49,120,1),(49,115,1),(66,4,1),(67,4,1),(68,64,1),(68,52,1),(68,54,1),(68,47,1),(68,48,1),(68,49,1),(68,50,1),(68,51,1),(68,55,1),(68,56,1),(68,58,1),(68,59,1),(68,60,1),(68,111,1),(68,125,1),(68,113,1),(68,121,1),(68,112,1),(68,109,1),(68,108,1),(68,117,1),(68,122,1),(68,123,1),(68,120,1),(68,115,1),(69,4,1),(70,97,1),(70,98,1),(70,1,1),(70,3,1),(70,4,1),(70,5,1),(70,6,1),(70,12,1),(70,8,1),(70,11,1),(70,7,1),(70,9,1),(70,10,1),(70,19,1),(70,20,1),(70,28,1),(70,21,1),(70,22,1),(70,23,1),(70,25,1),(70,27,1),(70,24,1),(70,26,1),(70,29,1),(70,61,1),(70,31,1),(70,32,1),(70,33,1),(70,34,1),(70,35,1),(70,36,1),(70,37,1),(70,62,1),(70,38,1),(70,39,1),(70,40,1),(70,41,1),(70,63,1),(70,64,1),(70,52,1),(70,54,1),(70,47,1),(70,48,1),(70,49,1),(70,50,1),(70,51,1),(70,55,1),(70,56,1),(70,58,1),(70,59,1),(70,60,1),(70,111,1),(70,125,1),(70,113,1),(70,121,1),(70,112,1),(70,109,1),(70,108,1),(70,117,1),(70,122,1),(70,123,1),(70,120,1),(70,115,1),(72,97,1),(72,98,1),(72,1,1),(72,3,1),(72,4,1),(72,5,1),(72,6,1),(72,12,1),(72,8,1),(72,11,1),(72,7,1),(72,9,1),(72,10,1),(72,19,1),(72,20,1),(72,28,1),(72,21,1),(72,22,1),(72,23,1),(72,25,1),(72,27,1),(72,24,1),(72,26,1),(72,29,1),(72,61,1),(72,31,1),(72,32,1),(72,33,1),(72,34,1),(72,35,1),(72,36,1),(72,37,1),(72,62,1),(72,38,1),(72,39,1),(72,40,1),(72,41,1),(72,63,1),(72,64,1),(72,52,1),(72,54,1),(72,47,1),(72,48,1),(72,49,1),(72,50,1),(72,51,1),(72,55,1),(72,56,1),(72,58,1),(72,59,1),(72,60,1),(72,111,1),(72,125,1),(72,113,1),(72,121,1),(72,112,1),(72,109,1),(72,108,1),(72,117,1),(72,122,1),(72,123,1),(72,120,1),(72,115,1),(71,4,1);
/*!40000 ALTER TABLE `nv4_vi_blocks_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_comment`
--

DROP TABLE IF EXISTS `nv4_vi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT 0,
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `pid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT 0,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `likes` mediumint(9) NOT NULL DEFAULT 0,
  `dislikes` mediumint(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cid`),
  KEY `mod_id` (`module`,`area`,`id`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_comment`
--

LOCK TABLES `nv4_vi_comment` WRITE;
/*!40000 ALTER TABLE `nv4_vi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_contact_department`
--

DROP TABLE IF EXISTS `nv4_vi_contact_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `full_name` (`full_name`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_contact_department`
--

LOCK TABLES `nv4_vi_contact_department` WRITE;
/*!40000 ALTER TABLE `nv4_vi_contact_department` DISABLE KEYS */;
INSERT INTO `nv4_vi_contact_department` VALUES (1,'Chăm sóc khách hàng','Cham-soc-khach-hang','','&#40;08&#41; 38.000.002','','','','','[]','','1/1/1/0',1,1,0);
/*!40000 ALTER TABLE `nv4_vi_contact_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_contact_reply`
--

DROP TABLE IF EXISTS `nv4_vi_contact_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `reply_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_time` int(11) unsigned NOT NULL DEFAULT 0,
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`rid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_contact_reply`
--

LOCK TABLES `nv4_vi_contact_reply` WRITE;
/*!40000 ALTER TABLE `nv4_vi_contact_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_contact_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_contact_send`
--

DROP TABLE IF EXISTS `nv4_vi_contact_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT 0,
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sender_name` (`sender_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_contact_send`
--

LOCK TABLES `nv4_vi_contact_send` WRITE;
/*!40000 ALTER TABLE `nv4_vi_contact_send` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_contact_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_contact_supporter`
--

DROP TABLE IF EXISTS `nv4_vi_contact_supporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_contact_supporter` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `departmentid` smallint(5) unsigned NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `weight` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_contact_supporter`
--

LOCK TABLES `nv4_vi_contact_supporter` WRITE;
/*!40000 ALTER TABLE `nv4_vi_contact_supporter` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_contact_supporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_dich_vu`
--

DROP TABLE IF EXISTS `nv4_vi_dich_vu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_dich_vu` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_dich_vu`
--

LOCK TABLES `nv4_vi_dich_vu` WRITE;
/*!40000 ALTER TABLE `nv4_vi_dich_vu` DISABLE KEYS */;
INSERT INTO `nv4_vi_dich_vu` VALUES (1,'Bảo vệ chất lượng cao','bao-ve-chat-luong-cao','nds-300x300.png','',0,'Là bảo vệ các sự kiện quan trọng của các doanh nghiệp, giới thiệu sản phẩm, hội chợ triễn lãm, các buổi ca nhạc ngoài trời…<br /><br />Bảo vệ Ngày & Đêm có nhiệm vụ mang lại sự bình yên cho Quý khách hàng, hạn chế các rủi ro về thiệt hại tài sản, đảm bảo an toàn tính mạng cho nhân viên của mình và khách hàng đến tham quan vui chơi giải trí.','<p><strong>Yêu cầu về nghiệp vụ</strong>: Tất cả các nhân viên được tham gia vào đội bảo vệ sự kiện, lễ hội phải đáp ứng được các yêu cầu về nghiệp vụ như sau:<br  />\r\n– Đã qua lớp đào tạo võ thuật cơ bản.<br  />\r\n– Đã qua lớp đào tạo bảo vệ sự kiện của NDS.<br  />\r\n– Đã qua lớp đào tạo giải quyết các sự cố trong bảo vệ sự kiện.<br  />\r\n– Biết sử dụng các công cụ hỗ trợ chuyên dụng như: gậy sắt, roi điện, gậy sáng điều phối xe.<br  />\r\n– Độ tuổi từ 25 – 40 tuổi, và đáp ứng được các tiêu chí riêng về ngoại hình của NDS.</p>\r\n\r\n<p><strong>Yêu cầu về trang phục:</strong>&nbsp;Công ty bảo vệ Ngày &amp; Đêm đã trang bị những bộ đồng phục phù hợp với loại hình dịch vụ bảo vệ sự kiện, tùy vào từng sự kiện và tùy vào yêu cầu của khách hàng mà Công ty bảo vệ Ngày &amp; Đêm trang bị trang phục cho nhân viên bảo vệ phù hợp. Các trạng phục đang áp dụng như:</p>\r\n\r\n<p>– Quần, áo bảo vệ thông thường à phục vụ cho các sự kiện bình thường, ngoài trời, không mang tính chất phức tạp, …<br  />\r\n– Quần đen, áo sơ mi trắng, đeo cà vạt, áo vest đen à phục vụ cho các sự kiện sang trọng, trong hội trường, …<br  />\r\n– Áo chống đâm, nón chống bạo động à đối với các sự kiện có tính chất phức tạp cao, ngoài trời.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/thuvien/22.jpg\" src=\"https://baovengayvadem.com/images/thuvien/22.jpg\" /></p>\r\n\r\n<p><strong>Bảo vệ Ngày &amp; Đêm tại sự kiện White Palace, TP.HCM</strong></p>\r\n\r\n<p><strong>Yêu cầu về công cụ hỗ trợ</strong>: Trang bị các công cụ hỗ trợ chuyên dụng cho loại hình bảo vệ sự kiện như: Súng, Gậy sắt, roi điện, áo chống đâm, mũ chống bạo động, bộ đàm chuyên dụng, gậy sáng điều phối giao thông…</p>\r\n\r\n<p><strong>Bảng mô tả công việc chung</strong><br  />\r\n– Từ khi chuẩn bị đến khi không để xảy ra các hoạt động của tội phạm, cháy nổ. công ty bảo vệ kiểm soát và điều phối từ xa những đám đông mà có thể từ đó xuất phát các sự kiện lộn xộn.<br  />\r\n– Ngăn chặn và phối hợp với lực lượng vũ trang bắt giữ những kẻ có hành vi côn đồ quá khích gây rối trật tự trị an.<br  />\r\n– Kiểm soát người vào khu vực, vào cổng.<br  />\r\n– Không cho bất cứ người lạ, người không có giấy tờ, không có vé, …vào khu vực cần bảo vệ.<br  />\r\n– Bố trí lực lượng, phương tiện ở nhiều vị trí, nhiều lớp tạo thành thế liên hoàn khép kín.<br  />\r\n– Giải quyết các vụ việc từ xa, không để cho tiến vào và làm phát sinh vụ việc từ bên trong.<br  />\r\n– Thái độ mềm mỏng, hòa nhã nhưng phải kiên quyết qiữ nghiêm túc đối với những người ra vào các khu vực theo quy định của ban tổ chức.<br  />\r\n– Bố trí các phương tiện kĩ thuật nghiệp vụ ở những nơi và vị trí cần thiết, kiểm tra người phương tiện ra vào theo nhiệm vụ phân công.<br  />\r\n– Kiểm soát hàng hóa, tài sản mang ra, mang vào mục tiêu tổ chức sự kiện.</p>\r\n\r\n<p>Tất cả các nhân viên bảo vệ phải trang bị bộ đàm, và dùng bộ đàm để thông báo tình hình và yêu cầu hỗ trợ khi cần thiết.<br  />\r\nChỉ huy đội bảo vệ trong sự kiện luôn theo sát diễn biến của sự kiện cũng như giám sát công việc của các nhân viên để đưa ra cách làm việc tiếp theo cho phù hợp.</p>\r\n\r\n<p>– Chỉ huy đội bảo vệ phải thông báo những tình huống khẩn cấp cho đạo diển sự kiện, ban tổ chức để xin ý kiến chỉ đạo.<br  />\r\n– Thời gian làm việc của nhân viên tùy thuộc vào yêu cầu của khách hàng, yêu cầu của sự kiện.<br  />\r\n– Luôn luôn khảo sát và xây dựng phương án bảo vệ riêng cho từng sự kiện.</p>\r\n\r\n<p>Để ưu ái và đứng về quyền lợi của khách hàng, Công ty bảo vệ Ngày &amp; Đêm đã mua bảo hiểm trách nhiệm nghề nghiệp và dân sự trị giá 2.000.000.000 VNĐ (Một triệu USD). Chính vì thế, khi có bất kỳ mất mát nào về tài sản thuộc về lỗi của nhân viên bảo vệ đều có sự tham gia của bên thứ ba (bảo hiểm). Khách hàng sẽ yên tâm về việc đền bù các thiệt hại tài sản.<br  />\r\nGiá sàn cho dịch vụ này là 150.000 đ/01 người/01 giờ, và có thể tăng lên tùy theo tính chất của sự kiện, địa điểm và yêu cầu của khách hàng.</p>\r\n\r\n<p>Doanh thu từ dịch vụ này chiếm 5% tổng doanh thu hàng năm của Công ty Ngày &amp; Đêm.</p>','bảo vệ',1,'4','',1,1,1583897727,1583917876,1,7,0),(2,'Bảo vệ khu công nghiệp','bao-ve-khu-cong-nghiep','6-long-hau-jpg.jpg','',0,'Khu công nghiệp với nhiều nhà máy, công ty, xí nghiệp và nhiều thành phần công nhân và người lao động phổ thông nên tình hình an ninh trật tự của khu công nghiệp diễn ra khá phức tạp, đòi hỏi phải có một đội ngũ nhân viên bảo vệ khu công nghiệp chuyên nghiệp.','<p>Với kinh nghiệm lâu năm trong lĩnh vực bảo vệ nhà máy xí nghiệp, công ty, văn phòng, đội ngũ bảo vệ được đào tạo bài bản và có đạo đức trong công việc,&nbsp;<a href=\"https://baovengayvadem.com/\" rel=\"alternate\">công ty dịch vụ bảo vệ uy tín</a>&nbsp;Bảo Vệ Ngày &amp; Đêm đã trở thành nhà cung cấp dịch vụ bảo vệ và giải pháp an ninh hàng đầu nhằm mục đích:</p>\r\n\r\n<p>– Đảm bảo giữ gìn an ninh, trật tự kết hợp với lực lượng tuần tra, hệ thống báo động và camera giám sát.<br  />\r\n– Phòng chống ngăn chặn các đối tượng trà trộn, lợi dụng công việc trong KCN.<br  />\r\n– Điều phối các hoạt động giao thông, xuất nhập hàng hóa ra vào KCN<br  />\r\n– Phối kết hợp với Ban quản lý KCN, lực lượng bảo vệ nhà máy, nhà xưởng trong KCN ngăn chặn các rủi ro như tai nạn lao động, cháy nổ, …</p>\r\n\r\n<p><strong>Quý khách có nhu cầu sử dụng dịch vụ bảo vệ khu công nghiệp vui lòng liên hệ với chúng tôi để được tư vấn thêm.</strong></p>\r\n\r\n<p><strong>Liên tục cung cấp&nbsp;<a href=\"https://baovengayvadem.com/tuyen-dung\" rel=\"alternate\">việc làm bảo vệ</a>&nbsp;tại TPHCM, Bình Dương, Hà Nội, Hải Phòng , Đà Nẳng,…</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"BẢO VỆ KHU CÔNG NGHIỆP\" data-src=\"https://baovengayvadem.com/images/thuvien/vsip-chon-jpg-20151117105840j9X0npLAzq.jpg\" src=\"https://baovengayvadem.com/images/thuvien/vsip-chon-jpg-20151117105840j9X0npLAzq.jpg\" /></p>\r\n\r\n<p><img alt=\"tình hình an ninh trật tự của khu công nghiệp\" data-src=\"https://baovengayvadem.com/images/dich-vu/6-long-hau-jpg.jpg\" src=\"https://baovengayvadem.com/images/dich-vu/6-long-hau-jpg.jpg\" /></p>','bảo vệ',1,'4','',2,1,1583897798,1583917827,1,6,0),(3,'Bảo vệ mục tiêu di động','bao-ve-muc-tieu-di-dong','ddong-300x300.jpg','',0,'','<p>Là bảo vệ&nbsp;áp tải tiền, hàng hóa đặc biệt,&nbsp;áp tải các tài liệu có giá trị, tháp tùng bảo vệ tại nơi làm việc, nơi cư trú, di chuyển từ một&nbsp;điểm cố&nbsp;định này&nbsp;đến&nbsp;địa&nbsp;điểm khác trong thời gian&nbsp;được xác&nbsp;định.</p>\r\n\r\n<p>Yêu cầu về nghiệp vụ: Tất cả các nhân viên được tham gia vào đội bảo vệ áp tải tiền, hàng hóa đặc biệt phải đáp ứng được các yêu cầu về nghiệp vụ như sau:<br  />\r\nĐã qua lớp đào tạo võ thuật cơ bản.<br  />\r\nĐã qua lớp đào tạo bảo vệ mục tiêu di động của NDS.<br  />\r\nĐã qua lớp đào tạo giải quyết các sự cố trong bảo vệ mục tiêu di động.<br  />\r\nBiết sử dụng các công cụ hỗ trợ chuyên dụng như: Súng ngắn, gậy sắt, dùi cui điện, gậy sáng điều phối xe.<br  />\r\nĐộ tuổi từ 25 – 40 tuổi, và đáp ứng được các tiêu chí riêng về ngoại hình của NDS.<br  />\r\nXây dựng phương án áp tải tiền, hàng hóa đặc biệt thật chi tiết và tỉ mỹ. Tính toán thời gian đi và về hết bao nhiêu, các khu vực nhạy cảm cần chú ý, lực lượng hỗ trợ khi có sự cố, phương án giải quyết các sự cố có thể xảy ra…</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/uploads/noidung/images/DSCF1589_xu%20ly.jpg\" height=\"372\" src=\"https://baovengayvadem.com/uploads/noidung/images/DSCF1589_xu%20ly.jpg\" width=\"439\" /></p>\r\n\r\n<p><strong>Hỗ trợ an ninh khách hàng trong giao dịch tiền tệ</strong></p>\r\n\r\n<p>Yêu cầu về trang phục: Áo chống đâm, nón chống bạo động.<br  />\r\nYêu cầu về công cụ hỗ trợ: trang bị các công cụ hỗ trợ chuyên dụng cho loại hình bảo vệ sự kiện như: Súng ngắn, dùi cui kim loại, roi điện, gậy cao su, áo chống đạn, mũ chống bạo động, bộ đàm chuyên dụng, gậy sáng điều phối giao thông, camera hành trình…</p>\r\n\r\n<p><strong>Bảng mô tả công việc chung</strong></p>\r\n\r\n<p>Bảo vệ an toàn tuyệt đối cho hàng hóa từ khâu giao nhận đến quá trình vận chuyển, không để cho các đối tượng tội phạm xâm hại hoặc làm hư hỏng mất mát.<br  />\r\nQuá trình vận chuyển phải đảm bảo giữ được nguyên mẫu mã và niêm phong kẹp chì trong quá trình vận chuyển.<br  />\r\nGiữ bí mật không được tiết lộ tên hàng, số lượng, thời gian xuất phát, thời gian mà hàng hóa đến nơi.<br  />\r\nLực lượng bảo vệ được chia làm 2 tốp: một tốp bảo vệ chính cho áp tải tiền và hàng hóa đặc biệt, một tốp ngụy trang để hỗ trợ kịp thời khi có sự cố.<br  />\r\nNhân viên bảo vệ phải quan sát xung quanh trước khi di chuyển và không cách quá xa mục tiêu cần áp tải.<br  />\r\nVận chuyển phải đúng lộ trình trong kế hoạch, không được thay đổi tùy tiên.<br  />\r\nKhông chỉ đề phòng trộm cắp mà phải an tòan không rách, vỡ bể.<br  />\r\nBốc xếp hàng cần phải có sự giám sát của người có trách nhiệm theo đúng kế hoạch.<br  />\r\nYêu cầu lực lượng phải có được điện thoại liên lực của các cơ quan chính quyền địa phương nơi mà việc áp tải tiền, hàng hóa đặc biệt đi qua. Để hỗ trợ khi cần thiết.</p>\r\n\r\n<p><strong>Thời gian làm việc</strong></p>\r\n\r\n<p>Thời gian làm việc của nhân viên bảo vệ tùy thuộc vào yêu cầu của khách hàng, yêu cầu của vận chuyển hàng hóa, áp tải tiền.<a href=\"https://baovengayvadem.com/tuyen-dung\" rel=\"alternate\">&nbsp;Việc làm bảo vệ</a>&nbsp;chính xác, minh bạch rõ ràng<br  />\r\nThời gian cung cấp dịch vụ: 2 – 3 ngày</p>\r\n\r\n<p><strong>Thông tin khác</strong></p>\r\n\r\n<p>Luôn luôn khảo sát và xây dựng phương án bảo vệ riêng cho từng sự kiện áp tải tiền, hàng hóa đặc biệt.<br  />\r\nHỗ trợ miễn phí các khoản bảo hiểm cho nhân viên, bảo hiểm rủi ro nghề nghiệp, chỉ huy đội, đội cơ động, đội kiểm tra chất lượng…<br  />\r\nĐể ưu ái và đứng về quyền lợi của khách hàng, Công ty bảo vệ Ngày &amp; Đêm đã mua bảo hiểm trách nhiệm nghề nghiệp và dân sự trị giá 22.000.000.000 VND (Một triệu USD) cho mỗi một sự cố. Chính vì thế, khi có bất kỳ mất mát nào về tài sản thuộc về lỗi của nhân viên bảo vệ đều có sự tham gia của bên thứ ba (bảo hiểm). Khách hàng sẽ yên tâm về việc đền bù các thiệt hại tài sản.<br  />\r\nGiá sàn cho dịch vụ này là 250.000 đ/01 người/01 giờ, và có thể tăng lên tùy theo tính chất của sự kiện, địa điểm và yêu cầu của khách hàng.<br  />\r\nDoanh thu từ dịch vụ này chiếm 5% tổng doanh thu hàng năm của Công ty Ngày &amp; Đêm –&nbsp;<a href=\"https://baovengayvadem.com/\" rel=\"alternate\">Dịch vụ bảo vệ uy tín tại HCM</a></p>','bảo vệ,mục tiêu',1,'4','',3,1,1583898161,1583917902,1,5,0),(4,'Bảo vệ các sự kiện, lễ hội','bao-ve-cac-su-kien-le-hoi','6-long-hau-jpg.jpg','',0,'Là bảo vệ các sự kiện quan trọng của các doanh nghiệp, giới thiệu sản phẩm, hội chợ triễn lãm, các buổi ca nhạc ngoài trời…<br /><br />Bảo vệ Ngày & Đêm có nhiệm vụ mang lại sự bình yên cho Quý khách hàng, hạn chế các rủi ro về thiệt hại tài sản, đảm bảo an toàn tính mạng cho nhân viên của mình và khách hàng đến tham quan vui chơi giải trí.','<p><strong>Yêu cầu về nghiệp vụ</strong>: Tất cả các nhân viên được tham gia vào đội bảo vệ sự kiện, lễ hội phải đáp ứng được các yêu cầu về nghiệp vụ như sau:<br  />\r\n– Đã qua lớp đào tạo võ thuật cơ bản.<br  />\r\n– Đã qua lớp đào tạo bảo vệ sự kiện của NDS.<br  />\r\n– Đã qua lớp đào tạo giải quyết các sự cố trong bảo vệ sự kiện.<br  />\r\n– Biết sử dụng các công cụ hỗ trợ chuyên dụng như: gậy sắt, roi điện, gậy sáng điều phối xe.<br  />\r\n– Độ tuổi từ 25 – 40 tuổi, và đáp ứng được các tiêu chí riêng về ngoại hình của NDS.</p>\r\n\r\n<p><strong>Yêu cầu về trang phục:</strong>&nbsp;Công ty bảo vệ Ngày &amp; Đêm đã trang bị những bộ đồng phục phù hợp với loại hình dịch vụ bảo vệ sự kiện, tùy vào từng sự kiện và tùy vào yêu cầu của khách hàng mà Công ty bảo vệ Ngày &amp; Đêm trang bị trang phục cho nhân viên bảo vệ phù hợp. Các trạng phục đang áp dụng như:</p>\r\n\r\n<p>– Quần, áo bảo vệ thông thường à phục vụ cho các sự kiện bình thường, ngoài trời, không mang tính chất phức tạp, …<br  />\r\n– Quần đen, áo sơ mi trắng, đeo cà vạt, áo vest đen à phục vụ cho các sự kiện sang trọng, trong hội trường, …<br  />\r\n– Áo chống đâm, nón chống bạo động à đối với các sự kiện có tính chất phức tạp cao, ngoài trời.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/thuvien/22.jpg\" src=\"https://baovengayvadem.com/images/thuvien/22.jpg\" /></p>\r\n\r\n<p><strong>Bảo vệ Ngày &amp; Đêm tại sự kiện White Palace, TP.HCM</strong></p>\r\n\r\n<p><strong>Yêu cầu về công cụ hỗ trợ</strong>: Trang bị các công cụ hỗ trợ chuyên dụng cho loại hình bảo vệ sự kiện như: Súng, Gậy sắt, roi điện, áo chống đâm, mũ chống bạo động, bộ đàm chuyên dụng, gậy sáng điều phối giao thông…</p>\r\n\r\n<p><strong>Bảng mô tả công việc chung</strong><br  />\r\n– Từ khi chuẩn bị đến khi không để xảy ra các hoạt động của tội phạm, cháy nổ. công ty bảo vệ kiểm soát và điều phối từ xa những đám đông mà có thể từ đó xuất phát các sự kiện lộn xộn.<br  />\r\n– Ngăn chặn và phối hợp với lực lượng vũ trang bắt giữ những kẻ có hành vi côn đồ quá khích gây rối trật tự trị an.<br  />\r\n– Kiểm soát người vào khu vực, vào cổng.<br  />\r\n– Không cho bất cứ người lạ, người không có giấy tờ, không có vé, …vào khu vực cần bảo vệ.<br  />\r\n– Bố trí lực lượng, phương tiện ở nhiều vị trí, nhiều lớp tạo thành thế liên hoàn khép kín.<br  />\r\n– Giải quyết các vụ việc từ xa, không để cho tiến vào và làm phát sinh vụ việc từ bên trong.<br  />\r\n– Thái độ mềm mỏng, hòa nhã nhưng phải kiên quyết qiữ nghiêm túc đối với những người ra vào các khu vực theo quy định của ban tổ chức.<br  />\r\n– Bố trí các phương tiện kĩ thuật nghiệp vụ ở những nơi và vị trí cần thiết, kiểm tra người phương tiện ra vào theo nhiệm vụ phân công.<br  />\r\n– Kiểm soát hàng hóa, tài sản mang ra, mang vào mục tiêu tổ chức sự kiện.</p>\r\n\r\n<p>Tất cả các nhân viên bảo vệ phải trang bị bộ đàm, và dùng bộ đàm để thông báo tình hình và yêu cầu hỗ trợ khi cần thiết.<br  />\r\nChỉ huy đội bảo vệ trong sự kiện luôn theo sát diễn biến của sự kiện cũng như giám sát công việc của các nhân viên để đưa ra cách làm việc tiếp theo cho phù hợp.</p>\r\n\r\n<p>– Chỉ huy đội bảo vệ phải thông báo những tình huống khẩn cấp cho đạo diển sự kiện, ban tổ chức để xin ý kiến chỉ đạo.<br  />\r\n– Thời gian làm việc của nhân viên tùy thuộc vào yêu cầu của khách hàng, yêu cầu của sự kiện.<br  />\r\n– Luôn luôn khảo sát và xây dựng phương án bảo vệ riêng cho từng sự kiện.</p>\r\n\r\n<p>Để ưu ái và đứng về quyền lợi của khách hàng, Công ty bảo vệ Ngày &amp; Đêm đã mua bảo hiểm trách nhiệm nghề nghiệp và dân sự trị giá 2.000.000.000 VNĐ (Một triệu USD). Chính vì thế, khi có bất kỳ mất mát nào về tài sản thuộc về lỗi của nhân viên bảo vệ đều có sự tham gia của bên thứ ba (bảo hiểm). Khách hàng sẽ yên tâm về việc đền bù các thiệt hại tài sản.<br  />\r\nGiá sàn cho dịch vụ này là 150.000 đ/01 người/01 giờ, và có thể tăng lên tùy theo tính chất của sự kiện, địa điểm và yêu cầu của khách hàng.</p>\r\n\r\n<p>Doanh thu từ dịch vụ này chiếm 5% tổng doanh thu hàng năm của Công ty Ngày &amp; Đêm.</p>','bảo vệ,sự kiện',1,'4','',4,1,1583898257,1583917923,1,4,0),(5,'Dịch vụ bảo vệ mục tiêu cố định','dich-vu-bao-ve-muc-tieu-co-dinh','codinh-300x300.jpg','',0,'','Dịch vụ bảo vệ mục tiêu cố định','bảo vệ,mục tiêu',1,'4','',5,1,1585876937,1585876937,1,3,0),(6,'Bảo vệ yếu nhân - Vip','bao-ve-yeu-nhan-vip','vip-300x300.jpg','VIP 300x300',0,'','Bảo vệ yếu nhân - Vip','bảo vệ,yếu nhân',1,'4','',6,1,1585877020,1585877020,1,3,0);
/*!40000 ALTER TABLE `nv4_vi_dich_vu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_dich_vu_config`
--

DROP TABLE IF EXISTS `nv4_vi_dich_vu_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_dich_vu_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_dich_vu_config`
--

LOCK TABLES `nv4_vi_dich_vu_config` WRITE;
/*!40000 ALTER TABLE `nv4_vi_dich_vu_config` DISABLE KEYS */;
INSERT INTO `nv4_vi_dich_vu_config` VALUES ('viewtype','1'),('facebookapi',''),('per_page','20'),('news_first','0'),('related_articles','5'),('copy_page','0'),('alias_lower','1');
/*!40000 ALTER TABLE `nv4_vi_dich_vu_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

DROP TABLE IF EXISTS `nv4_vi_freecontent_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

LOCK TABLES `nv4_vi_freecontent_blocks` WRITE;
/*!40000 ALTER TABLE `nv4_vi_freecontent_blocks` DISABLE KEYS */;
INSERT INTO `nv4_vi_freecontent_blocks` VALUES (1,'Sản phẩm','Chúng tôi tự hào là một trong những đơn vị cung cấp dịch vụ bảo vệ uy tín, chuyên nghiệp nhất Việt Nam.'),(2,'Giới thiệu','');
/*!40000 ALTER TABLE `nv4_vi_freecontent_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

DROP TABLE IF EXISTS `nv4_vi_freecontent_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '0: In-Active, 1: Active, 2: Expired',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

LOCK TABLES `nv4_vi_freecontent_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_freecontent_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_freecontent_rows` VALUES (10,1,'Giới thiệu','<p>Chúng tôi tự hào là một trong những đơn vị cung cấp dịch vụ bảo vệ uy tín, chuyên nghiệp nhất Việt Nam.</p>','','','',1583920434,0,1),(7,2,'1','<ol>\n	<li>Hình ảnh mạnh mẽ thân thiện, hiện đại cho khách hàng</li>\n	<li>Tác phong nhanh nhẹn, nghiệp vụ tinh thông</li>\n	<li>Quyền lợi của khách hàng là trách nhiệm của Ngày &amp; Đêm</li>\n	<li>Phí dịch vụ cạnh tranh hợp lý từ phổ thông đến cao cấp</li>\n	<li>Bảo hiểm trách nhiệm công cộng, bảo hiểm trách nhiệm 22 tỷ</li>\n	<li>Áp dụng hệ thống quản lý chất lượng DVBV theo tiêu chuẩn ISO 9001:2015</li>\n	<li>Hệ thống kiểm soát chất lượng liên tục 24h/7&nbsp;</li>\n</ol>','','','',1583919877,0,1),(9,1,'Giới thiệu 2','1. Hình ảnh mạnh mẽ thân thiện, hiện đại cho khách hàng<br  />\n2. Tác phong nhanh nhẹn, nghiệp vụ tinh thông<br  />\n3. Quyền lợi của khách hàng là trách nhiệm của Ngày &amp; Đêm\n<div>4. Phí dịch vụ cạnh tranh hợp lý từ phổ thông đến cao cấp<br  />\n5.&nbsp;Bảo hiểm trách nhiệm công cộng, bảo hiểm trách nhiệm 22 tỷ</div>\n\n<div>6. Áp dụng hệ thống quản lý chất lượng DVBV theo tiêu chuẩn ISO 9001:2015<br  />\n7.&nbsp;Hệ thống kiểm soát chất lượng liên tục 24h/7&nbsp;</div>','','','',1583920318,0,1);
/*!40000 ALTER TABLE `nv4_vi_freecontent_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_menu`
--

DROP TABLE IF EXISTS `nv4_vi_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_menu`
--

LOCK TABLES `nv4_vi_menu` WRITE;
/*!40000 ALTER TABLE `nv4_vi_menu` DISABLE KEYS */;
INSERT INTO `nv4_vi_menu` VALUES (1,'menu');
/*!40000 ALTER TABLE `nv4_vi_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_menu_rows`
--

DROP TABLE IF EXISTS `nv4_vi_menu_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lev` int(11) NOT NULL DEFAULT 0,
  `subitem` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT 0,
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

LOCK TABLES `nv4_vi_menu_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_menu_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_menu_rows` VALUES (1,0,1,'Trang chủ','/index.php','','','Home',1,1,0,'','6','0','',1,'',0,1),(2,0,1,'Giới thiệu','/index.php?language=vi&nv=about','','','Introduction',2,2,0,'3,4','6','about','',1,'',0,1),(3,2,1,'Chính sách chất lượng','/index.php?language=vi&nv=about&amp;op=chinh-sach-chat-luong.html','','','',1,3,1,'','6','about','chinh-sach-chat-luong.html',1,'',1,1),(4,2,1,'Lịch sử hình thành','/index.php?language=vi&nv=about&amp;op=lich-su-hinh-thanh.html','','','',2,4,1,'','6','about','lich-su-hinh-thanh.html',1,'',1,1),(5,0,1,'Dịch vụ','/index.php?language=vi&nv=dich-vu','','','Services',3,5,0,'6,7,8,9','6','dich-vu','',1,'',0,1),(6,5,1,'Bảo vệ chất lượng cao','/index.php?language=vi&nv=dich-vu&amp;op=bao-ve-chat-luong-cao.html','','','',1,6,1,'','6','dich-vu','bao-ve-chat-luong-cao.html',1,'',1,1),(7,5,1,'Bảo vệ khu công nghiệp','/index.php?language=vi&nv=dich-vu&amp;op=bao-ve-khu-cong-nghiep.html','','','',2,7,1,'','6','dich-vu','bao-ve-khu-cong-nghiep.html',1,'',1,1),(8,5,1,'Bảo vệ mục tiêu di động','/index.php?language=vi&nv=dich-vu&amp;op=bao-ve-muc-tieu-di-dong.html','','','',3,8,1,'','6','dich-vu','bao-ve-muc-tieu-di-dong.html',1,'',1,1),(9,5,1,'Bảo vệ các sự kiện, lễ hội','/index.php?language=vi&nv=dich-vu&amp;op=bao-ve-cac-su-kien-le-hoi.html','','','',4,9,1,'','6','dich-vu','bao-ve-cac-su-kien-le-hoi.html',1,'',1,1),(11,0,1,'Liên hệ','/index.php?language=vi&nv=contact','','','Contact',4,10,0,'','6','contact','',1,'',0,1);
/*!40000 ALTER TABLE `nv4_vi_menu_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_modfuncs`
--

DROP TABLE IF EXISTS `nv4_vi_modfuncs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT 0,
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `subweight` smallint(2) unsigned NOT NULL DEFAULT 1,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`func_id`),
  UNIQUE KEY `func_name` (`func_name`,`in_module`),
  UNIQUE KEY `alias` (`alias`,`in_module`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

LOCK TABLES `nv4_vi_modfuncs` WRITE;
/*!40000 ALTER TABLE `nv4_vi_modfuncs` DISABLE KEYS */;
INSERT INTO `nv4_vi_modfuncs` VALUES (1,'main','main','Main','','about',1,0,1,''),(2,'sitemap','sitemap','Sitemap','','about',0,0,0,''),(3,'rss','rss','Rss','','about',1,0,2,''),(4,'main','main','Main','','news',1,0,1,''),(5,'viewcat','viewcat','Viewcat','','news',1,0,2,''),(6,'topic','topic','Topic','','news',1,0,3,''),(7,'content','content','Content','','news',1,1,7,''),(8,'detail','detail','Detail','','news',1,0,5,''),(9,'tag','tag','Tag','','news',1,0,8,''),(10,'rss','rss','Rss','','news',1,1,9,''),(11,'search','search','Search','','news',1,1,6,''),(12,'groups','groups','Groups','','news',1,0,4,''),(13,'sitemap','sitemap','Sitemap','','news',0,0,0,''),(14,'print','print','Print','','news',0,0,0,''),(15,'rating','rating','Rating','','news',0,0,0,''),(16,'savefile','savefile','Savefile','','news',0,0,0,''),(17,'sendmail','sendmail','Sendmail','','news',0,0,0,''),(18,'instant-rss','instant-rss','Instant Articles RSS','','news',0,0,0,''),(19,'main','main','Main','','users',1,1,1,''),(20,'login','login','Đăng nhập','','users',1,1,2,''),(21,'register','register','Đăng ký','','users',1,1,4,''),(22,'lostpass','lostpass','Khôi phục mật khẩu','','users',1,1,5,''),(23,'active','active','Kích hoạt tài khoản','','users',1,1,6,''),(24,'lostactivelink','lostactivelink','Lostactivelink','','users',1,1,9,''),(25,'editinfo','editinfo','Thiết lập tài khoản','','users',1,1,7,''),(26,'memberlist','memberlist','Danh sách thành viên','','users',1,1,10,''),(27,'avatar','avatar','Avatar','','users',1,0,8,''),(28,'logout','logout','Thoát','','users',1,1,3,''),(29,'groups','groups','Quản lý nhóm','','users',1,0,11,''),(30,'oauth','oauth','Oauth','','users',0,0,0,''),(31,'main','main','Main','','statistics',1,0,1,''),(32,'allreferers','allreferers','Theo đường dẫn đến site','','statistics',1,1,2,''),(33,'allcountries','allcountries','Theo quốc gia','','statistics',1,1,3,''),(34,'allbrowsers','allbrowsers','Theo trình duyệt','','statistics',1,1,4,''),(35,'allos','allos','Theo hệ điều hành','','statistics',1,1,5,''),(36,'allbots','allbots','Theo máy chủ tìm kiếm','','statistics',1,1,6,''),(37,'referer','referer','Đường dẫn đến site theo tháng','','statistics',1,0,7,''),(38,'main','main','Main','','banners',1,0,1,''),(39,'addads','addads','Addads','','banners',1,0,2,''),(40,'clientinfo','clientinfo','Clientinfo','','banners',1,0,3,''),(41,'stats','stats','Stats','','banners',1,0,3,''),(42,'cledit','cledit','Cledit','','banners',0,0,0,''),(43,'click','click','Click','','banners',0,0,0,''),(44,'clinfo','clinfo','Clinfo','','banners',0,0,0,''),(45,'logininfo','logininfo','Logininfo','','banners',0,0,0,''),(46,'viewmap','viewmap','Viewmap','','banners',0,0,0,''),(47,'main','main','main','','comment',1,0,1,''),(48,'post','post','post','','comment',1,0,2,''),(49,'like','like','Like','','comment',1,0,3,''),(50,'delete','delete','Delete','','comment',1,0,4,''),(51,'down','down','Down','','comment',1,0,5,''),(52,'main','main','Main','','page',1,0,1,''),(53,'sitemap','sitemap','Sitemap','','page',0,0,0,''),(54,'rss','rss','Rss','','page',1,0,2,''),(55,'main','main','Main','','siteterms',1,0,1,''),(56,'rss','rss','Rss','','siteterms',1,0,2,''),(57,'sitemap','sitemap','Sitemap','','siteterms',0,0,0,''),(58,'main','main','Main','','two-step-verification',1,0,1,''),(59,'confirm','confirm','Confirm','','two-step-verification',1,0,2,''),(60,'setup','setup','Setup','','two-step-verification',1,0,3,''),(61,'main','main','Main','','contact',1,0,1,''),(62,'main','main','Main','','voting',1,0,1,''),(63,'main','main','Main','','seek',1,0,1,''),(64,'main','main','Main','','feeds',1,0,1,''),(112,'player','player','Player','','videos',1,0,5,''),(108,'detail','detail','Detail','','videos',1,0,7,''),(109,'groups','groups','Groups','','videos',1,0,6,''),(110,'list_playlist_cat','list_playlist_cat','List_playlist_cat','','videos',0,0,0,''),(111,'main','main','Main','','videos',1,0,1,''),(99,'sitemap','sitemap','Sitemap','','dich-vu',0,0,0,''),(98,'rss','rss','Rss','','dich-vu',1,0,2,''),(97,'main','main','Main','','dich-vu',1,0,1,''),(96,'main','main','Main','','menu',0,0,0,''),(113,'playlists','playlists','Playlists','','videos',1,0,3,''),(114,'rating','rating','Rating','','videos',0,0,0,''),(115,'rss','rss','Rss','','videos',1,1,12,''),(116,'savefile','savefile','Savefile','','videos',0,0,0,''),(117,'search','search','Search','','videos',1,1,8,''),(118,'sendmail','sendmail','Sendmail','','videos',0,0,0,''),(119,'sitemap','sitemap','Sitemap','','videos',0,0,0,''),(120,'tag','tag','Tag','','videos',1,0,11,''),(121,'uploader','uploader','Uploader','','videos',1,0,4,''),(122,'user-playlist','user-playlist','User-playlist','','videos',1,1,9,''),(123,'user-video','user-video','User-video','','videos',1,1,10,''),(124,'v_funcs','v_funcs','V_funcs','','videos',0,0,0,''),(125,'viewcat','viewcat','Viewcat','','videos',1,0,2,'');
/*!40000 ALTER TABLE `nv4_vi_modfuncs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_modthemes`
--

DROP TABLE IF EXISTS `nv4_vi_modthemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_modthemes`
--

LOCK TABLES `nv4_vi_modthemes` WRITE;
/*!40000 ALTER TABLE `nv4_vi_modthemes` DISABLE KEYS */;
INSERT INTO `nv4_vi_modthemes` VALUES (0,'left-main-right','default'),(0,'left-main-right','phubinh'),(0,'main','mobile_default'),(1,'left-main-right','default'),(1,'main','mobile_default'),(1,'main-right','phubinh'),(3,'main-right','phubinh'),(4,'left-main-right','default'),(4,'main','mobile_default'),(4,'main','phubinh'),(5,'left-main-right','default'),(5,'main','mobile_default'),(5,'main-right','phubinh'),(6,'left-main-right','default'),(6,'main','mobile_default'),(6,'main-right','phubinh'),(7,'left-main-right','default'),(7,'main','mobile_default'),(7,'main-right','phubinh'),(8,'left-main-right','default'),(8,'main','mobile_default'),(8,'main-right','phubinh'),(9,'left-main-right','default'),(9,'main','mobile_default'),(9,'main-right','phubinh'),(10,'left-main-right','default'),(10,'main-right','phubinh'),(11,'left-main-right','default'),(11,'main','mobile_default'),(11,'main-right','phubinh'),(12,'left-main-right','default'),(12,'main','mobile_default'),(12,'main-right','phubinh'),(19,'left-main-right','default'),(19,'main','mobile_default'),(19,'main-right','phubinh'),(20,'left-main-right','default'),(20,'main','mobile_default'),(20,'main-right','phubinh'),(21,'left-main-right','default'),(21,'main','mobile_default'),(21,'main-right','phubinh'),(22,'left-main-right','default'),(22,'main','mobile_default'),(22,'main-right','phubinh'),(23,'left-main-right','default'),(23,'main','mobile_default'),(23,'main-right','phubinh'),(24,'left-main-right','default'),(24,'main','mobile_default'),(24,'main-right','phubinh'),(25,'left-main','default'),(25,'main','mobile_default'),(25,'main-right','phubinh'),(26,'left-main-right','default'),(26,'main','mobile_default'),(26,'main-right','phubinh'),(27,'left-main-right','default'),(27,'main-right','phubinh'),(28,'left-main-right','default'),(28,'main','mobile_default'),(28,'main-right','phubinh'),(29,'left-main','default'),(29,'main','mobile_default'),(29,'main-right','phubinh'),(31,'left-main','default'),(31,'main','mobile_default'),(31,'main-right','phubinh'),(32,'left-main','default'),(32,'main','mobile_default'),(32,'main-right','phubinh'),(33,'left-main','default'),(33,'main','mobile_default'),(33,'main-right','phubinh'),(34,'left-main','default'),(34,'main','mobile_default'),(34,'main-right','phubinh'),(35,'left-main','default'),(35,'main','mobile_default'),(35,'main-right','phubinh'),(36,'left-main','default'),(36,'main','mobile_default'),(36,'main-right','phubinh'),(37,'left-main','default'),(37,'main','mobile_default'),(37,'main-right','phubinh'),(38,'left-main-right','default'),(38,'main','mobile_default'),(38,'main-right','phubinh'),(39,'left-main-right','default'),(39,'main','mobile_default'),(39,'main-right','phubinh'),(40,'left-main-right','default'),(40,'main','mobile_default'),(40,'main-right','phubinh'),(41,'left-main-right','default'),(41,'main','mobile_default'),(41,'main-right','phubinh'),(47,'left-main-right','default'),(47,'main','mobile_default'),(47,'main-right','phubinh'),(48,'left-main-right','default'),(48,'main','mobile_default'),(48,'main-right','phubinh'),(49,'left-main-right','default'),(49,'main','mobile_default'),(49,'main-right','phubinh'),(50,'left-main-right','default'),(50,'main','mobile_default'),(50,'main-right','phubinh'),(51,'left-main-right','default'),(51,'main-right','phubinh'),(52,'left-main','default'),(52,'main','mobile_default'),(52,'main-right','phubinh'),(54,'main-right','phubinh'),(55,'left-main-right','default'),(55,'main','mobile_default'),(55,'main-right','phubinh'),(56,'left-main-right','default'),(56,'main','mobile_default'),(56,'main-right','phubinh'),(58,'left-main-right','default'),(58,'main','mobile_default'),(58,'main-right','phubinh'),(59,'left-main-right','default'),(59,'main','mobile_default'),(59,'main-right','phubinh'),(60,'left-main-right','default'),(60,'main','mobile_default'),(60,'main-right','phubinh'),(61,'left-main','default'),(61,'main','mobile_default'),(61,'main-right','phubinh'),(62,'left-main','default'),(62,'main','mobile_default'),(62,'main-right','phubinh'),(63,'left-main-right','default'),(63,'main','mobile_default'),(63,'main-right','phubinh'),(64,'left-main-right','default'),(64,'main','mobile_default'),(64,'main-right','phubinh'),(96,'left-main-right','phubinh'),(97,'left-main-right','default'),(97,'main','mobile_default'),(97,'main-right','phubinh'),(98,'left-main-right','default'),(98,'main','mobile_default'),(98,'main-right','phubinh'),(99,'left-main-right','phubinh'),(108,'left-main-right','default'),(108,'main','mobile_default'),(108,'main-right','phubinh'),(109,'left-main-right','default'),(109,'main','mobile_default'),(109,'main-right','phubinh'),(110,'left-main-right','phubinh'),(111,'left-main-right','default'),(111,'main','mobile_default'),(111,'main-right','phubinh'),(112,'left-main-right','default'),(112,'main','mobile_default'),(112,'main-right','phubinh'),(113,'left-main-right','default'),(113,'main','mobile_default'),(113,'main-right','phubinh'),(114,'left-main-right','phubinh'),(115,'left-main-right','default'),(115,'main','mobile_default'),(115,'main-right','phubinh'),(116,'left-main-right','phubinh'),(117,'left-main-right','default'),(117,'main','mobile_default'),(117,'main-right','phubinh'),(118,'left-main-right','phubinh'),(119,'left-main-right','phubinh'),(120,'left-main-right','default'),(120,'main','mobile_default'),(120,'main-right','phubinh'),(121,'left-main-right','default'),(121,'main','mobile_default'),(121,'main-right','phubinh'),(122,'left-main-right','default'),(122,'main','mobile_default'),(122,'main-right','phubinh'),(123,'left-main-right','default'),(123,'main','mobile_default'),(123,'main-right','phubinh'),(124,'left-main-right','phubinh'),(125,'left-main-right','default'),(125,'main','mobile_default'),(125,'main-right','phubinh');
/*!40000 ALTER TABLE `nv4_vi_modthemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_modules`
--

DROP TABLE IF EXISTS `nv4_vi_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT 0,
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `act` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT 1,
  `sitemap` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_modules`
--

LOCK TABLES `nv4_vi_modules` WRITE;
/*!40000 ALTER TABLE `nv4_vi_modules` DISABLE KEYS */;
INSERT INTO `nv4_vi_modules` VALUES ('about','page','about','about','page','Giới thiệu','','',1557802785,1,1,'','','','','6',2,1,'',1,1),('news','news','news','news','news','Tin Tức','','',1557802785,1,1,'','','','','6',3,1,'',1,1),('users','users','users','users','users','Thành viên','','Tài khoản',1557802785,1,1,'','','','','6',4,1,'',0,1),('contact','contact','contact','contact','contact','Liên hệ','','',1557802785,1,1,'','','','','6',5,1,'',0,1),('statistics','statistics','statistics','statistics','statistics','Thống kê','','',1557802785,1,1,'','','','online, statistics','6',6,1,'',0,1),('voting','voting','voting','voting','voting','Thăm dò ý kiến','','',1557802785,1,1,'','','','','6',7,1,'',1,1),('banners','banners','banners','banners','banners','Quảng cáo','','',1557802785,1,1,'','','','','6',8,1,'',0,1),('seek','seek','seek','seek','seek','Tìm kiếm','','',1557802785,1,0,'','','','','6',9,1,'',0,1),('menu','menu','menu','menu','menu','Menu Site','','',1557802785,0,1,'','','','','6',10,1,'',0,1),('feeds','feeds','feeds','feeds','feeds','RSS-feeds','','RSS-feeds',1557802785,1,1,'','','','','6',11,1,'',0,1),('page','page','page','page','page','Page','','',1557802785,1,1,'','','','','6',12,1,'',1,1),('comment','comment','comment','comment','comment','Bình luận','','Quản lý bình luận',1557802785,0,1,'','','','','6',13,1,'',0,1),('siteterms','page','siteterms','siteterms','page','Điều khoản sử dụng','','',1557802785,1,1,'','','','','6',14,1,'',1,1),('freecontent','freecontent','freecontent','freecontent','freecontent','Giới thiệu sản phẩm','','',1557802785,0,1,'','','','','6',15,1,'',0,1),('two-step-verification','two-step-verification','two_step_verification','two_step_verification','two-step-verification','Xác thực hai bước','','',1557802785,1,0,'','','','','6',16,1,'',0,1),('slider','slider','slider','slider','slider','Slider','','',1557824046,0,1,'','','','','6',17,1,'',0,0),('dich-vu','page','dich_vu','dich-vu','page','Dịch vụ','','',1583897551,1,1,'','','','','6',1,1,'',1,1),('videos','videos','videos','videos','videos','Videos','','',1583920972,1,1,'','','','','6',18,1,'',1,1);
/*!40000 ALTER TABLE `nv4_vi_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_1`
--

DROP TABLE IF EXISTS `nv4_vi_news_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) unsigned NOT NULL DEFAULT 0,
  `edittime` int(11) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) unsigned NOT NULL DEFAULT 0,
  `publtime` int(11) unsigned NOT NULL DEFAULT 0,
  `exptime` int(11) unsigned NOT NULL DEFAULT 0,
  `archive` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_1`
--

LOCK TABLES `nv4_vi_news_1` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_1` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_1` VALUES (3,1,'1',0,1,'',0,1583975915,1583977611,1,3,1583975820,0,2,'BÀI PHÁT BIỂU CỦA ĐỒNG CHÍ LƯU XUÂN TUỆ TRONG HỘI NGHỊ TỔNG KẾT NĂM 2018','bai-phat-bieu-cua-dong-chi-luu-xuan-tue-trong-hoi-nghi-tong-ket-nam-2018','Kính thưa toàn thể các đồng chí!Một lần nữa, tiếp lời đồng chí Ngô Chí Hiếu, thay mặt HĐTV, tôi nhiệt liệt chào mừng hơn 360 đại biểu, đại diện cho hơn 6.000 CBNV của Công ty TNHH Dịch Vụ Bảo Vệ Ngày & Đêm trên khắp mọi miền tổ quốc đã hoàn thành xuất sắc nhiệm vụ năm 2018 có mặt trong buổi lễ trang trọng hôm nay!','2020_03/b1.jpg','B1',1,1,'4',1,0,2,0,0,0,0,'',0),(2,1,'1,2',0,1,'',0,1583975799,1583977516,1,2,1583975700,0,2,'Bảo vệ Ngày &amp; Đêm Bình Dương Tổng kết thi đua khen thưởng nhân kỷ niệm 10 năm – Ngày thành lập','bao-ve-ngay-dem-binh-duong-tong-ket-thi-dua-khen-thuong-nhan-ky-niem-10-nam-ngay-thanh-lap','Ngày 12/10/2018 tại Bình Dương, Chi nhánh Công ty TNHH Dịch vụ Bảo vệ Ngày & Đêm tại Bình Dương, long trọng tổ chức Lễ kỷ niệm 10 năm ngày thành lập (01/10/2008 – 01/10/2018)','2020_03/post87.jpg','',1,1,'4',1,0,5,0,0,0,0,'',0),(1,1,'1,2',0,1,'',0,1583921421,1583977528,1,1,1583921340,0,2,'Công đoàn chi nhánh Bảo vệ Bình Dương tặng quà trung thu cho con em người lao động','cong-doan-chi-nhanh-bao-ve-binh-duong-tang-qua-trung-thu-cho-con-em-nguoi-lao-dong','Sáng 15/9/2018, Bảo vệ Ngày & Đêm tại Bình Dương tổ chức tặng quà Trung thu cho con em cán bộ nhân viên đang làm việc tại đơn vị.','2020_03/tang-qua-hs-gioi.jpg','',1,1,'4',1,0,5,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_2`
--

DROP TABLE IF EXISTS `nv4_vi_news_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) unsigned NOT NULL DEFAULT 0,
  `edittime` int(11) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) unsigned NOT NULL DEFAULT 0,
  `publtime` int(11) unsigned NOT NULL DEFAULT 0,
  `exptime` int(11) unsigned NOT NULL DEFAULT 0,
  `archive` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_2`
--

LOCK TABLES `nv4_vi_news_2` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_2` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_2` VALUES (4,2,'2',0,1,'',0,1583977711,1583977711,1,4,1583977620,0,2,'Nestlé trao giải thưởng “An toàn toàn diện” cho Bảo vệ Ngày &amp; Đêm','nestle-trao-giai-thuong-an-toan-toan-dien-cho-bao-ve-ngay-dem','Một trong những niềm vui trước thềm 2019 của Bảo vệ Ngày & Đêm là Giải thưởng “An toàn toàn diện” được Tập đoàn Netslé trao tặng, vì những đóng góp tích cực của Bảo vệ Ngày & Đêm tại doanh nghiệp này.','2020_03/bao-ve-ngay-dem-nestle.jpg','',1,1,'4',1,0,3,0,0,0,0,'',0),(5,2,'2',0,1,'',0,1583977921,1583977921,1,5,1583977860,0,2,'Bảo vệ Ngày &amp; Đêm Tây Ninh tổ chức tổng kết 2018','bao-ve-ngay-dem-tay-ninh-to-chuc-tong-ket-2018','Ngày 24/01/2019 Chi nhánh Công ty TNHH Dịch vụ Bảo vệ Ngày & Đêm tại Tây Ninh (Bảo vệ Ngày & Đêm Tây Ninh) tổ chức tổng kết thi đua năm 2018.','2020_03/bao-ve-ngay-dem-tay-ninh-3.jpg','',1,1,'4',1,0,2,0,0,0,0,'',0),(2,1,'1,2',0,1,'',0,1583975799,1583977516,1,2,1583975700,0,2,'Bảo vệ Ngày &amp; Đêm Bình Dương Tổng kết thi đua khen thưởng nhân kỷ niệm 10 năm – Ngày thành lập','bao-ve-ngay-dem-binh-duong-tong-ket-thi-dua-khen-thuong-nhan-ky-niem-10-nam-ngay-thanh-lap','Ngày 12/10/2018 tại Bình Dương, Chi nhánh Công ty TNHH Dịch vụ Bảo vệ Ngày & Đêm tại Bình Dương, long trọng tổ chức Lễ kỷ niệm 10 năm ngày thành lập (01/10/2008 – 01/10/2018)','2020_03/post87.jpg','',1,1,'4',1,0,5,0,0,0,0,'',0),(1,1,'1,2',0,1,'',0,1583921421,1583977528,1,1,1583921340,0,2,'Công đoàn chi nhánh Bảo vệ Bình Dương tặng quà trung thu cho con em người lao động','cong-doan-chi-nhanh-bao-ve-binh-duong-tang-qua-trung-thu-cho-con-em-nguoi-lao-dong','Sáng 15/9/2018, Bảo vệ Ngày & Đêm tại Bình Dương tổ chức tặng quà Trung thu cho con em cán bộ nhân viên đang làm việc tại đơn vị.','2020_03/tang-qua-hs-gioi.jpg','',1,1,'4',1,0,5,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_admins`
--

DROP TABLE IF EXISTS `nv4_vi_news_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `catid` smallint(5) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `pub_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0,
  `app_content` tinyint(4) NOT NULL DEFAULT 0,
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_admins`
--

LOCK TABLES `nv4_vi_news_admins` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_block`
--

DROP TABLE IF EXISTS `nv4_vi_news_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  UNIQUE KEY `bid` (`bid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_block`
--

LOCK TABLES `nv4_vi_news_block` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_block_cat`
--

DROP TABLE IF EXISTS `nv4_vi_news_block_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

LOCK TABLES `nv4_vi_news_block_cat` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_block_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_block_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_cat`
--

DROP TABLE IF EXISTS `nv4_vi_news_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT 0,
  `weight` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sort` smallint(5) NOT NULL DEFAULT 0,
  `lev` smallint(5) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT 0,
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT 3,
  `newday` tinyint(2) unsigned NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 0,
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT 0,
  `edit_time` int(11) unsigned NOT NULL DEFAULT 0,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_cat`
--

LOCK TABLES `nv4_vi_news_cat` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_cat` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_cat` VALUES (1,0,'Tin tức - Sự kiện','','tin-tuc-su-kien','','','',0,1,1,0,'viewcat_page_new',0,'',3,2,0,'','','',1583921359,1583921359,'6',1),(2,0,'Doanh nghiệp &amp; khách hàng','','doanh-nghiep-khach-hang','','','',0,2,2,0,'viewcat_page_new',0,'',3,2,0,'','','',1583977487,1583977487,'6',1);
/*!40000 ALTER TABLE `nv4_vi_news_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_config_post`
--

DROP TABLE IF EXISTS `nv4_vi_news_config_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_config_post`
--

LOCK TABLES `nv4_vi_news_config_post` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_config_post` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_config_post` VALUES (4,0,0,0,0),(7,0,0,0,0),(5,0,0,0,0),(10,0,0,0,0),(11,0,0,0,0),(12,0,0,0,0);
/*!40000 ALTER TABLE `nv4_vi_news_config_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_detail`
--

DROP TABLE IF EXISTS `nv4_vi_news_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) unsigned NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_detail`
--

LOCK TABLES `nv4_vi_news_detail` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_detail` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_detail` VALUES (1,'','','<p>&nbsp;</p>\r\n\r\n<p>Phát biểu chia sẻ động viên các các cháu, đồng chí Trương Quang Sàng – Bí thư Chi bộ, Giám đốc&nbsp;Chi nhánh Bảo vệ Ngày &amp; Đêm tại Bình Dương&nbsp;khẳng định tầm quan trọng của các bậc phụ huynh trong việc chăm lo bồi dưỡng thể chất, giáo dục trí tuệ cho thế hệ trẻ nói chung, con em cán bộ nhân viên công ty nói riêng. Thay mặt Chi bộ, đồng chí Sàng giao nhiệm vụ cho các tổ chức đoàn thể gắn chương trình hoạt động của tổ chức mình với nội dung chăm lo cho các cháu, trong đó Công đoàn cơ sở giữ vai trò quan trọng.</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/nds---binh---duong.jpg\" src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/nds---binh---duong.jpg\" /></p>\r\n\r\n<p>Kể từ ngày thành lập đến nay, công tác chăm lo đời sống vật chất, tinh thần cho cán bộ viên được công đoàn cơ sở Chi nhánh&nbsp;Bảo vệ Ngày &amp; Đêm tại Bình Dương&nbsp;đặc biệt quan tâm, từ việc tổ chức sinh chủ điểm cho đoàn viên công đoàn đến thăm hỏi ốm đau, hiếu, hỉ, trợ cấp cho công đoàn viên có hoàn cảnh khó khăn, tạo sự gắn bó giữa các đoàn viên công đoàn. Đây là động lực để đoàn viên công đoàn yên tâm làm việc, hoàn thành tốt nhiệm vụ. Hàng năm Ban Chấp hành công đoàn cơ sở đã phối hợp với lãnh đạo chi nhánh trợ cấp và tặng quà cho đoàn viên công đoàn vào các kỳ tết nguyên đán, tết của đồng bảo Khmer (đặc biệt là đoàn viên có hoàn cảnh khó khăn); tổ chức trao thưởng cho các cháu thiếu nhi là con cán bộ nhân viên,&nbsp;bảo vệ&nbsp;có thành tích trong học tập.</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/tang-qua-hs-gioi.jpg\" src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/tang-qua-hs-gioi.jpg\" /></p>\r\n\r\n<p>Công đoàn cơ sở&nbsp;Bảo vệ Ngày &amp; Đêm tại Bình Dương&nbsp;đã làm tốt công tác tuyên truyền, giáo dục chính trị tư tưởng cho đoàn viên công đoàn thông qua các buổi sinh hoạt mừng ngày lễ lớn, triển khai quy tắc giao tiếp ứng xử xây dựng hình ảnh “Người vệ sĩ đẹp và thân thiện”, học tập và làm theo tấm gương đạo đức Hồ Chí Minh, đổi mới phong cách, thái độ phục vụ của&nbsp;nhân viên bảo vệ&nbsp;hướng tới sự hài lòng của khách hàng… Ngoài ra, Công đoàn Bảo vệ Ngày &amp; Đêm tại Bình Dương còn phối hợp với lãnh đạo chi nhánh tổ chức tốt hội nghị cán bộ công nhân viên, thống nhất xây dựng quy chế dân chủ, quy chế nội bộ. Thực hiện tốt chế độ tiền lương, phụ cấp, thai sản, ốm đau, chế độ thi đua khen thưởng cho cán bộ nhân viên.</p>\r\n\r\n<p>Nhiệm vụ trọng tâm trong thời gian tới, Công đoàn cơ sở Bảo vệ Ngày &amp; Đêm tại Bình Dương tiếp tục đẩy mạnh các phong trào thi đua góp phần hoàn thành xuất sắc nhiệm vụ, thực hiện tốt vai trò của công đoàn cơ sở chăm lo bảo vệ quyền lợi hợp pháp, chính đáng của người lao động; tích cực nghiên cứu và tham mưu cho Ban Giám đốc Chi nhánh, đẩy mạnh các hoạt động duy trì và nâng cao chất lượng&nbsp;dịch vụ bảo vệ chuyên nghiệp, phát triển kinh doanh, không ngừng nâng cao trình độ chuyên môn và chăm lo đời sống vật chất cho cán bộ, nhân viên bảo vệ của chi nhánh, tổ chức tốt các phong trào thi đua, các hoạt động văn hóa, thể thao; Phát hiện và giới thiệu đoàn viên công đoàn ưu tú cho Chi bộ để bổi dưỡng, rèn luyện phát triển Đảng.</p>','','','',2,'',0,1,1,1),(4,'','','<p>Xuất hiện trên thị trường thực phẩm dinh dưỡng cho trẻ em từ năm 1866 tại Châu Âu, với hơn 150 năm xây dựng và phát triển Nestlé ngày nay được biết đến là thương hiệu toàn cầu về các sản phẩm: Bánh kẹo, bánh ngũ cốc, cà phê, nước uống đóng chai, sản phẩm dinh dưỡng y học, thức ăn công thức dinh dưỡng…</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/bao-ve-ngay-dem-nestle.jpg\" src=\"https://baovengayvadem.com/images/bao-ve-ngay-dem-nestle.jpg\" /></p>\r\n\r\n<p>Bảo vệ Ngày &amp; Đêm tại Nhà máy Netslé Đồng Nai</p>\r\n\r\n<p>Năm 1992&nbsp;Nestlé Việt Nam&nbsp;được thành lập tại TP.HCM, hiện đang sở hữu 6 nhà máy và hơn 2.000 nhân viên trên toàn quốc. Với tổng vốn đầu tư 520 triệu USD, Nestlé không chỉ thể hiện cam kết phát triển lâu dài của Công ty tại Việt Nam, mà còn mong muốn nâng cao chất lượng cuộc sống và góp phần vào một tương lai khỏe mạnh hơn cho các thế hệ gia đình Việt.</p>\r\n\r\n<p>Công ty TNHH Dịch vụ Bảo vệ Ngày &amp; Đêm tự hào là đối tác&nbsp;cung cấp dịch vụ bảo vệ chuyên nghiệp&nbsp;cho Nestlé Việt Nam từ nhiều năm nay. Quá trình cung cấp&nbsp;dịch vụ bảo vệ&nbsp;chuyên nghiệp cho Nestlé Việt Nam, Bảo bệ Ngày &amp; Đêm luôn tuân thủ các quy định về an ninh an toàn của đối tác và thực hiện tốt các qui chuẩn của ngành cung cấp dịch vụ bảo vệ chuyên nghiệp theo các tiêu chuẩn ISO 9001:2015, Sedex…</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/2019/HINHBAIVIET/giai---thuong---an---toan--toan---dien.jpg\" src=\"https://baovengayvadem.com/images/2019/HINHBAIVIET/giai---thuong---an---toan--toan---dien.jpg\" /></p>\r\n\r\n<p>Giải thưởng “An toàn toàn diện” Netslé trao tặng Bảo vệ Ngày &amp; Đêm</p>\r\n\r\n<p>Không chỉ là giá trị thương hiệu,&nbsp;Bảo vệ Ngày &amp; Đêm&nbsp;luôn cải tiến nâng cao chất lượng để phù hợp và làm thỏa mãn các yêu cầu khắt khe về an ninh trật tự, an toàn nhà máy cho tất cả các khách hàng. Cùng với sự đảm bảo về chất lượng, Bảo vệ Ngày &amp; Đêm luôn quan tâm đến hình ảnh thương hiệu của mình, dù bất cứ ở môi trường làm việc nào, hình ảnh Bảo vệ Ngày &amp; Đêm không chỉ là điểm nhấn mà còn góp phần tại nên giá trị cộng thêm cho thương hiệu của khách hàng.</p>\r\n\r\n<p>Chính điều đó Bảo vệ Ngày &amp; Đêm luôn có những hợp đồng với các thương hiệu lớn như: Toyta, Mercerdes Benz, Calgil, Pepsico, Gemandept, Uniben, Nutifood, Vietcombank, FPT, VNPT, hệ thống Vinpro+, Hệ thống trung tâm thương mại Vincom… mà Nestlé Việt Nam là một trong những đối tác chiến lược của Bảo vệ Ngày &amp; Đêm.</p>\r\n\r\n<p>Giải thưởng “An toàn toàn diện” mà Nestlé trao tặng là phần thưởng uy tín, giá trị đối với đối tác cung cấp dịch vụ&nbsp;bảo vệ chuyên nghiệp&nbsp;năm 2018, đây cũng là niềm tự hào của tập thể cán bộ nhân viên Bảo vệ Ngày &amp; Đêm đang làm việc tại Nestlé Việt Nam và là phần thưởng mang giá trị cho uy tín của thương hiệu Bảo vệ Ngày &amp; Đêm trong toàn hệ thống.</p>','','','',0,'',0,1,1,1),(2,'','','<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/C1.jpg\" src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/C1.jpg\" /></p>\r\n\r\n<p>Lễ tân buổi lễ</p>\r\n\r\n<p>Đến dự lễ có đồng chí Ngô Chí Hiếu – Tổng giám đốc công ty, đồng chí Trương Quang Sàng – Giám đốc Chi nhánh, lãnh đạo địa phương, đại diện khách hàng, các chi nhánh, đại diện các đội bảo vệ, cán bộ các phòng, ban của Tổng công ty và chi nhánh cùng tham dự.</p>\r\n\r\n<p>Đồng chí Trương Quang Sàng – Giám đốc Chi nhánh, phát biểu khai mạc buổi lễ và báo cáo tóm tắt quá trình xây dựng và phát triển chi nhánh trong thời gian qua, bên cạnh đó đưa ra định hướng chiến lược phát triển kinh doanh trong thời gian tới.</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/C2.jpg\" src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/C2.jpg\" /></p>\r\n\r\n<p>Đ/c Ngô Chí Hiếu (thứ hai, hàng trước, từ phải qua) dự lễ kỷ niệm</p>\r\n\r\n<p>Tổng kết phong trào thi đua, đồng thời biểu dương những thành tích của các đơn vị tập thể, cá nhân có thành tích xuất sắc do đồng chí Nguyễn Thành Chơn – Phó Giám đốc chi nhánh nêu rõ: Các tập thể, cá nhân không ngừng nâng cao vai trò, trách nhiệm trong thực hiện nhiệm vụ đảm bảo an toàn tài sản cho khách hàng tại các mục tiêu. Đặc biệt trong tháng thi đua có 26 cá nhân có thành tích nổi bật mà các đội đã bình xét.</p>\r\n\r\n<p>Công tác kinh doanh tăng: 10 vị trí 24/24h, 01 vị trí 6/24h Cũng trong đơth thi đua tuyển dụng mới 45 nhân viên; Củng cố công tác nghiệp vụ không để xảy ra tình trạng mất cấp tài sản của khách hàng tại các mục tiêu, không có tình trạng nhân viên Bảo vệ vi phạm nội quy công ty, quy định của khách hàng, tổ chức huấn luyện, đào tạo cho nhân viên nắm rõ các quy trình xử lý tình huống cháy nổ, trôm cấp tại các đội, thực hiện tuần tra 04 cuộc phát hiện 16 trường hợp vi phạm nội quy công ty như ngủ trong ca trực, tác phong không nghiêm túc, bỏ ca trực…</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/C3.jpg\" src=\"https://baovengayvadem.com/images/HINH-BAI-VIET/BINH-DUONG/C3.jpg\" /></p>\r\n\r\n<p>Đ/c Trương Quang Sàng – Giám đốc Chi nhánh phát biểu tại buổi lễ</p>\r\n\r\n<p>Tại buổi Lễ kỷ niệm 10 năm ngày thành lập, Bảo vệ Ngày &amp; Đêm Bình Dương tổ chức biểu dương các cá nhân có thời gian công tác từ 5 năm trở lên, và khen thưởng các tập thể và 26 nhân viên có thành tích xuất sắc trong đợt thi đua gồm: Cán bộ Nhân viên đội BD11 – Tập thể đạt giải xuất sắc nhiệm vụ; Cán bộ nhân viên đội BD20 – Tập thể hoàn thành tốt nhiệm vụ. Nhân viên Tạ Thị Thao – đội BD13, nhân viên Nguyễn Văn Bét – Ca Trưởng Đội BP01 và nhân viên Phù A Nhì – Ca trưởng Đội BD16 – hoàn thành tốt nhiệm vụ.</p>\r\n\r\n<p>Định hướng công tác phát động thi đua trong thời gian tới: Đẩy mạnh công tác tuyên truyền giáo dục chính trị, tư tưởng, vận động CBNV tích cực học tập chỉ thị, nghị quyết của Đảng, chính sách pháp luật của Nhà nước và nghị quyết chi bộ nhằm nâng cao nhận thức, bản lĩnh chính trị của giai cấp công nhân, góp phần giữ vững ổn định chính trị, trật tự và an toàn xã hội, đặc biệt là an toàn mục tiêu. Bám sát các mục tiêu phát triển kinh doanh năm 2018, tập trung đẩy mạnh các phong trào hành động trong CBNV với những nội dung cụ thể như: Giữ vững các mục tiêu hện có phát triển mới từ 12 đến 15 vị trí 24/24h; tuyển dụng 90 nhân sự và giảm tỷ lệ nghỉ việc xuống còn 7%/năm; Công tác hành chánh đảm bảo công cụ dụng cụ trang thiết bị phục vụ công tác. Công tác nghiệp Vụ huấn luyện và xử lý các sự việc hiệu quả, tăng cường kiểm tra điều lệnh, hỗ trợ nghiệp vụ các đội, không để xảy ra sự cố gây thiệt hại cho khách hàng.</p>\r\n\r\n<p>Tại các đội bảo vệ: Đảm bảo quân số lên ca, không để quân nghỉ quá 5% tổng quân số toàn đội. Không để xảy ra sự cố ở các mục tiêu; Không có nhân viên vi phạm nội qui cty và pháp luật nhà nước; Có mối quan hệ chặc chẽ với khách hàng; Đoàn kết nội bộ, nhà đội vệ sinh sạch sẽ; Tuần tra kiểm tra đêm đúng theo quy định công ty; Thực hiện tốt các thông báo, qui định; Công tác báo cáo,đề xuất phải kịp thời; Phát huy vai trò trách nhiệm và công tác quản lý.</p>\r\n\r\n<p>Đối với nhân viên: Có tác phong điều lệnh đảm bảo; Không vi phạm kỷ luật cty và pháp luật nhà nước; Có tinh thần đoàn kết và ý thức tập thể; Chấp hành mệnh lện cấp trên; Hoàn thành nhiệm vụ được giao; Thực hiện đúng các qui trình nghiệp vụ do công ty đề ra.</p>','','','',2,'',0,1,1,1),(3,'','','<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/2019/LETONGKET/BTUE.jpg\" src=\"https://baovengayvadem.com/images/2019/LETONGKET/BTUE.jpg\" /></p>\r\n\r\n<p>Đồng chí Lưu Xuân Tuệ – Chủ tịch HĐTV Công ty Bảo vệ Ngày &amp; Đêm</p>\r\n\r\n<p>Một năm qua, với sự nỗ lực của tập thể CBNV toàn công ty nên các chỉ tiêu kinh doanh chủ yếu đều hoàn thành trên 90% kế hoạch đề ra. Hội đồng thành viên nhiệt liệt biểu dương ban Tổng giám đốc, Giám đốc các chi nhánh và văn phòng đại diện, cùng toàn thể CBNV của Công ty đặc biệt là 360 đại biểu có mặt tại buổi lễ hôm nay. Cũng nhân dịp này, chúng tôi trân trọng ghi nhận sự đóng góp không nhỏ và không thể thiếu của Chi bộ, Công đoàn, Đoàn thanh niên và các tổ chức quần chúng trong Cty Bảo vệ Ngày &amp; Đêm đã trực tiếp hay gián tiếp tạo điều kiện thuận lợi để Doanh nghiệp kinh doanh đúng pháp luật và đóng góp thiết thực cho Xã hội.</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/2019/LETONGKET/B.jpg\" src=\"https://baovengayvadem.com/images/2019/LETONGKET/B.jpg\" /></p>\r\n\r\n<p>Toàn cảnh buổi lễ</p>\r\n\r\n<p><strong><em>Thưa các đồng chí!</em></strong></p>\r\n\r\n<p>Chia tay năm 2018, chúng ta tạm rời xa những lo toan vất vả trong cuộc sống và công việc thường ngày để ngồi lại với nhau, nhìn về phía trước và xác định đi tiếp chặng đường mới với nhiều thử thách phải vượt qua giống như trước đây, từng năm, từng năm một, chúng ta đã từng bước vững chãi qua 17 lần tổng kết, 17 lần chúng ta gặp nhau để người cũ nắm tay người mới nối thành vòng tay đoàn kết của đại gia đình Bảo vệ Ngày &amp; Đêm vượt qua mọi thách thức để nắm lấy cơ hội của năm mới 2019.</p>\r\n\r\n<p>Những thách thức đó là: Mất cân bằng lao động giữa các ngành nghề, cạnh tranh thị trường dịch vụ, thị trường lao động không lành mạnh của một số lớn các công ty bảo vệ hiện nay dẫn đến tình trạng thiếu niềm tin nên người lao động nhảy việc, thậm chí còn là nạn nhân của những chiêu trò lừa đảo đầy rẫy trên mạng xã hội…Chúng ta sẽ vượt qua những thách thức đó bằng những cam kết và hành động cụ thể như sẽ tiết kiệm chi phí gián tiếp, tăng chi phí trực tiếp nhằm tăng lương mỗi năm cho người lao động từ 10 đến 15%, cải tiến chương trình đào tạo và đào tạo lại nghiệp vụ, không ngừng nâng cao chất lượng dịch vụ để khách hàng ghi nận và tăng giá nhằm cải thiện tích cực thu nhập của CBNV trong Công ty.</p>\r\n\r\n<p>Những cơ hội đó là: Thương hiệu Bảo Vệ Ngày &amp; Đêm luôn luôn có chỗ đứng vững chắc trên thị trường với sự thừa nhận của hàng ngàn khách hàng, chúng ta không cần phải sử dụng đến các chiêu trò PR mà liên tục các đơn hàng được gửi về các bộ phận kinh doanh.</p>\r\n\r\n<p>Để hoàn thành và hoàn thành vượt mức kế hoạch năm 2019, Hội đồng thành viên yêu cầu các đơn vị phải lập kế hoạch chi tiết và giải pháp cụ thể cho từng chỉ tiêu của đơn vị mình. Triển khai quyết liệt các hành động, ngay từ bây giờ với tinh thần trách nhiệm cao nhất, với tư duy liên tục đổi mới, sáng tạo phù hợp với đòi hỏi cao của khách hàng và người lao động.</p>\r\n\r\n<p>Áp dụng linh hoạt các chế độ chính sách đãi ngộ, đảm bảo quyền lợi chính đáng của người lao động – Ưu tiên nguồn lực cao nhất cho nhân viên tại các mục tiêu bảo vệ, tuân thủ nghiêm ngặt các quy định của Công ty về nhận diện thương hiệu và kinh doanh đúng pháp luật.</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/2019/LETONGKET/B1.jpg\" src=\"https://baovengayvadem.com/images/2019/LETONGKET/B1.jpg\" /></p>\r\n\r\n<p>Đại biểu dự lễ tổng kết</p>\r\n\r\n<p><strong><em>Thưa các đồng chí!</em></strong></p>\r\n\r\n<p>Với thách thức không nhỏ và cơ hội luôn luôn rộng mở đối với Công ty chúng ta, với tất cả chúng ta, Hội đồng thành viên – kêu gọi toàn thể CBNV công ty, đoàn kết một lòng, không phân biệt chức danh, không phân biệt giai tầng, hãy xoá nhoà mọi ranh giới để nắm chặt tay nhau, vững bước tiến lên cùng với thời đại cách mạng công nghiệp 4.0 – Chúng ta bảo ban nhau, hoàn thành công việc được giao, cùng nhau làm nền tảng hạnh phúc cho chính mình, tạo ra một công việc ổn định cho chính mình, không nên “<em>đứng núi này trông núi nọ</em>” để có điều kiện chăm lo cho gia đình và con em chúng ta.</p>\r\n\r\n<p>Qua hội nghị tổng kết hôm nay, Hội đồng thành viên nhờ các đồng chí chuyển lời thăm chúc tốt đẹp nhất, lời cảm ơn sâu sắc nhất đến các đồng chí vì nhiệm vụ mà không thể có mặt hôm nay.</p>\r\n\r\n<p>Nhân dịp năm mới 2019, mừng xuân Kỷ Hợi, tôi xin Chúc mừng năm mới đến toàn thể&nbsp; CBNV Cty Bảo vệ Ngày &amp; Đêm cùng gia quyến, chúc năm mới Kỷ Hợi tràn ngập niềm vui, phúc lộc và thịnh vượng –&nbsp;<strong><em>Chúc cho tất cả chúng ta một năm mới dồi dào sức khoẻ với tinh thần trách nhiệm cao nhất để &nbsp;chủ động sáng tạo trong tác nghiệp mỗi ngày đem lại thành công mạnh mẽ hơn, vững vàng hơn&nbsp; năm 2018!</em></strong></p>\r\n\r\n<p><strong>Trân trọng cảm ơn hội nghị!</strong></p>','','','',2,'',0,1,1,1),(5,'','','<p>Năm 2018 Bảo vệ Ngày &amp; Đêm Tây Ninh có những bước tiến mạnh mẽ cả về số lượng và chất lượng, phát triển thị trường cao tại các khu công nghiệp Trảng Bàng, Phước Đông (Tây Ninh), KCN Tân Phú Trung, Tây Bắc Củ Chi (TP.HCM). Các khách hàng của Bảo vệ Ngày &amp; Đêm luôn đánh giá cao về chất lượng và phong cách phục vụ.</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/2019/TAYNINH/bao-ve-ngay-dem-tay-ninh-5.jpg\" src=\"https://baovengayvadem.com/images/2019/TAYNINH/bao-ve-ngay-dem-tay-ninh-5.jpg\" /></p>\r\n\r\n<p>Theo đó Bảo vệ Ngày &amp; Đêm có được những hợp đồng với các thương hiệu nổi tiếng và trở thành khách hàng truyền thống về&nbsp;dịch vụ bảo vệ chuyên nghiệp&nbsp;như; Jinwon, Taedoo Vina (Hàn Quốc); Isuzu (Nhật Bản); Tập đoàn CP (Thái Lan); các doanh nghiệp Việt Nam như Cadivi, Phương Nam, Hoàn Vũ và các doanh nghiệp nước ngoài Đài Loan, Trung Quốc khác.</p>\r\n\r\n<p><img alt=\"\" data-src=\"https://baovengayvadem.com/images/2019/TAYNINH/bao-ve-ngay-dem-tay-ninh-2.jpg\" src=\"https://baovengayvadem.com/images/2019/TAYNINH/bao-ve-ngay-dem-tay-ninh-2.jpg\" /></p>\r\n\r\n<p>Có mặt trên thị trường dịch vụ bảo vệ chuyên nghiệp từ năm 2012, Bảo vệ Ngày &amp; Đêm Chi nhánh Tây Ninh được đánh giá là doanh nghiệp cung cấp dịch vụ&nbsp;bảo vệ chuyên nghiệp uy tín tại Tây Ninh, tạo việc làm và thu nhập ổn định cho hàng trăm lao động góp phần ổn định xã hội, thúc đẩy phát triển kinh tế địa phương, ổn định tình hình an ninh trật tự nơi có lực lượng bảo vệ Ngày &amp; Đêm&nbsp;làm nhiệm vụ.</p>','','','',2,'',0,1,1,1);
/*!40000 ALTER TABLE `nv4_vi_news_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_logs`
--

DROP TABLE IF EXISTS `nv4_vi_news_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` mediumint(8) NOT NULL DEFAULT 0,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_logs`
--

LOCK TABLES `nv4_vi_news_logs` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_rows`
--

DROP TABLE IF EXISTS `nv4_vi_news_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) unsigned NOT NULL DEFAULT 0,
  `edittime` int(11) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) unsigned NOT NULL DEFAULT 0,
  `publtime` int(11) unsigned NOT NULL DEFAULT 0,
  `exptime` int(11) unsigned NOT NULL DEFAULT 0,
  `archive` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_rows`
--

LOCK TABLES `nv4_vi_news_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_rows` VALUES (1,1,'1,2',0,1,'',0,1583921421,1583977528,1,1,1583921340,0,2,'Công đoàn chi nhánh Bảo vệ Bình Dương tặng quà trung thu cho con em người lao động','cong-doan-chi-nhanh-bao-ve-binh-duong-tang-qua-trung-thu-cho-con-em-nguoi-lao-dong','Sáng 15/9/2018, Bảo vệ Ngày & Đêm tại Bình Dương tổ chức tặng quà Trung thu cho con em cán bộ nhân viên đang làm việc tại đơn vị.','2020_03/tang-qua-hs-gioi.jpg','',1,1,'4',1,0,5,0,0,0,0,'',0),(2,1,'1,2',0,1,'',0,1583975799,1583977516,1,2,1583975700,0,2,'Bảo vệ Ngày &amp; Đêm Bình Dương Tổng kết thi đua khen thưởng nhân kỷ niệm 10 năm – Ngày thành lập','bao-ve-ngay-dem-binh-duong-tong-ket-thi-dua-khen-thuong-nhan-ky-niem-10-nam-ngay-thanh-lap','Ngày 12/10/2018 tại Bình Dương, Chi nhánh Công ty TNHH Dịch vụ Bảo vệ Ngày & Đêm tại Bình Dương, long trọng tổ chức Lễ kỷ niệm 10 năm ngày thành lập (01/10/2008 – 01/10/2018)','2020_03/post87.jpg','',1,1,'4',1,0,5,0,0,0,0,'',0),(3,1,'1',0,1,'',0,1583975915,1583977611,1,3,1583975820,0,2,'BÀI PHÁT BIỂU CỦA ĐỒNG CHÍ LƯU XUÂN TUỆ TRONG HỘI NGHỊ TỔNG KẾT NĂM 2018','bai-phat-bieu-cua-dong-chi-luu-xuan-tue-trong-hoi-nghi-tong-ket-nam-2018','Kính thưa toàn thể các đồng chí!Một lần nữa, tiếp lời đồng chí Ngô Chí Hiếu, thay mặt HĐTV, tôi nhiệt liệt chào mừng hơn 360 đại biểu, đại diện cho hơn 6.000 CBNV của Công ty TNHH Dịch Vụ Bảo Vệ Ngày & Đêm trên khắp mọi miền tổ quốc đã hoàn thành xuất sắc nhiệm vụ năm 2018 có mặt trong buổi lễ trang trọng hôm nay!','2020_03/b1.jpg','B1',1,1,'4',1,0,2,0,0,0,0,'',0),(4,2,'2',0,1,'',0,1583977711,1583977711,1,4,1583977620,0,2,'Nestlé trao giải thưởng “An toàn toàn diện” cho Bảo vệ Ngày &amp; Đêm','nestle-trao-giai-thuong-an-toan-toan-dien-cho-bao-ve-ngay-dem','Một trong những niềm vui trước thềm 2019 của Bảo vệ Ngày & Đêm là Giải thưởng “An toàn toàn diện” được Tập đoàn Netslé trao tặng, vì những đóng góp tích cực của Bảo vệ Ngày & Đêm tại doanh nghiệp này.','2020_03/bao-ve-ngay-dem-nestle.jpg','',1,1,'4',1,0,3,0,0,0,0,'',0),(5,2,'2',0,1,'',0,1583977921,1583977921,1,5,1583977860,0,2,'Bảo vệ Ngày &amp; Đêm Tây Ninh tổ chức tổng kết 2018','bao-ve-ngay-dem-tay-ninh-to-chuc-tong-ket-2018','Ngày 24/01/2019 Chi nhánh Công ty TNHH Dịch vụ Bảo vệ Ngày & Đêm tại Tây Ninh (Bảo vệ Ngày & Đêm Tây Ninh) tổ chức tổng kết thi đua năm 2018.','2020_03/bao-ve-ngay-dem-tay-ninh-3.jpg','',1,1,'4',1,0,2,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_sources`
--

DROP TABLE IF EXISTS `nv4_vi_news_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sourceid`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_sources`
--

LOCK TABLES `nv4_vi_news_sources` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_tags`
--

DROP TABLE IF EXISTS `nv4_vi_news_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `numnews` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_tags`
--

LOCK TABLES `nv4_vi_news_tags` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_tags_id`
--

DROP TABLE IF EXISTS `nv4_vi_news_tags_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id_tid` (`id`,`tid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

LOCK TABLES `nv4_vi_news_tags_id` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_tags_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_tags_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_tmp`
--

DROP TABLE IF EXISTS `nv4_vi_news_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_tmp` (
  `id` mediumint(8) unsigned NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_tmp`
--

LOCK TABLES `nv4_vi_news_tmp` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_topics`
--

DROP TABLE IF EXISTS `nv4_vi_news_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`topicid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_topics`
--

LOCK TABLES `nv4_vi_news_topics` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_page`
--

DROP TABLE IF EXISTS `nv4_vi_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_page`
--

LOCK TABLES `nv4_vi_page` WRITE;
/*!40000 ALTER TABLE `nv4_vi_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_page_config`
--

DROP TABLE IF EXISTS `nv4_vi_page_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_page_config`
--

LOCK TABLES `nv4_vi_page_config` WRITE;
/*!40000 ALTER TABLE `nv4_vi_page_config` DISABLE KEYS */;
INSERT INTO `nv4_vi_page_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','20'),('news_first','0'),('related_articles','5'),('copy_page','0'),('alias_lower','1');
/*!40000 ALTER TABLE `nv4_vi_page_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_referer_stats`
--

DROP TABLE IF EXISTS `nv4_vi_referer_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `month01` int(11) NOT NULL DEFAULT 0,
  `month02` int(11) NOT NULL DEFAULT 0,
  `month03` int(11) NOT NULL DEFAULT 0,
  `month04` int(11) NOT NULL DEFAULT 0,
  `month05` int(11) NOT NULL DEFAULT 0,
  `month06` int(11) NOT NULL DEFAULT 0,
  `month07` int(11) NOT NULL DEFAULT 0,
  `month08` int(11) NOT NULL DEFAULT 0,
  `month09` int(11) NOT NULL DEFAULT 0,
  `month10` int(11) NOT NULL DEFAULT 0,
  `month11` int(11) NOT NULL DEFAULT 0,
  `month12` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `host` (`host`),
  KEY `total` (`total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_referer_stats`
--

LOCK TABLES `nv4_vi_referer_stats` WRITE;
/*!40000 ALTER TABLE `nv4_vi_referer_stats` DISABLE KEYS */;
INSERT INTO `nv4_vi_referer_stats` VALUES ('103.74.119.124',7,1,0,0,2,3,0,0,0,0,0,1,0,1620717079);
/*!40000 ALTER TABLE `nv4_vi_referer_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_searchkeys`
--

DROP TABLE IF EXISTS `nv4_vi_searchkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `id` (`id`),
  KEY `skey` (`skey`),
  KEY `search_engine` (`search_engine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_searchkeys`
--

LOCK TABLES `nv4_vi_searchkeys` WRITE;
/*!40000 ALTER TABLE `nv4_vi_searchkeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_searchkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_siteterms`
--

DROP TABLE IF EXISTS `nv4_vi_siteterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_siteterms`
--

LOCK TABLES `nv4_vi_siteterms` WRITE;
/*!40000 ALTER TABLE `nv4_vi_siteterms` DISABLE KEYS */;
INSERT INTO `nv4_vi_siteterms` VALUES (1,'Chính sách bảo mật (Quyền riêng tư)','privacy','','',0,'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn','<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>','',0,'4','',1,1,1557802785,1557802785,1,6,0),(2,'Điều khoản và điều kiện sử dụng','terms-and-conditions','','',0,'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.','<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>','',0,'4','',2,1,1557802785,1557802785,1,2,0);
/*!40000 ALTER TABLE `nv4_vi_siteterms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_siteterms_config`
--

DROP TABLE IF EXISTS `nv4_vi_siteterms_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

LOCK TABLES `nv4_vi_siteterms_config` WRITE;
/*!40000 ALTER TABLE `nv4_vi_siteterms_config` DISABLE KEYS */;
INSERT INTO `nv4_vi_siteterms_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','20'),('news_first','0'),('related_articles','5'),('copy_page','0'),('alias_lower','1');
/*!40000 ALTER TABLE `nv4_vi_siteterms_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_slider_rows`
--

DROP TABLE IF EXISTS `nv4_vi_slider_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_slider_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Tên slide',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mô tả slide',
  `link_href` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Liên kết',
  `link_target` tinyint(4) unsigned NOT NULL DEFAULT 0 COMMENT '0: Trang hiện tại, 1: Cửa sổ mới',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Đường dẫn ảnh',
  `addtime` int(11) unsigned NOT NULL DEFAULT 0,
  `edittime` int(11) unsigned NOT NULL DEFAULT 0,
  `weight` smallint(5) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) unsigned NOT NULL DEFAULT 1 COMMENT '0: Dừng, 1: Hoạt động',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_slider_rows`
--

LOCK TABLES `nv4_vi_slider_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_slider_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_slider_rows` VALUES (1,'','','',0,'2020/slider2-1.jpg',1583917058,1583917058,1,1),(2,'','','',0,'2020/slider2.jpg',1583917082,1583917082,2,1);
/*!40000 ALTER TABLE `nv4_vi_slider_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_1`
--

DROP TABLE IF EXISTS `nv4_vi_videos_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `listcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `admin_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `artist` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) unsigned NOT NULL DEFAULT 0,
  `edittime` int(11) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `publtime` int(11) unsigned NOT NULL DEFAULT 0,
  `exptime` int(11) unsigned NOT NULL DEFAULT 0,
  `archive` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid_path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_duration` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_1`
--

LOCK TABLES `nv4_vi_videos_1` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_1` DISABLE KEYS */;
INSERT INTO `nv4_vi_videos_1` VALUES (1,1,'1',1,'admin','','',0,1583921021,1583921021,1,1583920980,0,2,'Dịch vụ bảo vệ','dich-vu-bao-ve','','https://www.youtube.com/watch?v=_52w0fhE62E&feature=emb_logo','2','0:00:00','https://img.youtube.com/vi/_52w0fhE62E/0.jpg','',3,1,'4',1,0,0,0,0);
/*!40000 ALTER TABLE `nv4_vi_videos_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_admins`
--

DROP TABLE IF EXISTS `nv4_vi_videos_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `catid` smallint(5) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `pub_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0,
  `app_content` tinyint(4) NOT NULL DEFAULT 0,
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_admins`
--

LOCK TABLES `nv4_vi_videos_admins` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_block`
--

DROP TABLE IF EXISTS `nv4_vi_videos_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  UNIQUE KEY `bid` (`bid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_block`
--

LOCK TABLES `nv4_vi_videos_block` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_block_cat`
--

DROP TABLE IF EXISTS `nv4_vi_videos_block_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_block_cat` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_block_cat`
--

LOCK TABLES `nv4_vi_videos_block_cat` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_block_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_block_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_cat`
--

DROP TABLE IF EXISTS `nv4_vi_videos_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT 0,
  `weight` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sort` smallint(5) NOT NULL DEFAULT 0,
  `lev` smallint(5) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT 0,
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT 3,
  `newday` tinyint(2) unsigned NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT 0,
  `edit_time` int(11) unsigned NOT NULL DEFAULT 0,
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_cat`
--

LOCK TABLES `nv4_vi_videos_cat` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_cat` DISABLE KEYS */;
INSERT INTO `nv4_vi_videos_cat` VALUES (1,0,'Video','','video','','','',0,1,1,0,'viewcat_page_new',0,'',1,3,2,0,'','',1583920995,1583920995,'6');
/*!40000 ALTER TABLE `nv4_vi_videos_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_config_post`
--

DROP TABLE IF EXISTS `nv4_vi_videos_config_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_config_post`
--

LOCK TABLES `nv4_vi_videos_config_post` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_config_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_config_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_detail`
--

DROP TABLE IF EXISTS `nv4_vi_videos_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_detail` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0,
  `gid` mediumint(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_detail`
--

LOCK TABLES `nv4_vi_videos_detail` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_detail` DISABLE KEYS */;
INSERT INTO `nv4_vi_videos_detail` VALUES (1,'','',0,1,1,0);
/*!40000 ALTER TABLE `nv4_vi_videos_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_logs`
--

DROP TABLE IF EXISTS `nv4_vi_videos_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` mediumint(8) NOT NULL DEFAULT 0,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_logs`
--

LOCK TABLES `nv4_vi_videos_logs` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_playlist`
--

DROP TABLE IF EXISTS `nv4_vi_videos_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_playlist` (
  `playlist_id` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `playlist_sort` int(11) unsigned NOT NULL,
  UNIQUE KEY `playlist_id` (`playlist_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_playlist`
--

LOCK TABLES `nv4_vi_videos_playlist` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_playlist_cat`
--

DROP TABLE IF EXISTS `nv4_vi_videos_playlist_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_playlist_cat` (
  `playlist_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `userid` smallint(5) unsigned NOT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT 1,
  `private_mode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `favorite` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`playlist_id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_playlist_cat`
--

LOCK TABLES `nv4_vi_videos_playlist_cat` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_playlist_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_playlist_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_rows`
--

DROP TABLE IF EXISTS `nv4_vi_videos_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `listcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `admin_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `artist` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) unsigned NOT NULL DEFAULT 0,
  `edittime` int(11) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `publtime` int(11) unsigned NOT NULL DEFAULT 0,
  `exptime` int(11) unsigned NOT NULL DEFAULT 0,
  `archive` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid_path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_duration` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_rows`
--

LOCK TABLES `nv4_vi_videos_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_videos_rows` VALUES (1,1,'1',1,'admin','','',0,1583921021,1583921021,1,1583920980,0,2,'Dịch vụ bảo vệ','dich-vu-bao-ve','','https://www.youtube.com/watch?v=_52w0fhE62E&feature=emb_logo','2','0:00:00','https://img.youtube.com/vi/_52w0fhE62E/0.jpg','',3,1,'4',1,0,0,0,0);
/*!40000 ALTER TABLE `nv4_vi_videos_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_rows_favourite`
--

DROP TABLE IF EXISTS `nv4_vi_videos_rows_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_rows_favourite` (
  `fid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  UNIQUE KEY `fid` (`fid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_rows_favourite`
--

LOCK TABLES `nv4_vi_videos_rows_favourite` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_rows_favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_rows_favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_rows_report`
--

DROP TABLE IF EXISTS `nv4_vi_videos_rows_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_rows_report` (
  `rid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  UNIQUE KEY `rid` (`rid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_rows_report`
--

LOCK TABLES `nv4_vi_videos_rows_report` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_rows_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_rows_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_sources`
--

DROP TABLE IF EXISTS `nv4_vi_videos_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sourceid`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_sources`
--

LOCK TABLES `nv4_vi_videos_sources` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_tags`
--

DROP TABLE IF EXISTS `nv4_vi_videos_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_tags` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `numnews` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_tags`
--

LOCK TABLES `nv4_vi_videos_tags` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_tags_id`
--

DROP TABLE IF EXISTS `nv4_vi_videos_tags_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `sid` (`id`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_tags_id`
--

LOCK TABLES `nv4_vi_videos_tags_id` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_tags_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_videos_tags_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_videos_uploaders`
--

DROP TABLE IF EXISTS `nv4_vi_videos_uploaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_videos_uploaders` (
  `userid` mediumint(8) NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `status` mediumint(8) NOT NULL DEFAULT 1,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_videos_uploaders`
--

LOCK TABLES `nv4_vi_videos_uploaders` WRITE;
/*!40000 ALTER TABLE `nv4_vi_videos_uploaders` DISABLE KEYS */;
INSERT INTO `nv4_vi_videos_uploaders` VALUES (1,1,1,'admin','21232f297a57a5a743894a0e4a801fc3','chauquynh06@gmail.com','admin','','Giới thiệu về admin',0);
/*!40000 ALTER TABLE `nv4_vi_videos_uploaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_voting`
--

DROP TABLE IF EXISTS `nv4_vi_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT 1,
  `active_captcha` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT 0,
  `exp_time` int(11) unsigned NOT NULL DEFAULT 0,
  `act` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`vid`),
  UNIQUE KEY `question` (`question`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_voting`
--

LOCK TABLES `nv4_vi_voting` WRITE;
/*!40000 ALTER TABLE `nv4_vi_voting` DISABLE KEYS */;
INSERT INTO `nv4_vi_voting` VALUES (2,'Bạn biết gì về NukeViet 4?','',1,0,1,'6',1275318563,0,1),(3,'Lợi ích của phần mềm nguồn mở là gì?','',1,0,1,'6',1275318563,0,1);
/*!40000 ALTER TABLE `nv4_vi_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_voting_rows`
--

DROP TABLE IF EXISTS `nv4_vi_voting_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vid` (`vid`,`title`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

LOCK TABLES `nv4_vi_voting_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_voting_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_voting_rows` VALUES (5,2,'Một bộ sourcecode cho web hoàn toàn mới.','',0),(6,2,'Mã nguồn mở, sử dụng miễn phí.','',0),(7,2,'Sử dụng HTML5, CSS3 và hỗ trợ Ajax','',0),(8,2,'Tất cả các ý kiến trên','',0),(9,3,'Liên tục được cải tiến, sửa đổi bởi cả thế giới.','',0),(10,3,'Được sử dụng miễn phí không mất tiền.','',0),(11,3,'Được tự do khám phá, sửa đổi theo ý thích.','',0),(12,3,'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.','',0),(13,3,'Tất cả các ý kiến trên','',0);
/*!40000 ALTER TABLE `nv4_vi_voting_rows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-08 16:00:02
