package kf.plt.admin.sysmgnt.rest;

import kf.plt.admin.common.msg.ListResultResponse;
import kf.plt.admin.common.util.Query;
import kf.plt.admin.sysmgnt.biz.GroupBiz;
import kf.plt.admin.sysmgnt.entity.Group;
import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.sysmgnt.vo.GroupTree;
import kf.plt.admin.auth.client.annotation.CheckClientToken;
import kf.plt.admin.auth.client.annotation.CheckUserToken;
import kf.plt.admin.common.msg.ObjectRestResponse;
import kf.plt.admin.common.msg.TableResultResponse;
import kf.plt.admin.common.rest.BaseController;
import kf.plt.admin.common.util.TreeUtil;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("group")
@CheckClientToken
@CheckUserToken
public class GroupController extends BaseController<GroupBiz,Group> {
    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    public List<GroupTree> getTree() {
//        List<Group> groups = this.baseBiz.selectListAll();
//        List<GroupTree> trees = new ArrayList<>();
//        groups.forEach(dictType -> {
//            if(dictType.getEnabled() != null){
//                if(dictType.getEnabled().equals("0")){
//                return;}}
//            trees.add(new GroupTree(dictType.getId(), dictType.getParentId(), dictType.getName(),dictType.getCode()));
//        });
//        return TreeUtil.bulid(trees, "-1", null);
        return baseBiz.getTreeById();
    }

    @RequestMapping(value = "user",method = RequestMethod.GET)
    public TableResultResponse<User> getGroupUsers(String groupId, String userName){
        return this.baseBiz.getGroupUsers(groupId,userName);
    }

    @RequestMapping(value = "user",method = RequestMethod.POST)
    public ObjectRestResponse<Boolean> addGroupUser(String groupId, String userIds){
        this.baseBiz.addGroupUser(groupId,userIds);
        return new ObjectRestResponse<>().data(true);
    }

    @RequestMapping(value = "user",method = RequestMethod.DELETE)
    public ObjectRestResponse<Boolean> delGroupUser(String groupId,String userId){
        this.baseBiz.delGroupUser(groupId,userId);
        return new ObjectRestResponse<>().data(true);
    }


    @RequestMapping(value = "/groupNode",method = RequestMethod.GET)
    public TableResultResponse<Group> getGroupTreeById(@RequestParam Map<String, Object> params){
        Query query = new Query(params);
        return baseBiz.selectGroupByCondition(query);
    }


}