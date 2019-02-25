package kf.plt.admin.sysmgnt.entity;

import kf.ats.plt.base.entity.BaseObject;
import kf.plt.admin.common.audit.*;

import java.util.Date;
import javax.persistence.*;


@Table(name = "kf_sec_role_user")
@AceAudit
public class RoleUser extends BaseObject {
    /**
     * 主键  对应id
     */
    @Id
    @Column(name = "sec_role_user_id")
    @GeneratedValue(generator = "UUID")
    private String secRoleUserId;

    /**
     * 用户ID
     */
    @Column(name = "user_id")
    private String userId;

    /**
     * 机构ID   对应group_id
     */
    @Column(name = "role_id")
    private String roleId;

    private String description;

    /**
     * 创建时间
     */
    @Column(name = "crt_time")
    private Date crtTime;

    /**
     * 创建用户ID
     */
    @Column(name = "crt_user")
    @CrtUserId
    private String crtUser ;

    /**
     * 创建用户名
     */
    @Column(name = "crt_name")
    @CrtUserName
    private String crtName;

    @Column(name = "crt_host")
    private String crtHost;

    /**
     * 更新时间
     */
    @Column(name = "upd_time")
    private Date updTime;

    /**
     * 更新用户ID
     */
    @Column(name = "upd_user")
    @ModifiedUserId
    private String updUser;

    /**
     * 更新用户名称
     */
    @Column(name = "upd_name")
    @ModifiedUserName
    private String updName;

    @Column(name = "upd_host")
    private String updHost;

    /**
     * 扩展属性1
     */
    private String attr1;

    /**
     * 扩展属性2
     */
    private String attr2;

    /**
     * 扩展属性3
     */
    private String attr3;

    /**
     * 扩展属性4
     */
    private String attr4;

    /**
     * 扩展属性5
     */
    private String attr5;

    /**
     * 扩展属性6
     */
    private String attr6;

    /**
     * 扩展属性7
     */
    private String attr7;

    /**
     * 扩展属性8
     */
    private String attr8;

    /**
     * 租户ID，用于支持多个系统管理体系
     */
    @Column(name = "tenant_id")
    private String tenantId;

    /**
     * 获取主键  对应id
     *
     * @return sec_role_user_id - 主键  对应id
     */
    public String getSecRoleUserId() {
        return secRoleUserId;
    }

    /**
     * 设置主键  对应id
     *
     * @param secRoleUserId 主键  对应id
     */
    public void setSecRoleUserId(String secRoleUserId) {
        this.secRoleUserId = secRoleUserId;
    }

    /**
     * 获取用户ID
     *
     * @return user_id - 用户ID
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 设置用户ID
     *
     * @param userId 用户ID
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * 获取机构ID   对应group_id
     *
     * @return role_id - 机构ID   对应group_id
     */
    public String getRoleId() {
        return roleId;
    }

    /**
     * 设置机构ID   对应group_id
     *
     * @param roleId 机构ID   对应group_id
     */
    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    /**
     * @return description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description
     */
    public void setDescription(String description) {
        this.description = description;
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
     * 获取创建用户ID
     *
     * @return crt_user - 创建用户ID
     */
    public String getCrtUser() {
        return crtUser;
    }

    /**
     * 设置创建用户ID
     *
     * @param crtUser 创建用户ID
     */
    public void setCrtUser(String crtUser) {
        this.crtUser = crtUser;
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
     * @return crt_host
     */
    public String getCrtHost() {
        return crtHost;
    }

    /**
     * @param crtHost
     */
    public void setCrtHost(String crtHost) {
        this.crtHost = crtHost;
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
     * @return upd_user - 更新用户ID
     */
    public String getUpdUser() {
        return updUser;
    }

    /**
     * 设置更新用户ID
     *
     * @param updUser 更新用户ID
     */
    public void setUpdUser(String updUser) {
        this.updUser = updUser;
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

    /**
     * @return upd_host
     */
    public String getUpdHost() {
        return updHost;
    }

    /**
     * @param updHost
     */
    public void setUpdHost(String updHost) {
        this.updHost = updHost;
    }

    /**
     * 获取扩展属性1
     *
     * @return attr1 - 扩展属性1
     */
    public String getAttr1() {
        return attr1;
    }

    /**
     * 设置扩展属性1
     *
     * @param attr1 扩展属性1
     */
    public void setAttr1(String attr1) {
        this.attr1 = attr1;
    }

    /**
     * 获取扩展属性2
     *
     * @return attr2 - 扩展属性2
     */
    public String getAttr2() {
        return attr2;
    }

    /**
     * 设置扩展属性2
     *
     * @param attr2 扩展属性2
     */
    public void setAttr2(String attr2) {
        this.attr2 = attr2;
    }

    /**
     * 获取扩展属性3
     *
     * @return attr3 - 扩展属性3
     */
    public String getAttr3() {
        return attr3;
    }

    /**
     * 设置扩展属性3
     *
     * @param attr3 扩展属性3
     */
    public void setAttr3(String attr3) {
        this.attr3 = attr3;
    }

    /**
     * 获取扩展属性4
     *
     * @return attr4 - 扩展属性4
     */
    public String getAttr4() {
        return attr4;
    }

    /**
     * 设置扩展属性4
     *
     * @param attr4 扩展属性4
     */
    public void setAttr4(String attr4) {
        this.attr4 = attr4;
    }

    /**
     * 获取扩展属性5
     *
     * @return attr5 - 扩展属性5
     */
    public String getAttr5() {
        return attr5;
    }

    /**
     * 设置扩展属性5
     *
     * @param attr5 扩展属性5
     */
    public void setAttr5(String attr5) {
        this.attr5 = attr5;
    }

    /**
     * 获取扩展属性6
     *
     * @return attr6 - 扩展属性6
     */
    public String getAttr6() {
        return attr6;
    }

    /**
     * 设置扩展属性6
     *
     * @param attr6 扩展属性6
     */
    public void setAttr6(String attr6) {
        this.attr6 = attr6;
    }

    /**
     * 获取扩展属性7
     *
     * @return attr7 - 扩展属性7
     */
    public String getAttr7() {
        return attr7;
    }

    /**
     * 设置扩展属性7
     *
     * @param attr7 扩展属性7
     */
    public void setAttr7(String attr7) {
        this.attr7 = attr7;
    }

    /**
     * 获取扩展属性8
     *
     * @return attr8 - 扩展属性8
     */
    public String getAttr8() {
        return attr8;
    }

    /**
     * 设置扩展属性8
     *
     * @param attr8 扩展属性8
     */
    public void setAttr8(String attr8) {
        this.attr8 = attr8;
    }

    /**
     * 获取租户ID，用于支持多个系统管理体系
     *
     * @return tenant_id - 租户ID，用于支持多个系统管理体系
     */
    public String getTenantId() {
        return tenantId;
    }

    /**
     * 设置租户ID，用于支持多个系统管理体系
     *
     * @param tenantId 租户ID，用于支持多个系统管理体系
     */
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId;
    }
}