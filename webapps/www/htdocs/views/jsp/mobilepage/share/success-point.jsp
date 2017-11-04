<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/views/jsp/common/taglibs.jsp" %>
<fmt:setBundle basename="hotdeploy.i18n.www.user" var="userProps"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="Keywords" content="着迷、着迷网、游戏社区、游戏攻略、游戏交友">
    <meta name="description" content="来着迷小组寻找推荐游戏、实用攻略、向游戏达人提问、结交志同道合的朋友。"/>
    <link rel="icon" href="${URL_LIB}/static/img/favicon.ico" type="image/x-icon"/>
    <title>着迷分享_${jmh_title}</title>
    <link href="${URL_LIB}/static/theme/default/css/core.css?${version}" rel="stylesheet" type="text/css"/>
    <link href="${URL_LIB}/static/theme/default/css/common.css?${version}" rel="stylesheet" type="text/css"/>
    <link href="${URL_LIB}/static/theme/default/css/share.css?${version}" rel="stylesheet" type="text/css"/>
    <link href="${URL_LIB}/static/theme/default/css/joymemobile.css?${version}" rel="stylesheet" type="text/css"/>

</head>


<body>

<div id="wrap-snsLogin">

    <div class="joymeMobile-title-bg">
        <h1 class="joymeMobile-title-2"><em>推荐成功</em></h1>
    </div>

    <div class="credits">
        <div>
            <span>恭喜您获得</span>

            <p><em>${awardPoint}</em>积分</p>
            <span>您可用的积分总数已达</span>

            <p><em>${userSession.pointAmount}</em>积分</p>
        </div>
    </div>

    <div class="btn-box">
        <a href="${returnUrl}" class="btn btn-4">返回之前的页面</a>
    </div>

    <p style="text-align:center; font-size:16px;"><a href="${URL_WWW}/giftmarket" style="color:#323131">&gt;&gt;去看看我这些积分能换些什么好东西</a>
    </p>


</div>

<script src="${URL_LIB}/static/js/common/seajs.js"></script>
<script src="${URL_LIB}/static/js/common/seajs-config.js"></script>
<script>
    function returnWindow(url) {
        window.opener = null;
        window.open("http://" + url, "_self");
    }
</script>
<script src="${URL_LIB}/static/js/common/pv.js"></script>
<script type="text/javascript">
    lz_main();
</script>
</body>
</html>