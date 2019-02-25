package kf.plt.admin.sysmgnt.rest;

import kf.plt.admin.auth.client.annotation.CheckClientToken;
import kf.plt.admin.auth.client.annotation.CheckUserToken;
import kf.plt.admin.common.msg.ObjectRestResponse;
import kf.plt.admin.common.rest.BaseController;
import kf.plt.admin.sysmgnt.biz.RoleUserBiz;
import kf.plt.admin.sysmgnt.entity.RoleUser;
import kf.plt.admin.sysmgnt.requestentity.RequestRoleUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 用户与角色 控制器
 * @author  麦锦超
 * @Ccreate 2018-08-28-下午9:38
 */
@Controller
@RequestMapping("roleUser")
@CheckUserToken
@CheckClientToken
public class RoleUserController extends BaseController<RoleUserBiz, RoleUser> {


    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse<RoleUser> updateRoleUserRelation(@RequestBody RequestRoleUser entity){
        baseBiz.UpateRoleUser(entity);
        return new ObjectRestResponse<RoleUser>();
    }
}
