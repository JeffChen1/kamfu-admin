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

package com.github.wxiaoqi.security.gate.biz;

import com.codingapi.tx.annotation.TxTransaction;
import com.github.wxiaoqi.security.common.biz.BaseBiz;
import com.github.wxiaoqi.security.gate.entity.Account;
import com.github.wxiaoqi.security.gate.feign.IProdFeign;
import com.github.wxiaoqi.security.gate.mapper.AccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 *
 * @author Mr.AG
 * @email 463540703@qq.com
 * @version 2018-01-18 11:02:17
 */
@Service
public class AccountBiz extends BaseBiz<AccountMapper,Account> {
    @Autowired
    private IProdFeign prodFeign;
    @TxTransaction
    @Transactional
    public void test(){
        prodFeign.test();
        Account account = mapper.selectByPrimaryKey(1);
        Integer balance = account.getBalance();
        account.setBalance(balance-100);
        mapper.updateByPrimaryKey(account);
        int i =  1/0;
    }
}