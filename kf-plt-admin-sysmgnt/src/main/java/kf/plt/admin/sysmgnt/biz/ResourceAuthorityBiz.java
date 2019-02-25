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

package kf.plt.admin.sysmgnt.biz;

import kf.plt.admin.sysmgnt.entity.ResourceAuthority;
import kf.plt.admin.sysmgnt.mapper.ResourceAuthorityMapper;
import kf.plt.admin.common.biz.BusinessBiz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ace on 2017/6/19.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ResourceAuthorityBiz extends BusinessBiz<ResourceAuthorityMapper,ResourceAuthority> {
    public void deleteByAuthorityIdAndResourceType(String s, String resourceTypeMenu, String type) {
        this.mapper.deleteByAuthorityIdAndResourceType(s,resourceTypeMenu,type);
    }

    /**
     * 根据角色ID 获取 资源
     * @param roleId 角色ID
     * @return 角色所有拥有资源列表
     */
    public List<ResourceAuthority> getResourceAuthorityByRoleId(String roleId){
        return mapper.selectResourceByRoleId(roleId);
    }
}
