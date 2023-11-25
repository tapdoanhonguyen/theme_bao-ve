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

$title = $nv_Request->get_title('title', 'post', '');
$alias = change_alias($title);
if ($module_config[$module_name]['alias_lower'])
    $alias = strtolower($alias);

$id = $nv_Request->get_int('id', 'post', 0);
$mod = $nv_Request->get_string('mod', 'post', '');

if ($mod == 'cat') {
    $tab = NV_PREFIXLANG . '_' . $module_data . '_cat';
    $stmt = $db->prepare('SELECT COUNT(*) FROM ' . $tab . ' WHERE catid!=' . $id . ' AND alias= :alias');
    $stmt->bindParam(':alias', $alias, PDO::PARAM_STR);
    $stmt->execute();
    $nb = $stmt->fetchColumn();
    if (! empty($nb)) {
        $nb = $db->query('SELECT MAX(catid) FROM ' . $tab)->fetchColumn();
        
        $alias .= '-' . (intval($nb) + 1);
    }
} elseif ($mod == 'topics') {
    $tab = NV_PREFIXLANG . '_' . $module_data . '_topics';
    $stmt = $db->prepare('SELECT COUNT(*) FROM ' . $tab . ' WHERE topicid!=' . $id . ' AND alias= :alias');
    $stmt->bindParam(':alias', $alias, PDO::PARAM_STR);
    $stmt->execute();
    $nb = $stmt->fetchColumn();
    if (! empty($nb)) {
        $nb = $db->query('SELECT MAX(topicid) FROM ' . $tab)->fetchColumn();
        
        $alias .= '-' . (intval($nb) + 1);
    }
} elseif ($mod == 'blockcat') {
    $tab = NV_PREFIXLANG . '_' . $module_data . '_block_cat';
    $stmt = $db->prepare('SELECT COUNT(*) FROM ' . $tab . ' WHERE bid!=' . $id . ' AND alias= :alias');
    $stmt->bindParam(':alias', $alias, PDO::PARAM_STR);
    $stmt->execute();
    $nb = $stmt->fetchColumn();
    if (! empty($nb)) {
        $nb = $db->query('SELECT MAX(bid) FROM ' . $tab)->fetchColumn();
        
        $alias .= '-' . (intval($nb) + 1);
    }
}

include NV_ROOTDIR . '/includes/header.php';
echo $alias;
include NV_ROOTDIR . '/includes/footer.php';