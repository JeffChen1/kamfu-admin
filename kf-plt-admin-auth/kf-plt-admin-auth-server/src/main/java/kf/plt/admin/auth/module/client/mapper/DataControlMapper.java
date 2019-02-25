package kf.plt.admin.auth.module.client.mapper;

import kf.plt.admin.auth.module.client.entity.DataControl;
import kf.plt.admin.common.mapper.CommonMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 数据权限表 mapper
 * @author  麦锦超
 */
public interface DataControlMapper extends CommonMapper<DataControl> {

    /**
     * 根据用户ID 查询数据权限
     * @param userId 用户ID
     * @return
     */
    public List<DataControl> selectByUserId(@Param("userId")String userId,@Param("mapCode") String code,@Param("mapMethod") String mapMethod);
}