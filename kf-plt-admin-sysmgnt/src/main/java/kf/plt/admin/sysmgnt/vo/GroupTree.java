package kf.plt.admin.sysmgnt.vo;

import kf.plt.admin.common.vo.TreeNodeVO;

/**
 * @author ace
 * @create 2018/2/4.
 */
public class GroupTree extends TreeNodeVO<GroupTree> {
    String label;
    String code;

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public GroupTree(){

    }
    public GroupTree(Object id, Object parentId, String label, String code) {
        this.label = label;
        this.code = code;
        this.setId(id);
        this.setParentId(parentId);
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
