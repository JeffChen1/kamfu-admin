package kf.plt.admin.sysmgnt.requestentity;

import kf.ats.plt.base.entity.BaseObject;

import java.util.List;

/**
 *@Description:
 *
 *角色权限属性实体
 *
 *@Author: wangs
 *
 *@Date 2018/11/6
 */
public class RequestRoleAuthority extends BaseObject{
    /**
     *菜单资源权限请求实体
     */
    private RequestMenuElement[] requestMenuElement;

    /**
     *  角色菜单权限请求实体
     */
    private RequestRoleMenu requestRoleMenu;

    public RequestMenuElement[] getRequestMenuElement() {
        return requestMenuElement;
    }

    public void setRequestMenuElement(RequestMenuElement[] requestMenuElement) {
        this.requestMenuElement = requestMenuElement;
    }

    public RequestRoleMenu getRequestRoleMenu() {
        return requestRoleMenu;
    }

    public void setRequestRoleMenu(RequestRoleMenu requestRoleMenu) {
        this.requestRoleMenu = requestRoleMenu;
    }
}
