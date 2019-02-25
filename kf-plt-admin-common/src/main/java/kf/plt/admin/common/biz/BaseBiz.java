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

package kf.plt.admin.common.biz;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import kf.plt.admin.common.mapper.CommonMapper;
import kf.plt.admin.common.msg.ListResultResponse;
import kf.plt.admin.common.msg.TableResultResponse;
import kf.plt.admin.common.util.Query;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Example;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;

/**
 * 基础业务层
 * Created by Mr.AG
 * Date: 17/1/13
 * Time: 15:13
 * Version 1.0.0
 */
public abstract class BaseBiz<M extends CommonMapper<T>, T> {

    /**
     * 查询使用mapper
     */
    @Autowired
    protected M mapper;

    public void setMapper(M mapper) {
        this.mapper = mapper;
    }

    /**
     * 根据实体查询一个数据
     * @param entity
     * @return
     */
    public T selectOne(T entity) {
        return mapper.selectOne(entity);
    }


    /**
     * 根据主键ID 查询数据
     * @param id
     * @return
     */
    public T selectById(Object id) {
        return mapper.selectByPrimaryKey(id);
    }


    /**
     *  根据实体查询数据
     * @param entity
     * @return
     */
    public List<T> selectList(T entity) {
        return mapper.select(entity);
    }

    /**
     * 查询所有数据
     * @return
     */

    public List<T> selectListAll() {
        return mapper.selectAll();
    }

    /**
     * 根据实体查询数据总量
     * @param entity
     * @return
     */
    public Long selectCount(T entity) {
        return new Long(mapper.selectCount(entity));
    }

    /**
     * 插入数据
     * @param entity
     */
    public void insertSelective(T entity) {
        mapper.insertSelective(entity);
    }

    /**
     * 删除数据
     * @param entity
     */
    public void delete(T entity) {
        mapper.delete(entity);
    }


    /**
     * 通过主键删除数据
     * @param id
     * @return
     */
    public int deleteById(Object id) {
        mapper.deleteByPrimaryKey(id);
        return 0;
    }


    /***
     * 更新数据
     * @param entity
     */
    public void updateById(T entity) {
        mapper.updateByPrimaryKey(entity);
    }


    /**
     * 更新数据
     * @param entity
     */
    public void updateSelectiveById(T entity) {
        mapper.updateByPrimaryKeySelective(entity);

    }

    /**
     * 使用拼接 sql 查询数据
     * @param example
     * @return
     */
    public List<T> selectByExample(Object example) {
        return mapper.selectByExample(example);
    }

    /**
     * 使用拼接 sql 查询数据总量
     * @param example
     * @return
     */
    public int selectCountByExample(Object example) {
        return mapper.selectCountByExample(example);
    }

    /**
     * 分页查询
     * @param query
     * @return
     */
    public TableResultResponse<T> selectByQuery(Query query) {
        Class<T> clazz = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[1];
        Example example = new Example(clazz);
        query2criteria(query, example);
        Page<Object> result = PageHelper.startPage(query.getPage(), query.getLimit());
        List<T> list = this.selectByExample(example);
        return new TableResultResponse<T>(result.getTotal(), list);
    }

    public void query2criteria(Query query, Example example) {
        if (query.entrySet().size() > 0) {
            Example.Criteria criteria = example.createCriteria();
            for (Map.Entry<String, Object> entry : query.entrySet()) {
                criteria.andLike(entry.getKey(), "%" + entry.getValue().toString() + "%");
            }
        }
    }

    /**
     * 根据参数查询没有分页
     * @param query 查询参数
     * @return 表格数据
     */
    public TableResultResponse<T> selectByQueryNoPage(Query query){
        Class<T> clazz = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[1];
        Example example = new Example(clazz);
        queryHandleCriteria(query,example);
        List<T> list = this.selectByExample(example);
        return new TableResultResponse<T>(list.toArray().length, list);
    }

    /**
     * 对参数进行处理并拼接需要查询的sql
     * @param query
     * @param example
     */
    public void queryHandleCriteria(Query query, Example example) {
        if (query.entrySet().size() > 0) {
            Example.Criteria criteria = example.createCriteria();
            for (Map.Entry<String, Object> entry : query.entrySet()) {
                criteria.andEqualTo(entry.getKey(),entry.getValue().toString());
            }
        }
    }

    /**
     * 通过子节点查询所有的数据
     * @param query
     * @return
     */
    public TableResultResponse<T> selectByTree(Query query){
        return null;
    }

    /**
     * 校验是否重复字段by Example
     * @param query
     * @return
     */
    public ListResultResponse<T> selectByCheck(Query query) {
        Class<T> clazz = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[1];
        Example example = new Example(clazz);
        check2criteria(query, example);
        List<T> list = this.selectByExample(example);
        return new ListResultResponse<T>().data(list);
    }

    /**
     * 通过Example拼接SQL
     * @param query
     * @param example
     */
    public void check2criteria(Query query, Example example) {
        if (query.entrySet().size() > 0) {
            Example.Criteria criteria = example.createCriteria();
            for (Map.Entry<String, Object> entry : query.entrySet()) {
                if(StringUtils.equals(entry.getKey(),"id")){
                    criteria.andNotEqualTo(entry.getKey(),entry.getValue().toString());
                }else {
                    criteria.andEqualTo(entry.getKey(), entry.getValue().toString());
                }
            }
        }
    }
}
