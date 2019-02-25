package kf.plt.admin.auth.module.client.biz;


import kf.plt.admin.auth.module.client.entity.RoleUser;
import kf.plt.admin.auth.module.client.mapper.RoleUserMapper;
import kf.plt.admin.common.biz.BusinessBiz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

/**
 * 角色与用户 服务层
 * @author 麦锦超
 * @Ccreate 2018-08-28-下午9:34
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class RoleUserBiz extends BusinessBiz<RoleUserMapper,RoleUser> {



}
