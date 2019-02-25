package kf.plt.admin.sysmgnt.biz;

import kf.plt.admin.sysmgnt.entity.Tenant;
import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.sysmgnt.mapper.TenantMapper;
import kf.plt.admin.sysmgnt.mapper.UserMapper;
import kf.plt.admin.common.biz.BusinessBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 租户表
 *
 * @author Mr.AG
 * @email 463540703@qq.com
 * @version 2018-02-08 21:42:09
 */
@Service
public class TenantBiz extends BusinessBiz<TenantMapper,Tenant> {
    @Autowired
    private UserMapper userMapper;

    public void updateUser(String id, String userId) {
        Tenant tenant = this.mapper.selectByPrimaryKey(id);
        tenant.setOwner(userId);
        updateSelectiveById(tenant);
        User user = userMapper.selectByPrimaryKey(userId);
        user.setTenantId(id);
        userMapper.updateByPrimaryKeySelective(user);
    }
}