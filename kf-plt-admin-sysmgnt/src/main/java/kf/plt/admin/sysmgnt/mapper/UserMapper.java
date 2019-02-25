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

import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.common.data.Tenant;
import kf.plt.admin.common.mapper.CommonMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Tenant()
public interface UserMapper extends CommonMapper<User> {
    public List<User> selectMemberByRoleId(@Param("roleId") String roleId);
    public List<User> selectLeaderByRoleId(@Param("roleId") String roleId);
    List<String> selectUserDataGroupIds(String userId);

    /**
     *  根据用户名,账号,组织机构ID查找 用户
     * @param username 账号
     * @param name 用户名
     * @param groudId 组织机构ID
     * @return 用户列表
     */
    public List<User> selective(@Param("username") String username,@Param("name") String name,@Param("groupId") String groudId);


}
