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

package kf.plt.admin.auth.module.client.service.impl;


import kf.plt.admin.auth.feign.IUserService;
import kf.plt.admin.auth.jwt.user.JwtTokenUtil;
import kf.plt.admin.auth.module.client.service.AuthService;
import kf.plt.admin.jwt.core.constants.CommonConstants;
import kf.plt.admin.jwt.core.util.jwt.IJWTInfo;
import kf.plt.admin.jwt.core.util.jwt.JWTInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * @author ace
 */
@Service
public class AuthServiceImpl implements AuthService {

    private JwtTokenUtil jwtTokenUtil;
    private IUserService userService;

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @Autowired
    public AuthServiceImpl(
            JwtTokenUtil jwtTokenUtil,
            IUserService userService) {
        this.jwtTokenUtil = jwtTokenUtil;
        this.userService = userService;
    }

    @Override
    public String login(String username, String password) throws Exception {
        Map<String, String> data = userService.validate(username, password).getData();
        String token = "";
        if (!StringUtils.isEmpty(data.get("id"))) {
            Map<String, String> map = new HashMap<>();
            map.put(CommonConstants.JWT_KEY_TENANT_ID, String.valueOf(data.get("tenantId")));
            map.put(CommonConstants.JWT_KEY_GROUP_ID, String.valueOf(data.get("groupId")));
            JWTInfo jwtInfo = new JWTInfo(data.get("username"), data.get("id"), data.get("name"));
            token = jwtTokenUtil.generateToken(jwtInfo, map);
        }
        return token;
    }

    @Override
    public void validate(String token) throws Exception {
        jwtTokenUtil.getInfoFromToken(token);
    }

    @Override
    public Boolean invalid(String token) throws Exception {
        IJWTInfo infoFromToken = jwtTokenUtil.getInfoFromToken(token);
        redisTemplate.opsForValue().set(CommonConstants.REDIS_USER_TOKEN + infoFromToken.getId() + infoFromToken.getExpireTime().getTime(), "1");
        return true;
    }

    @Override
    public String refresh(String oldToken) throws Exception {
        IJWTInfo infoFromToken = jwtTokenUtil.getInfoFromToken(oldToken);
        invalid(oldToken);
        return jwtTokenUtil.generateToken(infoFromToken,infoFromToken.getOtherInfo());
    }
}
