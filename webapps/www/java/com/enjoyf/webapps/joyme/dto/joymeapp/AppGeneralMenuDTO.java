package com.enjoyf.webapps.joyme.dto.joymeapp;

import com.enjoyf.platform.util.reflect.ReflectUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhitaoshi
 * Date: 14-11-3
 * Time: 上午10:01
 * To change this template use File | Settings | File Templates.
 */
public class AppGeneralMenuDTO {

    private List<JoymeAppBottomMenuDTO> menuList = new ArrayList<JoymeAppBottomMenuDTO>();
    private List<JoymeAppMenuTagDTO> tagList = new ArrayList<JoymeAppMenuTagDTO>();

    public List<JoymeAppBottomMenuDTO> getMenuList() {
        return menuList;
    }

    public void setMenuList(List<JoymeAppBottomMenuDTO> menuList) {
        this.menuList = menuList;
    }

    public List<JoymeAppMenuTagDTO> getTagList() {
        return tagList;
    }

    public void setTagList(List<JoymeAppMenuTagDTO> tagList) {
        this.tagList = tagList;
    }

    @Override
    public String toString() {
        return ReflectUtil.fieldsToString(this);
    }
}
