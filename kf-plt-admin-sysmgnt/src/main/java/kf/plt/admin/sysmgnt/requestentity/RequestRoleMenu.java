package kf.plt.admin.sysmgnt.requestentity;

import kf.ats.plt.base.entity.BaseObject;

import java.util.List;

/**
 *@Description:
 *
 *角色菜单权限请求实体
 *
 *@Author: wangs
 *
 *@Date 2018/11/6
 */
public class RequestRoleMenu extends BaseObject{
    /**
     * 角色ID
     */
    private String roleId;

    /**
     * 菜单id数组
     */
    private String[] menuIdArray;

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String[] getMenuIdArray() {
        return menuIdArray;
    }

    public void setMenuIdArray(String[] menuIdArray) {
        this.menuIdArray = menuIdArray;
    }
}
