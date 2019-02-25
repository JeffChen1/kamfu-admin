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
import kf.plt.admin.common.util.Query;
import kf.plt.admin.sysmgnt.biz.RoleBiz;
import kf.plt.admin.sysmgnt.biz.ResourceAuthorityBiz;
import kf.plt.admin.sysmgnt.constant.AdminCommonConstant;
import kf.plt.admin.sysmgnt.entity.DataControl;
import kf.plt.admin.sysmgnt.entity.Element;
import kf.plt.admin.sysmgnt.entity.Role;
import kf.plt.admin.sysmgnt.requestentity.RequestRoleAuthority;
import kf.plt.admin.sysmgnt.requestentity.RequestRoleUser;
import kf.plt.admin.sysmgnt.vo.AuthorityMenuTree;
import kf.plt.admin.sysmgnt.vo.RoleTree;
import kf.plt.admin.sysmgnt.vo.RoleUsers;
import kf.plt.admin.sysmgnt.vo.MenuTree;
import kf.plt.admin.auth.client.annotation.CheckClientToken;
import kf.plt.admin.auth.client.annotation.CheckUserToken;
import kf.plt.admin.common.msg.ObjectRestResponse;
import kf.plt.admin.common.msg.TableResultResponse;
import kf.plt.admin.common.rest.BaseController;
import kf.plt.admin.common.util.TreeUtil;
import io.swagger.annotations.Api;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @version 2017-06-12 8:49
 */
@RestController
@RequestMapping("role")
@Api("群组模块")
@CheckUserToken
@CheckClientToken
public class RoleController extends BaseController<RoleBiz, Role> {
    @Autowired
    private ResourceAuthorityBiz resourceAuthorityBiz;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public ListResultResponse<Role> list(String name, String roleType) {
        if (StringUtils.isBlank(name) && StringUtils.isBlank(roleType)) {
            return new ListResultResponse<Role>().data(new ArrayList<Role>());
        }
        Example example = new Example(Role.class);
        if (StringUtils.isNotBlank(name)) {
            example.createCriteria().andLike("name", "%" + name + "%");
        }
        if (StringUtils.isNotBlank(roleType)) {
            example.createCriteria().andEqualTo("roleType", roleType);
        }

        return new ListResultResponse<Role>().data(baseBiz.selectByExample(example));
    }


    @RequestMapping(value = "/{id}/user", method = RequestMethod.PUT)
    @ResponseBody
    public ObjectRestResponse modifiyUsers(@PathVariable String id, String members, String leaders) {
        baseBiz.modifyRoleUsers(id, members, leaders);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/user", method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<RoleUsers> getUsers(@PathVariable String id) {
        return new ObjectRestResponse<RoleUsers>().data(baseBiz.getRoleUsers(id));
    }

    @RequestMapping(value = "/{id}/authority/menu", method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse modifyMenuAuthority(@PathVariable String id, String menuTrees) {
        String[] menus = menuTrees.split(",");
        baseBiz.modifyAuthorityMenu(id, menus, AdminCommonConstant.RESOURCE_TYPE_VIEW);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/authority/menu", method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<List<AuthorityMenuTree>> getMenuAuthority(@PathVariable String id) {
        return new ObjectRestResponse().data(baseBiz.getAuthorityMenu(id, AdminCommonConstant.RESOURCE_TYPE_VIEW));
    }

    @RequestMapping(value = "/{id}/authority/element/add", method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse addElementAuthority(@PathVariable String id, String menuId, String elementId) {
        baseBiz.modifyAuthorityElement(id, menuId, elementId, AdminCommonConstant.RESOURCE_TYPE_VIEW);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/authority/element/remove", method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse removeElementAuthority(@PathVariable String id, String menuId, String elementId) {
        baseBiz.removeAuthorityElement(id, elementId, AdminCommonConstant.RESOURCE_TYPE_VIEW);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/authority/element", method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<List<String>> getElementAuthority(@PathVariable String id) {
        return new ObjectRestResponse().data(baseBiz.getAuthorityElement(id, AdminCommonConstant.RESOURCE_TYPE_VIEW));
    }

    @RequestMapping(value = "/{id}/authorize/menu", method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse modifyMenuAuthorize(@PathVariable String id, String menuTrees) {
        String[] menus = menuTrees.split(",");
        baseBiz.modifyAuthorityMenu(id, menus, AdminCommonConstant.RESOURCE_TYPE_AUTHORISE);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/authorize/menu", method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<List<AuthorityMenuTree>> getMenuAuthorize(@PathVariable String id) {
        return new ObjectRestResponse().data(baseBiz.getAuthorityMenu(id, AdminCommonConstant.RESOURCE_TYPE_AUTHORISE));
    }

    @RequestMapping(value = "/{id}/authorize/element/add", method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse addElementAuthorize(@PathVariable String id, String menuId, String elementId) {
        baseBiz.modifyAuthorityElement(id, menuId, elementId, AdminCommonConstant.RESOURCE_TYPE_AUTHORISE);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/authorize/element/remove", method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse removeElementAuthorize(@PathVariable String id, String menuId, String elementId) {
        baseBiz.removeAuthorityElement(id, elementId, AdminCommonConstant.RESOURCE_TYPE_AUTHORISE);
        return new ObjectRestResponse();
    }

    /**
     *  根据角色 ID 获取资源
     * @param id 角色ID
     * @return 该角色拥有的资源
     */
    @RequestMapping(value = "/{id}/authorize/element", method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<List<String>> getElementAuthorize(@PathVariable String id) {
        return new ObjectRestResponse().data(baseBiz.getAuthorityElement(id, AdminCommonConstant.RESOURCE_TYPE_AUTHORISE));
    }

    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    @ResponseBody
    public ListResultResponse<RoleTree> tree(String name, String roleType) {
        Example example = new Example(Role.class);
        if (StringUtils.isNotBlank(name)) {
            example.createCriteria().andLike("name", "%" + name + "%");
        }
        if (StringUtils.isNotBlank(roleType)) {
            example.createCriteria().andEqualTo("roleType", roleType);
        }
        return new ListResultResponse<RoleTree>().data(getTree(baseBiz.selectByExample(example), AdminCommonConstant.ROOT));
    }

    /**
     * 获取可管理按钮的资源
     * @param menuId 菜单ID
     * @return 返回功能按钮资源
     */
    @RequestMapping(value = "/element/authorize/list", method = RequestMethod.GET)
    public TableResultResponse<Element> getAuthorizeElement(String menuId) {
        List<Element> elements = baseBiz.getAuthorizeElements(menuId);
        return new TableResultResponse<Element>(elements.size(), elements);
    }

    @RequestMapping(value = "/dataElement/authorize/list", method = RequestMethod.GET)
    public TableResultResponse<DataControl> getAuthorizeDataElement(String menuId) {
        List<DataControl> dataElements = baseBiz.getAuthorizeDataElements(menuId);
        return new TableResultResponse<DataControl>(dataElements.size(), dataElements);
    }

    /**
     * 获取可管理的菜单
     * @return
     */
    @RequestMapping(value = "/menu/authorize/list", method = RequestMethod.GET)
    public ListResultResponse<MenuTree> getAuthorizeMenus() {
        return new ListResultResponse<MenuTree>().data(TreeUtil.bulid(baseBiz.getAuthorizeMenus(), AdminCommonConstant.ROOT, null));
    }


    /**
     * 通过用户ID 获取角色列表
     * @param userId 用户ID
     * @return
     */
    @RequestMapping(value = "/roleByUser", method = RequestMethod.GET)
    @ResponseBody
    public ListResultResponse<Role> getRoleByUserId( String userId) {
        Object t = baseBiz.getRoleByUserId(userId);
        return new ListResultResponse<Role>().data(baseBiz.getRoleByUserId(userId));
    }

    private List<RoleTree> getTree(List<Role> roles, String root) {
        List<RoleTree> trees = new ArrayList<RoleTree>();
        RoleTree node = null;
        for (Role role : roles) {
            node = new RoleTree();
            node.setLabel(role.getName());
            BeanUtils.copyProperties(role, node);
            trees.add(node);
        }
        return TreeUtil.bulid(trees, root, null);
    }

    @RequestMapping(value = "/roleName",method = RequestMethod.POST)
    public ObjectRestResponse<Role> add(@RequestBody Role role){
        baseBiz.insertSelective(role);
        return new ObjectRestResponse<Role>().data(role);
    }

    @RequestMapping(value = "/updateById/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public ObjectRestResponse<Role> update(@RequestBody Role role){
        baseBiz.updateSelectiveById(role);
        return new ObjectRestResponse<Role>().data(role);
    }

    @RequestMapping(value = "/roleList", method = RequestMethod.GET)
    public List<Role> getRoleList(String userId){
       return baseBiz.selectByUserId(userId);
    }

//    @RequestMapping(value = "/page",method = RequestMethod.POST)
//    @ResponseBody
//    public TableResultResponse<Role> list(@RequestParam Map<String, Object> params){
//        //查询列表数据
//        Query query = new Query(params);
//        return baseBiz.selectByQuery(query);
//    }

    @RequestMapping(value = "/authority/saveRoleAuthority", method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse saveRoleAuthority(@RequestBody RequestRoleAuthority requestRoleAuthority) {
        return baseBiz.saveRoleAuthoritys(requestRoleAuthority);
    }


}
