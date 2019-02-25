package kf.plt.admin.sysmgnt.requestentity;

import kf.ats.plt.base.entity.BaseObject;
import java.util.List;

/**
 * @author 麦锦超
 * @Ccreate 2018-08-30-上午10:34
 * 更新用户与角色的入参实体
 */
public class RequestRoleUser extends BaseObject {

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public List<String> getRoleIdArray() {
        return roleIdArray;
    }

    public void setRoleIdArray(List<String> roleIdArray) {
        this.roleIdArray = roleIdArray;
    }

    /**
     * 用户ID
     */
    private String userId;

    /**
     *  角色ID 数组
     */
    private  List<String> roleIdArray;
}
