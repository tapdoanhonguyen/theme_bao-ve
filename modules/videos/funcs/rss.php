<?php

/**
 * @Project VIDEOS 4.x
 * @Author KENNYNGUYEN (nguyentiendat713@gmail.com)
 * @Website tradacongnghe.com
 * @License GNU/GPL version 2 or any later version
 * @Createdate Oct 08, 2015 10:47:41 AM
 */
if (! defined('NV_IS_MOD_VIDEOS'))
    die('Stop!!!');

$show_no_image = $module_config[$module_name]['show_no_image'];
if (empty($show_no_image)) {
    $show_no_image = 'themes/default/images/' . $module_file . '/' . 'video_placeholder.png';
}

$channel = array();
$items = array();

$channel['title'] = $module_info['custom_title'];
$channel['link'] = NV_MY_DOMAIN . NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name;
$channel['description'] = ! empty($module_info['description']) ? $module_info['description'] : $global_config['site_description'];

$catid = 0;
if (isset($array_op[1])) {
    $alias_cat_url = $array_op[1];
    $cattitle = '';
    foreach ($global_array_cat as $catid_i => $array_cat_i) {
        if ($alias_cat_url == $array_cat_i['alias']) {
            $catid = $catid_i;
            break;
        }
    }
}

$db->sqlreset()
    ->select('id, catid, publtime, title, alias, hometext, homeimgthumb, homeimgfile')
    ->order('publtime DESC')
    ->limit(30);

if (! empty($catid)) {
    $channel['title'] = $module_info['custom_title'] . ' - ' . $global_array_cat[$catid]['title'];
    $channel['link'] = NV_MY_DOMAIN . NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=' . $alias_cat_url;
    $channel['description'] = $global_array_cat[$catid]['description'];
    
    $db->from(NV_PREFIXLANG . '_' . $module_data . '_' . $catid)->where('status=1');
} else {
    $db->from(NV_PREFIXLANG . '_' . $module_data . '_rows')->where('status=1 AND inhome=1');
}
if ($module_info['rss']) {
    $result = $db->query($db->sql());
    while (list ($id, $catid_i, $publtime, $title, $alias, $hometext, $homeimgthumb, $homeimgfile) = $result->fetch(3)) {
        $catalias = $global_array_cat[$catid_i]['alias'];
        
        if ($homeimgthumb == 1 or $homeimgthumb == 2) // image file
{
            $rimages = videos_thumbs($id, $homeimgfile, $module_upload, $module_config[$module_name]['homewidth'], $module_config[$module_name]['homeheight'], 90);
        } elseif ($homeimgthumb == 3) // image url
{
            $rimages = $homeimgfile;
        } elseif (! empty($show_no_image)) // no image
{
            $rimages = NV_BASE_SITEURL . $show_no_image;
        } else {
            $rimages = '';
        }
        
        $rimages = (! empty($rimages)) ? '<img src="' . $rimages . '" width="100" align="left" border="0">' : '';
        
        $items[] = array(
            'title' => $title,
            'link' => NV_MY_DOMAIN . NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=' . $catalias . '/' . $alias . '-' . $id . $global_config['rewrite_exturl'], //
            'guid' => $module_name . '_' . $id,
            'description' => $rimages . $hometext,
            'pubdate' => $publtime
        );
    }
}
nv_rss_generate($channel, $items);
die();