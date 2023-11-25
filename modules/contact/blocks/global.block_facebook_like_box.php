<?php

/**
 * @Project Block Facebook Like Box for NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2012 VINADES.,JSC. All rights reserved
 * @Createdate 10/10/2012 23:25
 */

if (!defined('NV_MAINFILE'))
    die('Stop!!!');

if (!nv_function_exists('nv_facebook_like_box_blocks')) {
    /**
     * nv_block_config_facebook_like_box_blocks()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_facebook_like_box_blocks($module, $data_block, $lang_block)
    {
        $html = "";
        $html .= "<div class=\"form-group\">";
        $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['url'] . ":</label>";
        $html .= "	<div class=\"col-sm-18\"><input class=\"form-control\" type=\"text\" name=\"config_url\" size=\"50\" value=\"" . $data_block['url'] . "\"/></div>";
        $html .= "</div>";
        $html .= "<div class=\"form-group\">";
        $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['width'] . ":</label>";
        $html .= "	<div class=\"col-sm-5\"><input class=\"form-control\" type=\"text\" name=\"config_width\" size=\"5\" value=\"" . $data_block['width'] . "\"/></div>";
        $html .= "</div>";
        $html .= "<div class=\"form-group\">";
        $html .= "  <label class=\"control-label col-sm-6\">" . $lang_block['height'] . ":</label>";
        $html .= "  <div class=\"col-sm-5\"><input class=\"form-control\" type=\"text\" name=\"config_height\" size=\"5\" value=\"" . $data_block['height'] . "\"/></div>";
        $html .= "</div>";

        $html .= "<div class=\"form-group\">";
        $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['scheme'] . ":</label>";
        $html .= "	<div class=\"col-sm-5\"> <select name=\"config_scheme\" class=\"form-control\"> ";

        $se1 = ($data_block['scheme'] == 'light') ? 'selected="selected"' : '';
        $se2 = ($data_block['scheme'] == 'dark') ? 'selected="selected"' : '';

        $html .= " <option value=\"light\"" . $se1 . ">Light</option>";
        $html .= " <option value=\"dark\"" . $se2 . ">Dark</option>";

        $html .= " </select>";
        $html .= "</div>";
        $html .= "</div>";

        $html .= "<div class=\"form-group\">";
        $html .= "  <label class=\"control-label col-sm-6\">" . $lang_block['faces'] . ":</label>";
        $chfaces = ($data_block['faces'] == 1) ? 'checked="checked"' : '';
        $html .= "  <div class=\"col-sm-18\"><div class=\"checkbox\"><label><input type=\"checkbox\" name=\"config_faces\" value=\"1\" " . $chfaces . " \></label></div></div>";
        $html .= "</div>";

        $html .= "<div class=\"form-group\">";
        $html .= "  <label class=\"control-label col-sm-6\">" . $lang_block['stream'] . ":</label>";
        $chstream = ($data_block['stream'] == 1) ? 'checked="checked"' : '';
        $html .= "  <div class=\"col-sm-18\"><div class=\"checkbox\"><label><input type=\"checkbox\" name=\"config_stream\" value=\"1\" " . $chstream . " \></label></div></div>";
        $html .= "</div>";

        $html .= "<div class=\"form-group\">";
        $html .= "  <label class=\"control-label col-sm-6\">" . $lang_block['header'] . ":</label>";
        $chheader = ($data_block['header'] == 1) ? 'checked="checked"' : '';
        $html .= "  <div class=\"col-sm-18\"><div class=\"checkbox\"><label><input type=\"checkbox\" name=\"config_header\" value=\"1\" " . $chheader . " \></label></div></div>";
        $html .= "</div>";
        return $html;
    }

    /**
     * nv_block_config_facebook_like_box_blocks_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_facebook_like_box_blocks_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['url'] = $nv_Request->get_string('config_url', 'post', 0);
        $return['config']['width'] = $nv_Request->get_int('config_width', 'post', 0);
        $return['config']['height'] = $nv_Request->get_int('config_height', 'post', 0);
        $return['config']['scheme'] = $nv_Request->get_string('config_scheme', 'post', 0);
        $return['config']['faces'] = $nv_Request->get_int('config_faces', 'post', 0);
        $return['config']['stream'] = $nv_Request->get_int('config_stream', 'post', 0);
        $return['config']['header'] = $nv_Request->get_int('config_header', 'post', 0);


        return $return;
    }

    /**
     * nv_facebook_like_box_blocks()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_facebook_like_box_blocks($block_config)
    {
        $content = '';
        $face = ($block_config['faces'] == 1) ? "true" : "false";
        $stream = ($block_config['stream'] == 1) ? "true" : "false";
        $header = ($block_config['header'] == 1) ? "true" : "false";
        $lang = (NV_LANG_DATA == 'vi') ? "vi_VN" : "en_US";
        $content .= "<iframe src=\"//www.facebook.com/plugins/likebox.php?href=" . $block_config['url'] . "&amp;width=" . $block_config['width'] . "&amp;height=" . $block_config['height'] . "&amp;colorscheme=" . $block_config['scheme'];
        $content .= "&amp;show_faces=" . $face . "&amp;border_color&amp;locale=" . $lang . "&amp;stream=" . $stream . "&amp;header=" . $header . "\" scrolling=\"no\" frameborder=\"0\" style=\"border:none; overflow:hidden; width:" . $block_config['width'] . "px; height:" . $block_config['height'] . "px;\" allowTransparency=\"true\" ></iframe>";
        return $content;
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_facebook_like_box_blocks($block_config);
}
