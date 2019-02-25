package kf.plt.admin.auth.module.client.biz;

import kf.plt.admin.auth.module.client.entity.DataControl;
import kf.plt.admin.auth.module.client.mapper.DataControlMapper;
import kf.plt.admin.common.biz.BusinessBiz;
import kf.plt.admin.common.msg.ListResultResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 数据权限资源表 service 层
 * @author 麦锦超
 * @Ccreate 2018-12-11-7:28 PM
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class DataControlBiz extends BusinessBiz<DataControlMapper,DataControl> {


    /**
     * 根据用户 ID 获取数据权限
     * @param userId 用户ID
     * @return
     */
    public ListResultResponse<DataControl> getDataResByUserId(String userId,String code,String mapMethod) {
        return new ListResultResponse<DataControl>().data(mapper.selectByUserId(userId,code,mapMethod));
    }


}
