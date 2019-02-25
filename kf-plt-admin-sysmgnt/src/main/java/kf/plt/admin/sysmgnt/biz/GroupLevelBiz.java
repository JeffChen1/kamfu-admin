package kf.plt.admin.sysmgnt.biz;

import kf.plt.admin.common.biz.BusinessBiz;
import kf.plt.admin.jwt.core.context.BaseContextHandler;
import kf.plt.admin.sysmgnt.entity.Group;
import kf.plt.admin.sysmgnt.entity.GroupLevel;
import kf.plt.admin.sysmgnt.mapper.GroupLevelMapper;
import kf.plt.admin.sysmgnt.mapper.GroupMapper;
import kf.plt.admin.sysmgnt.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

@Service
@Transactional(rollbackFor = Exception.class)
public class GroupLevelBiz extends BusinessBiz<GroupLevelMapper,GroupLevel> {


//    @Autowired
//    private GroupMapper groupMapper;

    /**
     *@Description:
     *
     *根据当前权限用户查询所有权限级次
     *@Author: wangs
     *
     *@Date 2018/11/9
     */
    public List<GroupLevel> queryByGroupId() {
        List<GroupLevel> groupLevelList = new ArrayList<>();
        //根据组织机构ID获取组织机构信息
//        Group group = groupMapper.queryGroupById(BaseContextHandler.getDepartID());
//        String groupLevelId = group.getLevelId();
//        List<GroupLevel> groupLevelIds = super.selectListAll();
//        if(groupLevelIds != null || groupLevelIds.size() > 0){
//            for( GroupLevel groupLevel : groupLevelIds){
//                if(Integer.parseInt(groupLevelId) <= Integer.parseInt(groupLevel.getLevelId())){
//                    groupLevelList.add(groupLevel);
//                }
//            }
//        }
        return mapper.selectAll();
    }
}
