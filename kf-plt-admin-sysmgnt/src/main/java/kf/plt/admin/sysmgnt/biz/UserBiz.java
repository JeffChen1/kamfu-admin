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

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import kf.plt.admin.common.biz.BaseBiz;
import kf.plt.admin.common.biz.BusinessBiz;
import kf.plt.admin.common.msg.TableResultResponse;
import kf.plt.admin.common.util.BooleanUtil;
import kf.plt.admin.common.util.Query;
import kf.plt.admin.common.util.UUIDUtils;
import kf.plt.admin.intf.api.vo.user.UserInfo;
import kf.plt.admin.jwt.core.context.BaseContextHandler;
import kf.plt.admin.merge.core.MergeCore;
import kf.plt.admin.sysmgnt.constant.UserConstant;
import kf.plt.admin.sysmgnt.entity.Group;
import kf.plt.admin.sysmgnt.entity.Role;
import kf.plt.admin.sysmgnt.entity.RoleUser;
import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.sysmgnt.mapper.GroupMapper;
import kf.plt.admin.sysmgnt.mapper.RoleMapper;
import kf.plt.admin.sysmgnt.mapper.UserMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @version 2017-06-08 16:23
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserBiz extends BusinessBiz<UserMapper, User> {
    @Autowired
    private MergeCore mergeCore;

    @Autowired
    private GroupMapper groupMapper;

    @Autowired
    private GroupBiz groupBiz;

    @Autowired
    private RoleMapper roleMapper;

    private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12);

    @Override
    public User selectById(Object id) {
        User user = super.selectById(id);
        try {
            mergeCore.mergeOne(User.class, user);
            return user;
        } catch (Exception e) {
            return super.selectById(id);
        }
    }

    @Override
    public void insertSelective(User entity) {
        String password = new BCryptPasswordEncoder(UserConstant.PW_ENCORDER_SALT).encode(entity.getPassword());
        entity.setPassword(password);
        entity.setIsDeleted(BooleanUtil.BOOLEAN_FALSE);
        entity.setIsDisabled(BooleanUtil.BOOLEAN_FALSE);
        String userId = UUIDUtils.generateUuid();
        entity.setTenantId(BaseContextHandler.getTenantID());
        entity.setId(userId);
        entity.setIsSuperAdmin(BooleanUtil.BOOLEAN_FALSE);
        // 如果非超级管理员,无法修改用户的租户信息
        if (BooleanUtil.BOOLEAN_FALSE.equals(mapper.selectByPrimaryKey(BaseContextHandler.getUserID()).getIsSuperAdmin())) {
            entity.setIsSuperAdmin(BooleanUtil.BOOLEAN_FALSE);
        }
        groupMapper.insertGroupUser(UUIDUtils.generateUuid(), entity.getGroupId(), entity.getId(),BaseContextHandler.getTenantID());
        super.insertSelective(entity);
    }

    @Override
    public void updateSelectiveById(User entity) {
        User user = mapper.selectByPrimaryKey(entity.getId());
        if (!user.getGroupId().equals(entity.getGroupId())) {
            groupMapper.deleteGroupUser(user.getGroupId(), entity.getId());
            groupMapper.insertGroupUser(UUIDUtils.generateUuid(), entity.getGroupId(), entity.getId(),BaseContextHandler.getTenantID());
        }
        // 如果非超级管理员,无法修改用户的租户信息
        if (BooleanUtil.BOOLEAN_FALSE.equals(mapper.selectByPrimaryKey(BaseContextHandler.getUserID()).getIsSuperAdmin())) {
            entity.setTenantId(BaseContextHandler.getTenantID());
        }
        // 如果非超级管理员,无法修改用户的租户信息
        if (BooleanUtil.BOOLEAN_FALSE.equals(mapper.selectByPrimaryKey(BaseContextHandler.getUserID()).getIsSuperAdmin())) {
            entity.setIsSuperAdmin(BooleanUtil.BOOLEAN_FALSE);
        }
        super.updateSelectiveById(entity);
    }

    @Override
    public int deleteById(Object id) {
//        if (BooleanUtil.BOOLEAN_TRUE.equals(mapper.selectByPrimaryKey(BaseContextHandler.getUserID()).getIsSuperAdmin())) {
//            User user = mapper.selectByPrimaryKey(id);
//            user.setIsDeleted(BooleanUtil.BOOLEAN_TRUE);
//            this.updateSelectiveById(user);
//            return 0;
//        }
//        return 1;
        User user = mapper.selectByPrimaryKey(id);
        user.setIsDeleted(BooleanUtil.BOOLEAN_TRUE);
        this.updateSelectiveById(user);
        return 0;
    }

    @Override
    public List<User> selectByExample(Object obj) {
        Example example = (Example) obj;
        example.createCriteria().andEqualTo("isDeleted", BooleanUtil.BOOLEAN_FALSE);
        List<User> users = super.selectByExample(example);
        try {
            // 暂时注释该代码以避免做成一些错误
            //mergeCore.mergeResult(User.class, users);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return users;
        }
    }

    /**
     * 设置${bare_field_name}
     **/
    public String getSs() {
        return ss;
    }

    /**
     * 设置 ${bare_field_name}
     **/
    public void setSs(String ss) {
        this.ss = ss;
    }

    /**
     * asdf
     */
    private String ss;

    /**
     * 根据用户名获取用户信息
     *
     * @param username
     * @return
     */
    public User getUserByUsername(String username) {
        User user = new User();
        user.setUsername(username);
//        user.setIsDeleted(BooleanUtil.BOOLEAN_FALSE);
//        user.setIsDisabled(BooleanUtil.BOOLEAN_FALSE);
        return mapper.selectOne(user);
    }

    @Override
    public void query2criteria(Query query, Example example) {
        if (query.entrySet().size() > 0) {
            for (Map.Entry<String, Object> entry : query.entrySet()) {
                Example.Criteria criteria = example.createCriteria();
                criteria.andLike(entry.getKey(), "%" + entry.getValue().toString() + "%");
                example.or(criteria);
            }
        }
    }

    public List<String> getUserDataGroupIds(String userId) {
        return mapper.selectUserDataGroupIds(userId);
    }


    /**
     *@Description:
     *
     * 根据条件查询用户信息
     *
     *@Author: wangs
     *
     *@Date 2018/8/28
     */
    @Override
    public TableResultResponse<User> selectByQuery(Query query) {
        String name = "";
        String username = "";
        String groupId = "";
        Page<Object> result = PageHelper.startPage(query.getPage(), query.getLimit());
        for (String key : query.keySet()){
            if(key.equals("name")){
                name = (String) query.get(key);
            }else if(key.equals("username")){
                username = (String) query.get(key);
            }else {
                groupId = (String) query.get(key);
            }
        }
        List<User> list = this.selectByUserInfo(username,name,groupId);
        return new TableResultResponse<User>(result.getTotal(), list);
    }

    public List<User> selectByUserInfo(String username,String name ,String groupId) {
        return mapper.selective(username,name,groupId);
    }


    /**
     *  根据查询条件(账号,用户名称,组织机构ID)进行分页查询
     * @param userName 账号
     * @param userChName 用户名
     * @param groupIds 组织机构ID数组
     * @param page  分页参数
     * @param limit 条数
     * @return 用户信息列表
     */
    public TableResultResponse<User> selectByParam(String userName,String userChName,List<String> groupIds,int page,int limit) {
        if(groupIds.size() == 0 || groupIds == null) {
            return new TableResultResponse<User>();
        }
        // 根据组织机构 ID 获取所有它以下的组织机构ID
        List<Group> groupList = new ArrayList<>();
        List<String> groupIdList = new ArrayList<>();
        for (String item:groupIds) {
            List<Group> listItem = groupBiz.getAllGroupByGroupId(item);
            groupList.addAll(listItem);
        }
        // 去掉重复的groupId
        HashSet<String> groupHash = new HashSet<String>();
        for (Group item : groupList) {
            groupHash.add(item.getId());
        }
        groupIdList.addAll(groupHash);

        // 根据 groupid 拼接sql
        String groupIdSqlStr = "";
        for (String item:groupIdList) {
            groupIdSqlStr += "'"+ item + "',";
        }
        // 去掉最后一个逗号
        groupIdSqlStr = groupIdSqlStr.substring(0,groupIdSqlStr.lastIndexOf(","));
        Page<Object> result =PageHelper.startPage(page, limit);
        List<User> userList =  mapper.selective(userName,userChName,groupIdSqlStr);
        return new TableResultResponse<User>(result.getTotal(), handleDataByRole(userList));
//        Example example = new Example(User.class);
//        Example.Criteria groupExample =example.createCriteria();
//        for(String item : groupIds) {
//            Example.Criteria common =example.createCriteria();
//            if(userName != null && !userName.isEmpty()) {
//                common = common.andLike("username","%" +userName+ "%");
//            }
//            if(userChName != null && !userChName.isEmpty()){
//                common.andLike("name","%" + userChName + "%");
//            }
//            common.andEqualTo("groupId",item);
//            common.andEqualTo("isDeleted",BooleanUtil.BOOLEAN_FALSE);
//            common.andNotEqualTo("id",BaseContextHandler.getUserID());
//            example.or(common);
//        }
//        example.or(groupExample);
//        Page<Object> result = PageHelper.startPage(page, limit);
//        List<User> userList= super.selectByExample(example);
//        return new TableResultResponse<User>(result.getTotal(), handleDataByRole(userList));
    }


    /**
     *  根据用户名,账号,组织机构ID(单一),查询用户(模糊查询)
     * @param userName 账号
     * @param userChName 用户名
     * @param groupId 组织机构ID
     * @param page 第几页
     * @param limit 条数
     * @return  用户信息列表
     */
    public TableResultResponse<User> queryByParamGroupId(String userName,String userChName,String groupId, int page,int limit) {
        List<String> groupIdArray = new ArrayList<>();
        groupIdArray.add(groupId);
        return selectByParam(userName,userChName,groupIdArray,page,limit);
    }


    /**
     * 根据用户ID 获取用户的角色
     * @param userList
     * @return
     */
    public List<User> handleDataByRole(List<User> userList) {
        if (userList == null){
            return null;
        }
        for (User item : userList) {
            List<Role> roleList = roleMapper.selectRoleByUserId(item.getId());
            item.setRoleName(new ArrayList<>());
            for (Role itemRole : roleList) {

                item.getRoleName().add(itemRole.getName());
            }
        }
        return userList;
    }

    /**
     *@Description:
     *
     *
     *
     *@Author: wangs
     *
     *@Date 2018/11/6
     */
    public int validate(String password, String newPassword) {
        User user = this.getUserByUsername(BaseContextHandler.getUsername());
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder(UserConstant.PW_ENCORDER_SALT);
//        String pasw = bCryptPasswordEncoder.encode(password);
        if(user != null){
            if (encoder.matches(password, user.getPassword())) {
                String newPasswords = bCryptPasswordEncoder.encode(newPassword);
                user.setPassword(newPasswords);
                super.updateSelectiveById(user);
            }else{
                return 0;
            }
        }
        return 1;
    }


}
