/*
 *
 *  *  Copyright (C) 2018  Wanghaobin<463540703@qq.com>
 *
 *  *  AG-Enterprise 企业版源码
 *  *  郑重声明:
 *  *  如果你从其他途径获取到，请告知老A传播人，奖励1000。
 *  *  老A将追究授予人和传播人的法律责任!
 *
 *  *  This program is free software; you can redistribute it and/or modify
 *  *  it under the terms of the GNU General Public License as published by
 *  *  the Free Software Foundation; either version 2 of the License, or
 *  *  (at your option) any later version.
 *
 *  *  This program is distributed in the hope that it will be useful,
 *  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  *  GNU General Public License for more details.
 *
 *  *  You should have received a copy of the GNU General Public License along
 *  *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 */

package kf.plt.admin.sysmgnt.config;

import com.github.pagehelper.autoconfigure.PageHelperAutoConfiguration;
import kf.plt.admin.auth.datacontrol.config.DataControlConfig;
import kf.plt.admin.auth.datacontrol.interceptor.DataControlInterceptor;
import kf.plt.admin.auth.datacontrol.service.AuthDataService;
import kf.plt.admin.common.data.MybatisDataInterceptor;
import kf.plt.admin.common.data.IUserGroupDataService;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.AutoConfigureBefore;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.annotation.PostConstruct;

/**
 * 租户\部门数据隔离
 * @author ace
 * @create 2018/2/11.
 */
@Configuration("MybatisConfig")
@Primary
public class MybatisDataConfig {

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private AuthDataService authDataService;

    @Autowired
    private  DataControlConfig dataControlConfig;


    /**
     * 该方法主要是为了让当前用户可以获取授权的数据权限部门
     */
//    @Autowired
//    private IUserGroupDataService userDepartDataService;

    @PostConstruct
    public void init(){
        /**
         * 有些mapper的某些方法不需要进行隔离，则可以在配置忽略，按逗号隔开.
         * 如:"UserMapper.selectOne",表示该mapper下不进行租户隔离
         */
//        sqlSessionFactory.getConfiguration().addInterceptor(new MybatisDataInterceptor(userDepartDataService,"kf.plt.admin.sysmgnt.mapper.UserMapper.selectOne","kf.plt.admin.sysmgnt.mapper.UserMapper.selectByPrimaryKey"));
//        sqlSessionFactory.getConfiguration().addInterceptor(dataControlConfig);
//        sqlSessionFactory.getConfiguration().addInterceptor(new DataControlInterceptor(dataControlConfig,authDataService));
//        sqlSessionFactory.getConfiguration().addInterceptor(new DataCotrolQueryInterceptor(dataControlConfig,authDataService));


    }



}
