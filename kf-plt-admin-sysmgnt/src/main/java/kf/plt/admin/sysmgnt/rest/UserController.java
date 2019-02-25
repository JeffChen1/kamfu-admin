/*
 *  Copyright (C) 2018  Wanghaobin<463540703@qq.com>

 *  AG-Enterprise 企业版源码
 *  郑重声明:
 *  如果你从其他途径获取到，请告知老A传播人，奖励1000。
 *  老A将追究授予人和传播人的法律责任!

 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.

 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.

 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

package kf.plt.admin.sysmgnt.rest;

import kf.plt.admin.common.msg.ListResultResponse;
import kf.plt.admin.common.msg.TableResultResponse;
import kf.plt.admin.common.util.Query;
import kf.plt.admin.jwt.core.context.BaseContextHandler;
import kf.plt.admin.sysmgnt.biz.UserBiz;
import kf.plt.admin.sysmgnt.entity.Group;
import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.sysmgnt.rpc.service.PermissionService;
import kf.plt.admin.sysmgnt.vo.FrontUser;
import kf.plt.admin.sysmgnt.vo.MenuTree;
import kf.plt.admin.intf.api.vo.user.UserInfo;
import kf.plt.admin.auth.client.annotation.CheckClientToken;
import kf.plt.admin.auth.client.annotation.CheckUserToken;
import kf.plt.admin.auth.client.annotation.IgnoreUserToken;
import kf.plt.admin.common.msg.ObjectRestResponse;
import kf.plt.admin.common.rest.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @version 2017-06-08 11:51
 */
@RestController
@RequestMapping("user")
@CheckUserToken
@CheckClientToken
public class UserController extends BaseController<UserBiz,User> {

    @Autowired
    private PermissionService permissionService;

    @IgnoreUserToken
    @RequestMapping(value = "/changePsd", method = RequestMethod.POST)
    public @ResponseBody
    ObjectRestResponse<UserInfo> validate1(String username, String password, String newPassword){
        return new ObjectRestResponse<>().data(baseBiz.validate(password,newPassword));
    }

    @IgnoreUserToken
    @RequestMapping(value = "/validate", method = RequestMethod.POST)
    public @ResponseBody
    ObjectRestResponse<UserInfo> validate(String username, String password){
        BaseContextHandler.setRequestUri("/user/validate");
        return new ObjectRestResponse<UserInfo>().data(permissionService.validate(username,password));
    }

    @RequestMapping(value = "/front/info", method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<?> getUserInfo() throws Exception {
        FrontUser userInfo = permissionService.getUserInfo();
        if(userInfo==null) {
            return ResponseEntity.status(401).body(false);
        } else {
            return ResponseEntity.ok(userInfo);
        }
    }

    @RequestMapping(value = "/front/menus", method = RequestMethod.GET)
    public @ResponseBody
    ListResultResponse<MenuTree> getMenusByUsername() throws Exception {
        return new ListResultResponse<MenuTree>().data(permissionService.getMenusByUsername());
    }

    @RequestMapping(value = "/dataGroup",method = RequestMethod.GET)
    public ListResultResponse<String> getUserDataGroupIds(String userId){
        if(BaseContextHandler.getUserID().equals(userId)){
          return new ListResultResponse<String>().data(baseBiz.getUserDataGroupIds(userId));
        }
        return new ListResultResponse<String>().data(new ArrayList<>());
    }

    @Override
    public TableResultResponse<User> queryByTree(@RequestParam Map<String, Object> params){
        //获取参数
        Query query = new Query(params);
        return null;
    }


    /**
     * 通过组织机构ID 查询用户
     * @param userName 用户账户
     * @param name 用户名称
     * @param groupId 组织ID
     * @param page 页数
     * @param limit 每页条数
     * @return 返回是一个 User 类型的table 数据,多条用户信息
     */
    @RequestMapping(value = "/queryByGroup",method = RequestMethod.GET)
    @ResponseBody
    public TableResultResponse<User>  queryByGroup(String userName, String name, String groupId,int page,int limit){
       return baseBiz.queryByParamGroupId(userName,name,groupId,page,limit);
    }


    @RequestMapping(value = "/queryByParam",method = RequestMethod.POST)
    @ResponseBody
    public TableResultResponse<User> queryByParam(String userName, String name, @RequestBody List<String> groupArray,int page,int limit) {
        return baseBiz.selectByParam(userName,name,groupArray,page,limit);
    }


}
