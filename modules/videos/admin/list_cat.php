<?php

/**
 * @Project VIDEOS 4.x
 * @Author KENNYNGUYEN (nguyentiendat713@gmail.com)
 * @Website tradacongnghe.com
 * @License GNU/GPL version 2 or any later version
 * @Createdate Oct 08, 2015 10:47:41 AM
 */
if (! defined('NV_IS_FILE_ADMIN'))
    die('Stop!!!');
if (! defined('NV_IS_AJAX'))
    die('Wrong URL');

$parentid = $nv_Request->get_int('parentid', 'get', 0);

$contents = nv_show_cat_list($parentid);

include NV_ROOTDIR . '/includes/header.php';
echo $contents;
include NV_ROOTDIR . '/includes/footer.php';