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

package kf.plt.admin.sysmgnt.mapper;

import kf.plt.admin.sysmgnt.entity.ResourceAuthority;
import kf.plt.admin.common.mapper.CommonMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ResourceAuthorityMapper extends CommonMapper<ResourceAuthority> {
    public void deleteByAuthorityIdAndResourceType(@Param("authorityId")String authorityId,@Param("resourceType") String resourceType,@Param("type") String type);

    public List<ResourceAuthority> selectResourceByRoleId(@Param("authorityId")String authorityId);

    /**
     * 根据资源ID 与 角色ID 删除资源
     * @param resourceId 资源 ID 拼接好的Sql
     * @param authorityId 角色ID
     */
    public void deleteByResourceId(@Param("resourceId")String resourceId,@Param("authorityId") String authorityId);

    public int insertData(ResourceAuthority resourceAuthority);
}
