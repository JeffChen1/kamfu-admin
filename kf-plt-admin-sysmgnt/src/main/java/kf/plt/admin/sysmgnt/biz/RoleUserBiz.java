package kf.plt.admin.sysmgnt.biz;

import com.ace.cache.annotation.CacheClear;
import kf.plt.admin.common.biz.BusinessBiz;
import kf.plt.admin.common.util.UUIDUtils;
import kf.plt.admin.sysmgnt.entity.RoleUser;
import kf.plt.admin.sysmgnt.mapper.RoleUserMapper;
import kf.plt.admin.sysmgnt.requestentity.RequestRoleUser;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * 角色与用户 服务层
 * @author 麦锦超
 * @Ccreate 2018-08-28-下午9:34
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class RoleUserBiz extends BusinessBiz<RoleUserMapper,RoleUser> {


    /**
     *@Description:
     *
     *更新用户与角色的关系
     *
     *@Author: wangs
     *
     *@Date 2018/11/7
     */
    @CacheClear(pre = "permission")
    public void UpateRoleUser(RequestRoleUser entity) {

//        // 根据用户 ID 查询所有数据
//        Example example = new Example(RoleUser.class);
//        if (StringUtils.isNotBlank(entity.getUserId())) {
//            example.createCriteria().andEqualTo("userId",entity.getUserId());
//        }
//        List<RoleUser> roleData= super.selectByExample(example);
//
//
//        //  查找新增的元素,并插入数据库
//        for(String  item : entity.getRoleIdArray()) {
//            // 是否没有被删除的标志,0为非新增,1为新增
//            int flag = 1;
//            for(RoleUser itemRole : roleData) {
//                if(itemRole.getRoleId().equals(item)){
//                    flag = 0;
//                }
//            }
//            if(flag == 1){
//                RoleUser data = new RoleUser();
//                data.setUserId(entity.getUserId());
//                data.setRoleId(item);
//                super.insertSelective(data);
//            }
//        }
//        // 查找删除的元素
//        for(RoleUser itemRole : roleData) {
//            // 是否为新增的标志, 0为删除, 1为保留
//            int flag = 0;
//            for(String  item : entity.getRoleIdArray()) {
//                if(item.equals(itemRole.getRoleId())) {
//                    flag = 1;
//                }
//            }
//            if(flag == 0) {
//                super.delete(itemRole);
//            }
//        }
        // 根据用户 ID 删除 所有关联角色信息
        Example example = new Example(RoleUser.class);
        if (StringUtils.isNotBlank(entity.getUserId())) {
            example.createCriteria().andEqualTo("userId",entity.getUserId());
        }
        mapper.deleteByExample(example);

        //添加角色信息到用户角色表
        for (String item : entity.getRoleIdArray()) {
            if (entity.getRoleIdArray().isEmpty() || entity.getRoleIdArray().size() == 0) {
                return;
            }
            RoleUser data = new RoleUser();
            data.setUserId(entity.getUserId());
            data.setRoleId(item);
            mapper.insertSelective(data);
        }

    }
}
