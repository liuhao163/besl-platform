package com.enjoyf.webapps.tools.weblogic.content;

import com.enjoyf.platform.service.content.Content;
import com.enjoyf.platform.service.content.ContentField;
import com.enjoyf.platform.service.content.ImageContentSet;
import com.enjoyf.platform.service.service.ServiceException;
import com.enjoyf.platform.service.tools.ContentAuditStatus;
import com.enjoyf.platform.util.log.GAlerter;
import com.enjoyf.platform.util.sql.ObjectField;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: yujiaxiu
 * Date: 12-1-4
 * Time: 下午2:53
 * To change this template use File | Settings | File Templates.
 */
//屏蔽策略
public class SubstandardStrategy extends StatusStrategy{
    private ContentWebLogic contentWebLogic;
    private String contentId;
    private String uno;
    private String[] selected;
    private Integer originalValue;

    public SubstandardStrategy(ContentWebLogic contentWebLogic, String contentId, String uno, String[] selected, Integer originalValue) {
        super(contentWebLogic, contentId, uno,selected, originalValue);
        this.contentWebLogic = contentWebLogic;
        this.contentId = contentId;
        this.uno = uno;
        this.selected = selected;
        this.originalValue = originalValue;
    }

    @Override
    protected Map<ObjectField, Object> doModifyAuditColumn(Map<ObjectField, Object> map, boolean removable) {
        Map<ObjectField, Object> newMap = new HashMap<ObjectField, Object>();
        newMap.putAll(map);
        if(isAllValidStatusSame()){
            newMap.put(ContentField.AUDITSTATUS, (originalValue + ContentAuditStatus.ILLEGAL_IMG));
        }
        try {
            contentWebLogic.changeIMGStatus(contentId, uno ,newMap);
        } catch (ServiceException e) {
            GAlerter.lab("SubstandardStrategy method doModifyAuditColumn caught an Exception");
            e.printStackTrace();
        }
        return newMap;
    }
}
