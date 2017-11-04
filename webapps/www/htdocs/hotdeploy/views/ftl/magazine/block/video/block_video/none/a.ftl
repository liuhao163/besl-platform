<div class="video_area">
    <a href="javascript:void(0)" class="video_bd" name="preview" cuno="${displayContent.contentUno}"
       cid="${displayContent.contentId}" idx="${displayContent.displayOrder}">
        <img src="${displayContent.thumbImgLink}" width="${styleConfig.width}" height="${styleConfig.height}"/>
        <div class="see_videobtn"></div>
    </a>
    <#if displayContent.vTime??>
    <div class="v_time"> <span class="num">${displayContent.vTime}</span><span class="bg"></span></div>
    </#if>
    <div class="video_tit">
        <h3></h3>
    </div>
    <div class="pic_sth seevideo_pd clearfix">
        <span class="by">作者：<em><a href="${URL_WWW}/people/${displayContent.domainName}" target="_blank">${displayContent.screenName}</a></em></span><br>
        <span class="pic_time">发布：<a href="${URL_WWW}/note/${displayContent.contentId}" target="_blank">${displayContent.dateStr}</a></span>
    </div>
</div>