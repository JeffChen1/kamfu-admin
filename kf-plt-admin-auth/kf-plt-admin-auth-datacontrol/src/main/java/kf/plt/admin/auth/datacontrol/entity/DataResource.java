package kf.plt.admin.auth.datacontrol.entity;

import kf.ats.plt.base.entity.BaseObject;

import javax.persistence.Column;

/**
 * 数据资源实体类
 * @author maijinchao
 * @Ccreate 2018-12-13-10:21 AM
 */
public class DataResource  extends BaseObject {

    private String id;

    /**
     * 数据资源名称
     */
    private String name;

    /**
     * 数据权限对应菜单ID
     */
    private String menuId;

    /**
     * 行sql 语句
     */
    private String rowSql;

    /**
     * 列控制sql 语句
     */
    private String columnSql;

    /**
     * 需要控制的mapper命名空间
     */
    private String mapperCode;

    /**
     * mapper 操控函数
     */
    private String mapperMethod;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMenuId() {
        return menuId;
    }

    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }

    public String getRowSql() {
        return rowSql;
    }

    public void setRowSql(String rowSql) {
        this.rowSql = rowSql;
    }

    public String getColumnSql() {
        return columnSql;
    }

    public void setColumnSql(String columnSql) {
        this.columnSql = columnSql;
    }

    public String getMapperCode() {
        return mapperCode;
    }

    public void setMapperCode(String mapperCode) {
        this.mapperCode = mapperCode;
    }

    public String getMapperMethod() {
        return mapperMethod;
    }

    public void setMapperMethod(String mapperMethod) {
        this.mapperMethod = mapperMethod;
    }
}

