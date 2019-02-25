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

package kf.plt.admin.common.rest;

import kf.plt.admin.common.biz.BaseBiz;
import kf.plt.admin.common.msg.ListResultResponse;
import kf.plt.admin.common.msg.ObjectRestResponse;
import kf.plt.admin.common.msg.TableResultResponse;
import kf.plt.admin.common.util.Query;
import kf.plt.admin.common.util.StringEscapeEditor;
import kf.plt.admin.jwt.core.context.BaseContextHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * 基础控制器
 *x
 * @author wanghaobin
 * @version 2017-06-15 8:48
 */
public class BaseController<Biz extends BaseBiz,Entity> {

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringEscapeEditor());
        binder.registerCustomEditor(String[].class, new StringEscapeEditor());
    }

    @Autowired
    protected HttpServletRequest request;
    /**
     *
     * 业务层处理类
     */
    @Autowired
    protected Biz baseBiz;

    /**
     * 增加数据
     * @param entity 增加数据实体
     * @return
     */
    @RequestMapping(value = "",method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse<Entity> add(@RequestBody Entity entity){
        baseBiz.insertSelective(entity);
        return new ObjectRestResponse<Entity>().data(entity);
    }

    /**
     * 通过 ID 获取数据
     * @param id 主键
     * @return 对象数据
     */
    @RequestMapping(value = "/{id}",method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<Entity> get(@PathVariable Object id){
        ObjectRestResponse<Entity> entityObjectRestResponse = new ObjectRestResponse<>();
        Object o = baseBiz.selectById(id);
        entityObjectRestResponse.data((Entity)o);
        return entityObjectRestResponse;
    }

    /**
     * 修改数据
     * @param entity 修改数据的实体
     * @return 对象数据
     */
    @RequestMapping(value = "/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public ObjectRestResponse<Entity> update(@RequestBody Entity entity){
        baseBiz.updateSelectiveById(entity);
        return new ObjectRestResponse<Entity>().data(entity);
    }

    /**
     * 通过 ID 删除数据
     * @param id 主键
     * @return 对象数据
     */
    @RequestMapping(value = "/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public ObjectRestResponse<Entity> remove(@PathVariable Object id){
        int result = baseBiz.deleteById(id);
        ObjectRestResponse<Entity> res = new ObjectRestResponse<Entity>();
        res.setMessage(result+"");
        return res;
    }

    /**
     * 获取所有数据
     * @return 列表数据
     */
    @RequestMapping(value = "/all",method = RequestMethod.GET)
    @ResponseBody
    public ListResultResponse<Entity> all(){
        return new ListResultResponse<Entity>().data(baseBiz.selectListAll());
    }

    /**
     * 分页获取数据
     * @param params 查询条件以及分页条件 page limit
     * @return 表格数据
     */
    @RequestMapping(value = "/page",method = RequestMethod.GET)
    @ResponseBody
    public TableResultResponse<Entity> list(@RequestParam Map<String, Object> params){
        //查询列表数据
        Query query = new Query(params);
        return baseBiz.selectByQuery(query);
    }
    public String getCurrentUserName(){
        return BaseContextHandler.getUsername();
    }


    /**
     * 根据父节点ID获取所有子节点信息
     * @param entity 请求数据实体
     * @return 列表数据
     */
    @RequestMapping(value = "/sub",method = RequestMethod.POST)
    @ResponseBody
    public ListResultResponse<Entity> getList(@RequestBody Entity entity){
        return new ListResultResponse<Entity>().data(baseBiz.selectList(entity));
    }


    /**
     * 通过树根节点查询所有事务数据
     * @param params 请求参数
     * @return 表格数据
     */
    @RequestMapping(value = "/treePage",method = RequestMethod.GET)
    @ResponseBody
    public TableResultResponse<Entity> queryByTree(@RequestParam Map<String, Object> params){
        //查询列表数据
//        Query query = new Query(params);
//
        return null;
    }


    /**
     * 根据查询条件检查是否重复
     * @param params 请求参数
     * @return 列表数据
     */
    @RequestMapping(value = "/checkRepeat",method = RequestMethod.GET)
    @ResponseBody
    public ListResultResponse<Entity> checkRepeat(@RequestParam Map<String, Object> params){
        Query query = new Query(params);
        return baseBiz.selectByCheck(query);
    }

    /**
     * 根据参数查询数据不分页
     * @param params 查询的参数
     * @return 表格数据
     */
    @RequestMapping(value = "/withoutPage",method = RequestMethod.GET)
    @ResponseBody
    public  TableResultResponse<Entity> listWithoutPage(@RequestParam Map<String, Object> params) {
        //查询列表数据
        Query query = new Query(params);
        return baseBiz.selectByQueryNoPage(query);
    }
}
