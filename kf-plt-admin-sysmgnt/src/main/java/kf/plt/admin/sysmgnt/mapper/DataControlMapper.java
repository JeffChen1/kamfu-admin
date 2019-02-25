package kf.plt.admin.sysmgnt.mapper;

import kf.plt.admin.sysmgnt.entity.DataControl;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface DataControlMapper extends Mapper<DataControl> {

    public List<DataControl> selectAuthorityMenuDataByUserId(@Param("userId")String userId, @Param("menuId")String menuId);

    public List<DataControl> selectByMenuIdAndRoleId(@Param("roleId")String roleId, @Param("menuId")String menuId);
}