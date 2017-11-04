<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ include file="/view/jsp/common/taglibs.jsp" %>
<fmt:setBundle basename="hotdeploy.i18n.tools.default" var="def"/>
<fmt:setBundle basename="hotdeploy.i18n.tools.error" var="error"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title></title>
    <link href="/static/include/css/default.css" rel="stylesheet" type="text/css">
    <script language="JavaScript" type="text/JavaScript" src="/static/include/js/default.js"></script>
    <script type="text/javascript" src="/static/include/js/jquery.js"></script>
    <script type="text/javascript" src="/static/include/js/common.js"></script>
    <script type="text/javascript" src="/static/include/swfupload/swfupload.js"></script>
    <script type="text/javascript" src="/static/include/swfupload/swfupload.queue.js"></script>
    <script type="text/javascript" src="/static/include/swfupload/fileprogress.js"></script>
    <script type="text/javascript" src="/static/include/swfupload/appadvertise.js"></script>
    <style type="text/css">
        .td_cent {
            text-align: center;
            vertical-align: middle;
        }
    </style>
    <script>
        $().ready(function () {
            var coustomSwfu = new SWFUpload(coustomImageSettings);
            var coustomSwfu2 = new SWFUpload(coustomImageSettings2);
            $('#form_submit').bind('submit', function () {
                if ($("#tag_name").val() == '') {
                    alert("篇章名");
                    $("#tag_name").focus();
                    return false;
                }
            });

        });


        var coustomImageSettings = {
            upload_url : "${urlUpload}/json/upload/qiniu",
            post_params : {
                "at" : "joymeplatform",
                "filetype":"original"
            },

            // File Upload Settings
            file_size_limit : "2 MB",    // 2MB
            file_types : "*.jpg;*.png;*.gif",
            file_types_description : "请选择图片",
            file_queue_limit : 1,

            file_dialog_complete_handler : fileDialogComplete,
            upload_start_handler:  uploadStart,
            upload_success_handler : uploadSuccess,
            upload_complete_handler : uploadComplete,

            // Button Settings
            button_image_url : "/static/images/uploadbutton.png",
            button_placeholder_id : "upload_button",
            button_width: 61,
            button_height: 22,
            moving_average_history_size: 40,


            // Flash Settings
            flash_url : "/static/include/swfupload/swfupload.swf",
            flash9_url : "/static/include/swfupload/swfupload_fp9.swf",

            custom_settings : {},
            // Debug Settings
            debug: false}

        var coustomImageSettings2 = {
            upload_url : "${urlUpload}/json/upload/qiniu",
            post_params : {
                "at" : "joymeplatform",
                "filetype":"original"
            },

            // File Upload Settings
            file_size_limit : "2 MB",    // 2MB
            file_types : "*.jpg;*.png;*.gif",
            file_types_description : "请选择图片",
            file_queue_limit : 1,

            file_dialog_complete_handler : fileDialogComplete2,
            upload_start_handler:  uploadStart2,
            upload_success_handler : uploadSuccess2,
            upload_complete_handler : uploadComplete2,

            // Button Settings
            button_image_url : "/static/images/uploadbutton.png",
            button_placeholder_id : "upload_button2",
            button_width: 61,
            button_height: 22,
            moving_average_history_size: 40,


            // Flash Settings
            flash_url : "/static/include/swfupload/swfupload.swf",
            flash9_url : "/static/include/swfupload/swfupload_fp9.swf",

            custom_settings : {},
            // Debug Settings
            debug: false}
    </script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td height="22" class="page_navigation_td">>> 运营维护 >> 大动漫管理 >> 大动漫标签列表</td>
    </tr>
    <tr>
        <td valign="top"><br>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="list_table_header_td">新增标签:${parent_tag_name}</td>
                </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <c:if test="${fn:length(errorMsg)>0}">
                    <tr>
                        <td height="1" colspan="10" class="error_msg_td">
                            ${errorMsg}
                        </td>
                    </tr>
                </c:if>
                <tr>
                    <td height="1" class="default_line_td"></td>
                </tr>
            </table>
            <form action="/joymeapp/anime/tag/create" method="post" id="form_submit">

                <input type="hidden" name="chapter" size="48" value="chapter"/>
                <input type="hidden" name="parent_tag_id" size="48" value="${parent_tag_id}"/>
                <input type="hidden" name="parent_tag_name" size="48" value="${parent_tag_name}"/>
                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                    <tr>
                        <td height="1" colspan="3" class="default_line_td"></td>
                    </tr>
                    <tr>
                        <td height="1" class="default_line_td td_cent" width="100">
                            标签:
                        </td>
                        <td height="1">
                            <input id="tag_name" type="text" name="tag_name" size="48"/>
                        </td>
                        <td height="1" class=>
                        </td>
                    </tr>
                    <tr>
                        <td height="1" class="default_line_td td_cent" width="100">
                            预留字段:
                        </td>
                        <td height="1">
                            <input id="reserved" type="text" name="reserved" size="48"/>
                        </td>
                        <td height="1" class=>
                        </td>
                    </tr>


                    <tr>
                        <td height="1" class="default_line_td td_cent" width="100">
                            摘要:
                        </td>
                        <td height="1">
                            <textarea id="tag_desc" type="text" name="tag_desc"
                                      style="height: 80px;width: 431px"></textarea>
                        </td>
                        <td height="1" class=>
                        </td>
                    </tr>

                    <tr>
                        <td height="1" class="default_line_td td_cent" width="100">
                            IOS:
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${fn:length(iosPic) > 0}"><img id="picurl1_src" src=""
                                                                             class="img_pic" width="200px" height="200px"/></c:when>
                                <c:otherwise><img id="picurl1_src" src="/static/images/default.jpg"
                                                  class="img_pic" width="200px" height="200px"/></c:otherwise>
                            </c:choose>
                            <span id="upload_button" class="upload_button">上传</span>
                            <span id="loading" style="display:none" class="loading"><img
                                    src="/static/images/loading.gif"/></span>
                            <input id="picurl1" type="hidden" name="spic" value=""><span style="color: red">图片尺寸：360px * 200px</span>
                        </td>
                        <td height="1">
                        </td>
                    </tr>
                    <tr>
                        <td height="1" class="default_line_td td_cent" width="100">
                            android:
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${fn:length(androidPic) > 0}"><img id="picurl2_src" src=""
                                                                                 class="img_pic" width="200px" height="200px"/></c:when>
                                <c:otherwise><img id="picurl2_src" src="/static/images/default.jpg"
                                                  class="img_pic" width="200px" height="200px"/></c:otherwise>
                            </c:choose>
                            <span id="upload_button2" class="upload_button">上传</span>
                            <span id="loading2" style="display:none" class="loading"><img
                                    src="/static/images/loading.gif"/></span>
                            <input id="picurl2" type="hidden" name="bpic" value=""><span style="color: red">图片尺寸：360px * 200px</span>
                        </td>
                        <td height="1">
                        </td>
                    </tr>

                    <tr align="center">
                        <td colspan="3">
                            <input name="Submit" type="submit" class="default_button" value="提交">
                            <input name="Reset" type="button" class="default_button" value="返回"
                                   onclick="javascipt:window.history.go(-1);">
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
</body>
</html>