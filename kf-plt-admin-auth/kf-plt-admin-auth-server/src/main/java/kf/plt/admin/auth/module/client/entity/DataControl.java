package kf.plt.admin.auth.module.client.entity;

import kf.ats.plt.base.entity.BaseObject;

import java.util.Date;
import javax.persistence.*;

@Table(name = "kf_sec_data_control")
public class DataControl extends BaseObject {
    /**
     * ID 数据资源主键
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "myql")
    private String id;

    /**
     * 数据资源名称
     */
    private String name;

    /**
     * 数据权限对应菜单ID
     */
    @Column(name = "menu_id")
    private String menuId;

    /**
     * 行sql 语句
     */
    @Column(name = "row_sql")
    private String rowSql;

    /**
     * 列控制sql 语句
     */
    @Column(name = "column_sql")
    private String columnSql;

    /**
     * 需要控制的mapper命名空间
     */
    @Column(name = "mapper_code")
    private String mapperCode;

    /**
     * mapper 操控函数
     */
    @Column(name = "mapper_method")
    private String mapperMethod;

    /**
     * 创建时间
     */
    @Column(name = "crt_time")
    private Date crtTime;

    /**
     * 创建ID
     */
    @Column(name = "crt_id")
    private String crtId;

    /**
     * 创建用户名
     */
    @Column(name = "crt_name")
    private String crtName;

    /**
     * 更新时间
     */
    @Column(name = "upd_time")
    private Date updTime;

    /**
     * 更新用户ID
     */
    @Column(name = "upd_id")
    private String updId;

    /**
     * 更新用户名称
     */
    @Column(name = "upd_name")
    private String updName;

    /**
     * 获取ID 数据资源主键
     *
     * @return id - ID 数据资源主键
     */
    public String getId() {
        return id;
    }

    /**
     * 设置ID 数据资源主键
     *
     * @param id ID 数据资源主键
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取数据资源名称
     *
     * @return name - 数据资源名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置数据资源名称
     *
     * @param name 数据资源名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取数据权限对应菜单ID
     *
     * @return menu_id - 数据权限对应菜单ID
     */
    public String getMenuId() {
        return menuId;
    }

    /**
     * 设置数据权限对应菜单ID
     *
     * @param menuId 数据权限对应菜单ID
     */
    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }

    /**
     * 获取行sql 语句
     *
     * @return row_sql - 行sql 语句
     */
    public String getRowSql() {
        return rowSql;
    }

    /**
     * 设置行sql 语句
     *
     * @param rowSql 行sql 语句
     */
    public void setRowSql(String rowSql) {
        this.rowSql = rowSql;
    }

    /**
     * 获取列控制sql 语句
     *
     * @return column_sql - 列控制sql 语句
     */
    public String getColumnSql() {
        return columnSql;
    }

    /**
     * 设置列控制sql 语句
     *
     * @param columnSql 列控制sql 语句
     */
    public void setColumnSql(String columnSql) {
        this.columnSql = columnSql;
    }

    /**
     * 获取需要控制的mapper命名空间
     *
     * @return mapper_code - 需要控制的mapper命名空间
     */
    public String getMapperCode() {
        return mapperCode;
    }

    /**
     * 设置需要控制的mapper命名空间
     *
     * @param mapperCode 需要控制的mapper命名空间
     */
    public void setMapperCode(String mapperCode) {
        this.mapperCode = mapperCode;
    }

    /**
     * 获取mapper 操控函数
     *
     * @return mapper_method - mapper 操控函数
     */
    public String getMapperMethod() {
        return mapperMethod;
    }

    /**
     * 设置mapper 操控函数
     *
     * @param mapperMethod mapper 操控函数
     */
    public void setMapperMethod(String mapperMethod) {
        this.mapperMethod = mapperMethod;
    }

    /**
     * 获取创建时间
     *
     * @return crt_time - 创建时间
     */
    public Date getCrtTime() {
        return crtTime;
    }

    /**
     * 设置创建时间
     *
     * @param crtTime 创建时间
     */
    public void setCrtTime(Date crtTime) {
        this.crtTime = crtTime;
    }

    /**
     * 获取创建ID
     *
     * @return crt_id - 创建ID
     */
    public String getCrtId() {
        return crtId;
    }

    /**
     * 设置创建ID
     *
     * @param crtId 创建ID
     */
    public void setCrtId(String crtId) {
        this.crtId = crtId;
    }

    /**
     * 获取创建用户名
     *
     * @return crt_name - 创建用户名
     */
    public String getCrtName() {
        return crtName;
    }

    /**
     * 设置创建用户名
     *
     * @param crtName 创建用户名
     */
    public void setCrtName(String crtName) {
        this.crtName = crtName;
    }

    /**
     * 获取更新时间
     *
     * @return upd_time - 更新时间
     */
    public Date getUpdTime() {
        return updTime;
    }

    /**
     * 设置更新时间
     *
     * @param updTime 更新时间
     */
    public void setUpdTime(Date updTime) {
        this.updTime = updTime;
    }

    /**
     * 获取更新用户ID
     *
     * @return upd_id - 更新用户ID
     */
    public String getUpdId() {
        return updId;
    }

    /**
     * 设置更新用户ID
     *
     * @param updId 更新用户ID
     */
    public void setUpdId(String updId) {
        this.updId = updId;
    }

    /**
     * 获取更新用户名称
     *
     * @return upd_name - 更新用户名称
     */
    public String getUpdName() {
        return updName;
    }

    /**
     * 设置更新用户名称
     *
     * @param updName 更新用户名称
     */
    public void setUpdName(String updName) {
        this.updName = updName;
    }
}