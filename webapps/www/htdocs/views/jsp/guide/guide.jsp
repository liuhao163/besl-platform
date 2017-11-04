<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/views/jsp/common/taglibs.jsp" %>
<fmt:setBundle basename="hotdeploy.i18n.www.user" var="userProps"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ include file="/views/jsp/common/meta.jsp" %>
    <title>新手引导_${jmh_title}</title>
    <link href="${URL_LIB}/static/theme/default/css/core.css?${version}" rel="stylesheet" type="text/css"/>
    <link href="${URL_LIB}/static/theme/default/css/global.css?${version}" rel="stylesheet" type="text/css"/>
    <link href="${URL_LIB}/static/theme/default/css/common.css?${version}" rel="stylesheet" type="text/css"/>
    <link href="${URL_LIB}/static/theme/default/css/see.css?${version}" rel="stylesheet" type="text/css"/>
</head>
<body>
<c:import url="/tiles/header?redr=${requestScope.browsersURL}"/>
<div class="wrapper clearfix" id="content">
    <div class="con" id="cont_left">
        <div class="con_hd"></div>
        <div id="div_post_area" class="con_area con_blog clearfix">
        <!--发布开始-->
            <h2 class="mygroup-title"><span class="talk-about-icon"></span></h2>
            <div class="sendBox-small" id="send_box_small">
                <input value="我来说两句" id="send_box_body">

                <div class="send-icon">
                    <a class="pic" title="分享图片" href="javascript:;" id="mini_editor_photo"></a>
                    <a class="video" title="分享视频" href="javascript:;" id="mini_editor_video"></a>
                    <a class="app" title="分享APP" href="javascript:;" id="mini_editor_app"></a>
                </div>
            </div>
            <div id="div_post_con" class="comment clearfix" style="display: none">
                <!--发布开始-->
                <div id="post_area" class="conmentbd clearfix">
                    <%@ include file="/views/jsp/post/post-frame.jsp" %>
                    <div class="commentline"></div>
                    <!--发布结束-->

                    <div id="post_bottom" class="release_line"></div>
                </div>
            </div>
            <%--<!-- 推荐用户 -->--%>
            <%--<c:if test="${userSession.userDetailinfo.completeStatus.getCode() eq 'n'}">--%>
                <%--<%@include file="/hotdeploy/views/jsp/guide/recommend_user.jsp" %>--%>
            <%--</c:if>--%>
            <%--<!-- 推荐用户 -->--%>
            <!-- 内容展示list -->
            <%@ include file="/views/jsp/content/content-previewlist.jsp" %>
            <!-- 内容展示list -->
            <input type="hidden" id="hidden_pageNo" value="${page.curPage}"/>
            <input type="hidden" id="hidden_totalRows" value="${page.totalRows}"/>
            <c:set var="pageurl" value="${ctx}/guide"/>
            <%@ include file="/views/jsp/page/page.jsp" %>
        </div>
        <!--左侧结束-->
        <div class="con_ft"></div>
    </div>
    <%@ include file="/views/jsp/tiles/rightmenu.jsp" %>
</div>
<%@ include file="/views/jsp/tiles/footer.jsp" %>
<script src="${URL_LIB}/static/js/common/seajs.js"></script>
<script src="${URL_LIB}/static/js/common/seajs-config.js"></script>
<script>
    seajs.use('${URL_LIB}/static/js/init/guide-init.js')
</script>
<script src="${URL_LIB}/static/js/common/pv.js"></script>
<script type="text/javascript">
    lz_main(3);
</script>
</body>
</html>