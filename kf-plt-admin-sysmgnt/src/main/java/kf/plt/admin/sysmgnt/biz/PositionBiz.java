package kf.plt.admin.sysmgnt.biz;

import com.ace.cache.annotation.CacheClear;
import kf.plt.admin.jwt.core.context.BaseContextHandler;
import kf.plt.admin.sysmgnt.entity.Group;
import kf.plt.admin.sysmgnt.entity.Role;
import kf.plt.admin.sysmgnt.entity.Position;
import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.sysmgnt.mapper.PositionMapper;
import kf.plt.admin.sysmgnt.vo.GroupTree;
import kf.plt.admin.sysmgnt.vo.RoleTree;
import kf.plt.admin.common.biz.BusinessBiz;
import kf.plt.admin.common.util.UUIDUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 *
 * @author Mr.AG
 * @email 463540703@qq.com
 * @version 2018-02-04 19:06:43
 */
@Service
public class PositionBiz extends BusinessBiz<PositionMapper,Position> {
    /**
     * 更改岗位用户
     * @param positionId
     * @param users
     */
    @CacheClear(pre = "permission")
    public void modifyPositionUsers(String positionId, String users) {
        mapper.deletePositionUsers(positionId);
        if(StringUtils.isNotBlank(users)){
            for (String uId : users.split(",")) {
                mapper.insertPositionUser(UUIDUtils.generateUuid(),positionId,uId, BaseContextHandler.getTenantID());
            }
        }
    }

    /**
     * 获取岗位用户
     * @param positionId
     * @return
     */
    public List<User> getPositionUsers(String positionId) {
        return mapper.selectPositionUsers(positionId);
    }

    public void modifyPositionRoles(String positionId, String roles) {
        mapper.deletePositionRoles(positionId);
        if(StringUtils.isNotBlank(roles)) {
            for (String roleId : roles.split(",")) {
                mapper.insertPositionGroup(UUIDUtils.generateUuid(),positionId,roleId, BaseContextHandler.getTenantID());
            }
        }
    }

    public List<RoleTree> getPositionRoles(String positionId) {
        List<Role> roles = mapper.selectPositionRoles(positionId);
        List<RoleTree> trees = new ArrayList<RoleTree>();
        RoleTree node = null;
        for (Role role : roles) {
            node = new RoleTree();
            node.setLabel(role.getName());
            BeanUtils.copyProperties(role, node);
            trees.add(node);
        }
        return trees;
    }

    public void modifyPositionGroups(String positionId, String groups) {
        mapper.deletePositionGroups(positionId);
        if(StringUtils.isNotBlank(groups)) {
            for (String groupId : groups.split(",")) {
                mapper.insertPositionGroup(UUIDUtils.generateUuid(),positionId,groupId, BaseContextHandler.getTenantID());
            }
        }
    }

    public List<GroupTree> getPositionGroups(String positionId) {
        List<Group> groups = mapper.selectPositionGroups(positionId);
        List<GroupTree> trees = new ArrayList<>();
        groups.forEach(group -> {
            trees.add(new GroupTree(group.getId(), group.getParentId(), group.getName(),group.getCode()));
        });
        return trees;
    }

    @Override
    public void insertSelective(Position entity) {
        String groupId = entity.getGroupId();
        entity.setId(UUIDUtils.generateUuid());
        super.insertSelective(entity);
        entity.setGroupId(groupId);
        updateSelectiveById(entity);
    }
}