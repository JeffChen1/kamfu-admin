package kf.plt.admin.auth.module.client.entity;

import java.util.Date;
import javax.persistence.*;

@Table(name = "kf_sec_resource_authority")
public class ResourceAuthority {
    /**
     * 主键   对应id
     */
    @Id
    @Column(name = "resource_authority_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "myql")
    private String resourceAuthorityId;

    /**
     * 角色ID
     */
    @Column(name = "authority_id")
    private String authorityId;

    /**
     * 角色类型
     */
    @Column(name = "authority_type")
    private String authorityType;

    /**
     * 资源ID
     */
    @Column(name = "resource_id")
    private String resourceId;

    /**
     * 资源类型
     */
    @Column(name = "resource_type")
    private String resourceType;

    /**
     * 上级节点
     */
    @Column(name = "parent_id")
    private String parentId;

    /**
     * 路径
     */
    private String path;

    /**
     * 描述
     */
    private String description;

    /**
     * 创建时间
     */
    @Column(name = "crt_time")
    private Date crtTime;

    /**
     * 创建用户id
     */
    @Column(name = "crt_user")
    private String crtUser;

    /**
     * 创建用户名
     */
    @Column(name = "crt_name")
    private String crtName;

    /**
     * 创建用户ip
     */
    @Column(name = "crt_host")
    private String crtHost;

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
     * 租户Id
     */
    @Column(name = "tenant_id")
    private String tenantId;

    /**
     * 类型
     */
    private String type;

    /**
     * 获取主键   对应id
     *
     * @return resource_authority_id - 主键   对应id
     */
    public String getResourceAuthorityId() {
        return resourceAuthorityId;
    }

    /**
     * 设置主键   对应id
     *
     * @param resourceAuthorityId 主键   对应id
     */
    public void setResourceAuthorityId(String resourceAuthorityId) {
        this.resourceAuthorityId = resourceAuthorityId;
    }

    /**
     * 获取角色ID
     *
     * @return authority_id - 角色ID
     */
    public String getAuthorityId() {
        return authorityId;
    }

    /**
     * 设置角色ID
     *
     * @param authorityId 角色ID
     */
    public void setAuthorityId(String authorityId) {
        this.authorityId = authorityId;
    }

    /**
     * 获取角色类型
     *
     * @return authority_type - 角色类型
     */
    public String getAuthorityType() {
        return authorityType;
    }

    /**
     * 设置角色类型
     *
     * @param authorityType 角色类型
     */
    public void setAuthorityType(String authorityType) {
        this.authorityType = authorityType;
    }

    /**
     * 获取资源ID
     *
     * @return resource_id - 资源ID
     */
    public String getResourceId() {
        return resourceId;
    }

    /**
     * 设置资源ID
     *
     * @param resourceId 资源ID
     */
    public void setResourceId(String resourceId) {
        this.resourceId = resourceId;
    }

    /**
     * 获取资源类型
     *
     * @return resource_type - 资源类型
     */
    public String getResourceType() {
        return resourceType;
    }

    /**
     * 设置资源类型
     *
     * @param resourceType 资源类型
     */
    public void setResourceType(String resourceType) {
        this.resourceType = resourceType;
    }

    /**
     * 获取上级节点
     *
     * @return parent_id - 上级节点
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * 设置上级节点
     *
     * @param parentId 上级节点
     */
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    /**
     * 获取路径
     *
     * @return path - 路径
     */
    public String getPath() {
        return path;
    }

    /**
     * 设置路径
     *
     * @param path 路径
     */
    public void setPath(String path) {
        this.path = path;
    }

    /**
     * 获取描述
     *
     * @return description - 描述
     */
    public String getDescription() {
        return description;
    }

    /**
     * 设置描述
     *
     * @param description 描述
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
     * 获取创建用户id
     *
     * @return crt_user - 创建用户id
     */
    public String getCrtUser() {
        return crtUser;
    }

    /**
     * 设置创建用户id
     *
     * @param crtUser 创建用户id
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
     * 获取创建用户ip
     *
     * @return crt_host - 创建用户ip
     */
    public String getCrtHost() {
        return crtHost;
    }

    /**
     * 设置创建用户ip
     *
     * @param crtHost 创建用户ip
     */
    public void setCrtHost(String crtHost) {
        this.crtHost = crtHost;
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
     * 获取租户Id
     *
     * @return tenant_id - 租户Id
     */
    public String getTenantId() {
        return tenantId;
    }

    /**
     * 设置租户Id
     *
     * @param tenantId 租户Id
     */
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId;
    }

    /**
     * 获取类型
     *
     * @return type - 类型
     */
    public String getType() {
        return type;
    }

    /**
     * 设置类型
     *
     * @param type 类型
     */
    public void setType(String type) {
        this.type = type;
    }
}