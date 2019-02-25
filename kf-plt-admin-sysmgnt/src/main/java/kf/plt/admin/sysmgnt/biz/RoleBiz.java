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

package kf.plt.admin.sysmgnt.biz;

import com.ace.cache.annotation.CacheClear;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import kf.plt.admin.common.biz.BusinessBiz;
import kf.plt.admin.common.msg.ObjectRestResponse;
import kf.plt.admin.common.util.BooleanUtil;
import kf.plt.admin.common.util.TreeUtil;
import kf.plt.admin.common.util.UUIDUtils;
import kf.plt.admin.jwt.core.context.BaseContextHandler;
import kf.plt.admin.merge.annonation.MergeResult;
import kf.plt.admin.sysmgnt.constant.AdminCommonConstant;
import kf.plt.admin.sysmgnt.entity.*;
import kf.plt.admin.sysmgnt.mapper.*;
import kf.plt.admin.sysmgnt.requestentity.RequestMenuElement;
import kf.plt.admin.sysmgnt.requestentity.RequestRoleAuthority;
import kf.plt.admin.sysmgnt.requestentity.RequestRoleMenu;
import kf.plt.admin.sysmgnt.vo.AuthorityMenuTree;
import kf.plt.admin.sysmgnt.vo.MenuTree;
import kf.plt.admin.sysmgnt.vo.RoleUsers;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.*;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @version 2017-06-12 8:48
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class RoleBiz extends BusinessBiz<RoleMapper, Role> {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private ResourceAuthorityBiz resourceAuthorityBiz;
    @Autowired
    private MenuMapper menuMapper;
    @Autowired
    private ElementMapper elementMapper;
    @Autowired
    private ResourceAuthorityMapper resourceAuthorityMapper;
    @Autowired
    private DataControlMapper dataControlMapper;

    @Override
    public void insertSelective(Role entity) {
        if (AdminCommonConstant.ROOT.equals(entity.getParentId())) {
            entity.setPath("/" + entity.getCode());
        } else {
            Role parent = this.selectById(entity.getParentId());
            entity.setPath(parent.getPath() + "/" + entity.getCode());
        }
        super.insertSelective(entity);
    }

    @Override
    public void updateById(Role entity) {
        if (AdminCommonConstant.ROOT == entity.getParentId()) {
            entity.setPath("/" + entity.getCode());
        } else {
            Role parent = this.selectById(entity.getParentId());
            entity.setPath(parent.getPath() + "/" + entity.getCode());
        }
        super.updateById(entity);
    }

    /**
     * 获取群组关联用户
     *
     * @param roleId
     * @return
     */
    public RoleUsers getRoleUsers(String roleId) {
        return new RoleUsers(userMapper.selectMemberByRoleId(roleId), userMapper.selectLeaderByRoleId(roleId));
    }

    /**
     * 变更群主所分配用户
     *
     * @param roleId
     * @param members
     * @param leaders
     */
    @CacheClear(pre = "permission")
    public void modifyRoleUsers(String roleId, String members, String leaders) {
        mapper.deleteRoleLeadersById(roleId);
        mapper.deleteRoleMembersById(roleId);
        if (!StringUtils.isEmpty(members)) {
            String[] mem = members.split(",");
            for (String m : mem) {
                mapper.insertRoleMembersById(UUIDUtils.generateUuid(), roleId, m, BaseContextHandler.getTenantID());
            }
        }
        if (!StringUtils.isEmpty(leaders)) {
            String[] mem = leaders.split(",");
            for (String m : mem) {
                mapper.insertRoleLeadersById(UUIDUtils.generateUuid(), roleId, m, BaseContextHandler.getTenantID());
            }
        }
    }

    /**
     * 变更群组关联的菜单
     *
     * @param roleId
     * @param menus
     */
    @CacheClear(keys = {"permission:menu", "permission:u"})
    public void modifyAuthorityMenu(String roleId, String[] menus, String type) {
        resourceAuthorityBiz.deleteByAuthorityIdAndResourceType(roleId + "", AdminCommonConstant.RESOURCE_TYPE_MENU, type);
        List<Menu> menuList = menuMapper.selectAll();
        Map<String, String> map = new HashMap<String, String>();
        for (Menu menu : menuList) {
            map.put(menu.getId().toString(), menu.getParentId().toString());
        }
        Set<String> relationMenus = new HashSet<String>();
        relationMenus.addAll(Arrays.asList(menus));
        ResourceAuthority authority = null;
        for (String menuId : menus) {
            findParentID(map, relationMenus, menuId);
        }
        for (String menuId : relationMenus) {
            authority = new ResourceAuthority(AdminCommonConstant.AUTHORITY_TYPE_ROLE, AdminCommonConstant.RESOURCE_TYPE_MENU);
            authority.setAuthorityId(roleId + "");
            authority.setResourceId(menuId);
            authority.setParentId("-1");
            authority.setType(type);
            resourceAuthorityBiz.insertSelective(authority);
        }
    }

    private void findParentID(Map<String, String> map, Set<String> relationMenus, String id) {
        String parentId = map.get(id);
        if (String.valueOf(AdminCommonConstant.ROOT).equals(id) || parentId == null) {
            return;
        }
        relationMenus.add(parentId);
        findParentID(map, relationMenus, parentId);
    }

    /**
     * SimpleRouteLocator
     * 分配资源权限
     *
     * @param roleId 角色ID
     * @param menuId 菜单ID 这个参数没有用可以不传
     * @param elementId 资源ID(这个资源ID包括数据资源以及按钮资源)
     */
    @CacheClear(keys = {"permission:ele", "permission:u"})
    public void modifyAuthorityElement(String roleId, String menuId, String elementId, String type) {
        ResourceAuthority authority = new ResourceAuthority();
        authority.setResourceType(type);
        authority.setAuthorityType(AdminCommonConstant.AUTHORITY_TYPE_ROLE);
        authority.setAuthorityId(roleId);
        authority.setResourceId(elementId);
        authority.setParentId("-1");
        resourceAuthorityMapper.insertSelective(authority);

    }

    /**
     * 移除资源权限
     *
     * @param roleId
     * @param elementId
     */
    @CacheClear(keys = {"permission:ele", "permission:u"})
    public void removeAuthorityElement(String roleId, String elementId, String type) {
        ResourceAuthority authority = new ResourceAuthority();
        authority.setAuthorityId(roleId + "");
        authority.setResourceId(elementId + "");
        authority.setParentId("-1");
        authority.setType(type);
        resourceAuthorityBiz.delete(authority);
    }


    /**
     * 获取群主关联的菜单
     *
     * @param roleId
     * @return
     */
    public List<AuthorityMenuTree> getAuthorityMenu(String roleId, String type) {
        List<Menu> menus = menuMapper.selectMenuByAuthorityId(String.valueOf(roleId), AdminCommonConstant.AUTHORITY_TYPE_ROLE, type);
        List<AuthorityMenuTree> trees = new ArrayList<AuthorityMenuTree>();
        AuthorityMenuTree node = null;
        for (Menu menu : menus) {
            node = new AuthorityMenuTree();
            node.setText(menu.getTitle());
            BeanUtils.copyProperties(menu, node);
            trees.add(node);
        }
        return TreeUtil.bulid(trees, "-1", null);
//        return trees;
    }

    /**
     * 获取群组关联的资源
     *
     * @param roleId
     * @return
     */
    public List<String> getAuthorityElement(String roleId, String type) {
        ResourceAuthority authority = new ResourceAuthority(AdminCommonConstant.AUTHORITY_TYPE_ROLE, AdminCommonConstant.RESOURCE_TYPE_BTN);
        authority.setAuthorityId(roleId);
        // authority.setType(type);
        List<ResourceAuthority> authorities = resourceAuthorityBiz.getResourceAuthorityByRoleId(roleId);
        List<String> ids = new ArrayList<String>();
        for (ResourceAuthority auth : authorities) {
            ids.add(auth.getResourceId());
        }
        return ids;
    }

    /**
     * 获取当前管理员可以分配的菜单
     * @return
     */
    public List<MenuTree> getAuthorizeMenus() {
        if (BooleanUtil.BOOLEAN_TRUE.equals(userMapper.selectByPrimaryKey(BaseContextHandler.getUserID()).getIsSuperAdmin())) {
            return MenuTree.buildTree(menuMapper.selectAll(), AdminCommonConstant.ROOT);
        }
        return MenuTree.buildTree(menuMapper.selectAuthorityMenuByUserId(BaseContextHandler.getUserID(), AdminCommonConstant.RESOURCE_TYPE_AUTHORISE), AdminCommonConstant.ROOT);
    }

    /**
     * 获取当前管理员可以分配资源
     * @param menuId 菜单ID
     * @return 返回是一个功能与数据资源列表
     */
    @MergeResult
    public List<Element> getAuthorizeElements(String menuId) {
        List<Element> listElement = new ArrayList<Element>();
        if (BooleanUtil.BOOLEAN_TRUE.equals(userMapper.selectByPrimaryKey(BaseContextHandler.getUserID()).getIsSuperAdmin())) {
            Example example = new Example(Element.class);
            Example.Criteria criteria = example.createCriteria();
            criteria.andEqualTo("menuId", menuId);
            listElement.addAll(elementMapper.selectByExample(example));
        }else{
            listElement.addAll(elementMapper.selectAuthorityMenuElementByUserId(BaseContextHandler.getUserID(),menuId));
        }
        List<DataControl> listData = getAuthorizeDataElements(menuId);
        if(listData.size() > 0) {
            for (DataControl item:listData) {
                Element el = new Element();
                el.setId(item.getId());
                el.setType("data");
                el.setName(item.getName());
                el.setMenuId(item.getMenuId());
                listElement.add(el);
            }
        }
        return listElement;
    }

    /**
     * 获取当前用户可以分配的数据权限
     * @param menuId 菜单ID
     * @return 返回该功能数据权限列表
     */
    public List<DataControl> getAuthorizeDataElements(String menuId) {
        if (BooleanUtil.BOOLEAN_TRUE.equals(userMapper.selectByPrimaryKey(BaseContextHandler.getUserID()).getIsSuperAdmin())) {
            Example example = new Example(DataControl.class);
            Example.Criteria criteria = example.createCriteria();
            criteria.andEqualTo("menuId", menuId);
            return dataControlMapper.selectByExample(example);
        }
        return dataControlMapper.selectAuthorityMenuDataByUserId(BaseContextHandler.getUserID(),menuId);
    }

    /**
     * 根据用户ID 查询 该用户的角色信息
     * @param userId 用户ID
     * @return
     */
    public List<Role> getRoleByUserId(String userId){
        return mapper.selectRoleByUserId(userId);
    }


    public List<Role> selectByUserId(String userId){
        return mapper.selectById(userId);
    }

    /**
     * 保存角色资源权限
     * @param resRoleAuth
     */
    public ObjectRestResponse saveRoleAuthoritys(RequestRoleAuthority resRoleAuth){

        //获取左边菜单树对象
        RequestRoleMenu requestRoleMenu = resRoleAuth.getRequestRoleMenu();

        //获取右边资源数组
        RequestMenuElement[] requestMenuElement = resRoleAuth.getRequestMenuElement();
        List<Element> eleList = new ArrayList<Element>();
        // 数据资源
        List<DataControl> dataList = new ArrayList<DataControl>();
        // 根据角色ID与菜单ID把修改过的资源查询出来
        for (RequestMenuElement item : requestMenuElement) {
              List<Element> eleTemp = elementMapper.selectByMenuIdAndRoleId(requestRoleMenu.getRoleId(),item.getMenuId());
              List<DataControl> dataTemp = dataControlMapper.selectByMenuIdAndRoleId(requestRoleMenu.getRoleId(),item.getMenuId());
              if(eleTemp.size() > 0) {
                 eleList.addAll(eleTemp);
              }
              if(dataTemp.size() > 0) {
                 dataList.addAll(dataTemp); 
              }
        }

        // 拼接删除按钮,url资源的sql
        String spiSqlStr = "";
        if (eleList.size() > 0) {
            for (Element item : eleList) {
                spiSqlStr += "'" + item.getId()+ "'" + ",";
            }
        }
        // 拼接删除数据资源的sql
        if(dataList.size() > 0) {
            for(DataControl item : dataList) {
                spiSqlStr += "'" + item.getId()+ "'" + ",";
            }
        }
        // 数据与按钮资源都存在时候才删除操作
        if(eleList.size() > 0 || dataList.size() > 0) {
            spiSqlStr = spiSqlStr.substring(0,spiSqlStr.lastIndexOf(","));
            //根据角色 ID  相关的按钮,数据权限的数据
            resourceAuthorityMapper.deleteByResourceId(spiSqlStr,requestRoleMenu.getRoleId());
        }

        // 删除该角色的菜单资源
        Example example = new Example(ResourceAuthority.class);
        Example.Criteria common =example.createCriteria();
        common.andEqualTo("authorityId",requestRoleMenu.getRoleId());
        common.andEqualTo("resourceType",AdminCommonConstant.RESOURCE_TYPE_MENU);
        example.or(common);
        resourceAuthorityMapper.deleteByExample(example);
                                              
        //保存左边菜单树
         this.modifyAuthorityMenu(requestRoleMenu.getRoleId(), requestRoleMenu.getMenuIdArray(), AdminCommonConstant.RESOURCE_TYPE_VIEW);

        //循环保存右边资源数组信息
        for(RequestMenuElement req : requestMenuElement){
            if(req != null){
                for(Element elementId : req.getElementIdArray()){
                    modifyAuthorityElement(requestRoleMenu.getRoleId(), req.getMenuId(), elementId.getId(), elementId.getType());
                }
            }else{
                return null;
            }
        }
        return  new ObjectRestResponse();
    }
    
}
