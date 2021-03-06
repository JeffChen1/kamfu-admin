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

import kf.plt.admin.sysmgnt.entity.Role;
import kf.plt.admin.common.data.Tenant;
import kf.plt.admin.common.mapper.CommonMapper;
import kf.plt.admin.sysmgnt.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Tenant()
public interface RoleMapper extends CommonMapper<Role> {
    public void deleteRoleMembersById (@Param("roleId") String roleId);
    public void deleteRoleLeadersById (@Param("roleId") String roleId);
    public void insertRoleMembersById (@Param("id") String id,@Param("roleId") String groupId,@Param("userId") String userId,@Param("tenantId") String tenantId);
    public void insertRoleLeadersById (@Param("id") String id,@Param("roleId") String groupId,@Param("userId") String userId,@Param("tenantId") String tenantId);
    public List<Role> selectById(@Param("userId") String userId);
    public List<Role> selectRoleByUserId(@Param("userId") String userId);
}
