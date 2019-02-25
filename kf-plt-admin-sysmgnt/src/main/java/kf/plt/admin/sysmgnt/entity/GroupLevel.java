package kf.plt.admin.sysmgnt.entity;

import kf.ats.plt.base.entity.BaseObject;
import kf.plt.admin.common.audit.AceAudit;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;


@Table(name = "kf_sec_group_level")
public class GroupLevel extends BaseObject{

    //主键
    //级次ID
    @Id
    @Column(name = "level_id")
    private String levelId;

    //级次名称
    @Column(name = "name")
    private String name;

    //排序码
    @Column(name = "order_code")
    private String orderCode;

    public String getLevelId() {
        return levelId;
    }

    public void setLevelId(String levelId) {
        this.levelId = levelId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }
}
