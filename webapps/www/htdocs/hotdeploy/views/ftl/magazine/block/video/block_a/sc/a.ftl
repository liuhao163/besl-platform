<div class="bankuai fl">
    <div class="apcon clearfix">
        <div class="atit  clearfix">
            <h3>
                <a href="javascript:void(0)" name="preview" cuno="${displayContent.contentUno}"
                   cid="${displayContent.contentId}" idx="${displayContent.displayOrder}">
                ${displayContent.wallSubject}
                </a>
            </h3>

            <div class="byauthor">
                作者：<a href="${URL_WWW}/people/${displayContent.domainName}" target="_blank">${displayContent.screenName}</a>
                <span class="bytime"><a href="${URL_WWW}/note/${displayContent.contentId}" target="_blank">${displayContent.dateStr}</a></span>
            </div>
        </div>
        <div class="v_icon v_icon01">
            <div class="v_img">
                <a href="javascript:void(0)" name="preview" cuno="${displayContent.contentUno}"
                   cid="${displayContent.contentId}" idx="${displayContent.displayOrder}">
                    <img src="${displayContent.thumbImgLink}" width="${styleConfig.width}" height="${styleConfig.height}">
                </a>
                <a title="播放" class="video_btn" href="javascript:void(0)" name="preview"
                   cuno="${displayContent.contentUno}"
                   cid="${displayContent.contentId}"></a>
            </div>
        </div>
    </div>
</div>