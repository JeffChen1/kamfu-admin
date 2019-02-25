package kf.plt.admin.sysmgnt.mapper;

import kf.plt.admin.sysmgnt.entity.Group;
import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.common.data.Tenant;
import kf.plt.admin.common.mapper.CommonMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 
 * 
 * @author Mr.AG
 * @email 463540703@qq.com
 * @version 2018-02-04 19:06:43
 */
@Tenant
public interface GroupMapper extends CommonMapper<Group> {

    List<User> selectGroupUsers(@Param("groupId") String groupId,@Param("userName") String userName);

    void deleteGroupUser(@Param("groupId")String groupId, @Param("userId") String userId);

    void insertGroupUser(@Param("id") String id, @Param("groupId") String groupId, @Param("userId") String userId,@Param("tenantId") String tenantId);

    public List<Group> queryTreeList(@Param("groupId") String groupId, @Param("name") String name,@Param("code") String code,@Param("type") String type,@Param("levelId") String levelId,@Param("enabled") String enabled);

    List<Group> queryIsLastGroup(@Param("groupId") String groupId);

    void deleGroup(@Param("groupId") String groupId);

    Group queryGroupById(@Param("groupId") String groupId);

    List<Group> selectByCode(@Param("code") String code);

    List<Group> selectAllGroup();
}
