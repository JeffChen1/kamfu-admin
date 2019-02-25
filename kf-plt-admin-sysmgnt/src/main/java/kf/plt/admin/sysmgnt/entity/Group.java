package kf.plt.admin.sysmgnt.entity;

import kf.ats.plt.base.entity.BaseObject;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;
import java.util.List;


/**
 * 
 * 
 * @author Mr.AG
 * @email 463540703@qq.com
 * @version 2018-02-04 19:06:43
 */
@Table(name = "kf_sec_group")
public class Group extends BaseObject {
	private static final long serialVersionUID = 1L;
	
	    //主键
    @Id
	@Column(name = "group_id")
    private String id;
	
	    //组织名称
    @Column(name = "name")
    private String name;
	
	    //编码
    @Column(name = "code")
    private String code;
	
	    //路劲
    @Column(name = "path")
    private String path;
	
	    //部门类型
    @Column(name = "type")
    private String type;

    //机构级次
	@Column(name = "level_id")
	private String levelId;

	//创建人
	@Column(name = "crt_user_name")
	private String crtUserName;

	//创建人ID
	@Column(name = "crt_user_id")
	private String crtUserId;

	//创建时间
	@Column(name = "crt_time")
	private Date crtTime;

	//最后更新人
	@Column(name = "upd_user_name")
	private String updUserName;

	//最后更新人ID
	@Column(name = "upd_user_id")
	private String updUserId;

	//最后更新时间
	@Column(name = "upd_time")
	private Date updTime;

	//
	@Column(name = "parent_id")
	private String parentId;

	//
	@Column(name = "attr1")
	private String attr1;

	//
	@Column(name = "attr2")
	private String attr2;

	//
	@Column(name = "attr3")
	private String attr3;

	//
	@Column(name = "attr4")
    private String attr4;
	private String attr5;
	private String attr6;
	private String attr7;
	private String attr8;
	private String attr9;
	private String attr10;
	private String attr11;
	private String attr12;
	private String attr13;
	private String attr14;
	private String attr15;
	private String attr16;
	private String attr17;



	@Column(name = "tenant_id")
	private String tenantId;

	@Column(name = "extsys_group_id")
	private String extgroupId;

	@Column(name = "shortname")
	private String shortName;

	@Column(name = "enabled")
	private String enabled;

	@Column(name = "his_id")
	private String hisId;

	@Column(name = "description")
	private String description;

	@Transient
	List<Group> childrenList;

	public List<Group> getChildrenList() {
		return childrenList;
	}

	public void setChildrenList(List<Group> childrenList) {
		this.childrenList = childrenList;
	}

	public void add(Group node){
		childrenList.add(node);
	}

	public String getTenantId() {
		return tenantId;
	}

	public void setTenantId(String tenantId) {
		this.tenantId = tenantId;
	}

	/**
	 * 设置：主键
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * 获取：主键
	 */
	public String getId() {
		return id;
	}
	/**
	 * 设置：组织名称
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：组织名称
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：上级节点
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	/**
	 * 获取：上级节点
	 */
	public String getParentId() {
		return parentId;
	}
	/**
	 * 设置：编码
	 */
	public void setCode(String code) {
		this.code = code;
	}
	/**
	 * 获取：编码
	 */
	public String getCode() {
		return code;
	}
	/**
	 * 设置：路劲
	 */
	public void setPath(String path) {
		this.path = path;
	}
	/**
	 * 获取：路劲
	 */
	public String getPath() {
		return path;
	}
	/**
	 * 设置：部门类型
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * 获取：部门类型
	 */
	public String getType() {
		return type;
	}

	public String getCrtUserName() {
		return crtUserName;
	}

	public void setCrtUserName(String crtUserName) {
		this.crtUserName = crtUserName;
	}

	public String getCrtUserId() {
		return crtUserId;
	}

	public void setCrtUserId(String crtUserId) {
		this.crtUserId = crtUserId;
	}

	public Date getCrtTime() {
		return crtTime;
	}

	public void setCrtTime(Date crtTime) {
		this.crtTime = crtTime;
	}

	public String getUpdUserName() {
		return updUserName;
	}

	public void setUpdUserName(String updUserName) {
		this.updUserName = updUserName;
	}

	public String getUpdUserId() {
		return updUserId;
	}

	public void setUpdUserId(String updUserId) {
		this.updUserId = updUserId;
	}

	public Date getUpdTime() {
		return updTime;
	}

	public void setUpdTime(Date updTime) {
		this.updTime = updTime;
	}

	public String getAttr1() {
		return attr1;
	}

	public void setAttr1(String attr1) {
		this.attr1 = attr1;
	}

	public String getAttr2() {
		return attr2;
	}

	public void setAttr2(String attr2) {
		this.attr2 = attr2;
	}

	public String getAttr3() {
		return attr3;
	}

	public void setAttr3(String attr3) {
		this.attr3 = attr3;
	}

	public String getAttr4() {
		return attr4;
	}

	public void setAttr4(String attr4) {
		this.attr4 = attr4;
	}

	public String getExtgroupId() {
		return extgroupId;
	}

	public void setExtgroupId(String extgroupId) {
		this.extgroupId = extgroupId;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public String getHisId() {
		return hisId;
	}

	public void setHisId(String hisId) {
		this.hisId = hisId;
	}

	public String getLevelId() {
		return levelId;
	}

	public void setLevelId(String levelId) {
		this.levelId = levelId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

    public String getAttr5() {
        return attr5;
    }

    public void setAttr5(String attr5) {
        this.attr5 = attr5;
    }

    public String getAttr6() {
        return attr6;
    }

    public void setAttr6(String attr6) {
        this.attr6 = attr6;
    }

    public String getAttr7() {
        return attr7;
    }

    public void setAttr7(String attr7) {
        this.attr7 = attr7;
    }

    public String getAttr8() {
        return attr8;
    }

    public void setAttr8(String attr8) {
        this.attr8 = attr8;
    }

    public String getAttr9() {
        return attr9;
    }

    public void setAttr9(String attr9) {
        this.attr9 = attr9;
    }

    public String getAttr10() {
        return attr10;
    }

    public void setAttr10(String attr10) {
        this.attr10 = attr10;
    }

    public String getAttr11() {
        return attr11;
    }

    public void setAttr11(String attr11) {
        this.attr11 = attr11;
    }

    public String getAttr12() {
        return attr12;
    }

    public void setAttr12(String attr12) {
        this.attr12 = attr12;
    }

    public String getAttr13() {
        return attr13;
    }

    public void setAttr13(String attr13) {
        this.attr13 = attr13;
    }

    public String getAttr14() {
        return attr14;
    }

    public void setAttr14(String attr14) {
        this.attr14 = attr14;
    }

    public String getAttr15() {
        return attr15;
    }

    public void setAttr15(String attr15) {
        this.attr15 = attr15;
    }

    public String getAttr16() {
        return attr16;
    }

    public void setAttr16(String attr16) {
        this.attr16 = attr16;
    }

    public String getAttr17() {
        return attr17;
    }

    public void setAttr17(String attr17) {
        this.attr17 = attr17;
    }
}
