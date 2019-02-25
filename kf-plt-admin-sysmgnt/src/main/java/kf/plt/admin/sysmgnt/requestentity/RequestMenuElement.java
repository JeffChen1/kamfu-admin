package kf.plt.admin.sysmgnt.requestentity;

import kf.ats.plt.base.entity.BaseObject;
import kf.plt.admin.sysmgnt.entity.Element;

import java.util.List;

/**
 *@Description:
 *
 *菜单资源权限请求实体
 *
 *@Author: wangs
 *
 *@Date 2018/11/6
 */
public class RequestMenuElement extends BaseObject{
    /**
     * 菜单ID
     */
    private String menuId;

    /**
     * 资源id数组
     */
    private Element[] elementIdArray;

    public String getMenuId() {
        return menuId;
    }

    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }

    public Element[] getElementIdArray() {
        return elementIdArray;
    }

    public void setElementIdArray(Element[] elementIdArray) {
        this.elementIdArray = elementIdArray;
    }
}
