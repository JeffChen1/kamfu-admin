package kf.plt.admin.sysmgnt.biz;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import kf.plt.admin.common.biz.BusinessBiz;
import kf.plt.admin.common.exception.base.BusinessException;
import kf.plt.admin.common.msg.TableResultResponse;
import kf.plt.admin.common.util.BooleanUtil;
import kf.plt.admin.common.util.Query;
import kf.plt.admin.common.util.TreeUtil;
import kf.plt.admin.common.util.UUIDUtils;
import kf.plt.admin.jwt.core.context.BaseContextHandler;
import kf.plt.admin.merge.annonation.MergeResult;
import kf.plt.admin.sysmgnt.constant.AdminCommonConstant;
import kf.plt.admin.sysmgnt.entity.Group;
import kf.plt.admin.sysmgnt.entity.PageBean;
import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.sysmgnt.mapper.GroupMapper;
import kf.plt.admin.sysmgnt.mapper.UserMapper;
import kf.plt.admin.sysmgnt.service.TableResultParser;
import kf.plt.admin.sysmgnt.vo.GroupTree;
import kf.plt.admin.sysmgnt.vo.MenuTree;
import org.apache.commons.lang3.CharSequenceUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.*;
import java.util.stream.Collectors;

/**
 *
 * 组织机构业务层
 * @author Mr.AG
 * @email 463540703@qq.com
 * @version 2018-02-04 19:06:43
 */
@Service
public class GroupBiz extends BusinessBiz<GroupMapper,Group> {
    @Autowired
    private UserMapper userMapper;
    @MergeResult(resultParser = TableResultParser.class)
    public TableResultResponse<User> getGroupUsers(String groupId, String userName) {
        List<User> users = this.mapper.selectGroupUsers(groupId,userName);
        return new TableResultResponse<User>(users.size(),users);
    }

    public void addGroupUser(String groupId, String userIds) {
        if (!StringUtils.isEmpty(userIds)) {
            String[] uIds = userIds.split(",");
            for (String uId : uIds) {
                this.mapper.insertGroupUser(UUIDUtils.generateUuid(),groupId,uId, BaseContextHandler.getTenantID());
            }
        }
    }


    public String a(String aa){
        return null;
    }
    /** 
     * @param: param
     * @return: 
     * @auther: DELL
     * @date: 2018/5/25 15:58
     */
    public String functionName(String param) {
        return null;
    }
    

    /**
     * 根据ID批量获取部门值
     * @param groupIDs
     * @return
     */
    public Map<String,String> getGroups(String groupIDs){
        if(StringUtils.isBlank(groupIDs)) {
            return new HashMap<>();
        }
        groupIDs = "'"+groupIDs.replaceAll(",","','")+"'";
        List<Group> groups = mapper.selectByIds(groupIDs);
        return groups.stream().collect(Collectors.toMap(Group::getId, group -> JSONObject.toJSONString(group)));
    }

    public void delGroupUser(String groupId, String userId) {
        User user = userMapper.selectByPrimaryKey(userId);
        if(user.getGroupId().equals(groupId)){
            throw new BusinessException("无法移除用户的默认关联部门,若需移除,请前往用户模块更新用户部门!");
        }
        this.mapper.deleteGroupUser(groupId,userId);
    }

    @Override
    public void insertSelective(Group entity) {
        entity.setId(UUIDUtils.generateUuid());
        super.insertSelective(entity);
    }


    /**
     * 把属性结构转换为list
     * @param root 根节点信息
     * @param treeNodes 所有节点信息当为空时候,自动查询所有
     * @return
     */
    public List<Group> getNode(Group root, List<Group> treeNodes) {
        if(treeNodes == null) {
            treeNodes = mapper.selectAll();
        }
        Group groupTree = buildChildren(root,treeNodes);
        return buildList(groupTree);
    }


    /**
     * 根据id获取所有子节点
     * @param treeNode
     * @param treeNodes
     * @return
     */
    public static Group buildChildren(Group treeNode, List<Group> treeNodes) {
        for (Group it : treeNodes) {
            if (treeNode.getId().equals(it.getParentId())) {
                if (treeNode.getChildrenList() == null) {
                    treeNode.setChildrenList(new ArrayList<Group>());
                }
                treeNode.add(buildChildren(it, treeNodes));
            }
        }
        return treeNode;
    }

    /**
     * 两层for循环建树
     * @param treeNode
     * @param treeNodes
     * @return
     */
    public static Group buildChildrenByFor(Group treeNode, List<Group> treeNodes) {
        Group group = null;
        for (Group it : treeNodes) {
            if (it.getId().equals(treeNode.getId())) {
                group = it;
            }
            for (Group it2 : treeNodes) {
                if (it2.getParentId().equals(it.getId())) {
                    if (it.getChildrenList() == null) {
                        it.setChildrenList(new ArrayList<>());
                    }
                    it.add(it2);
                }
            }
        }
        return group;
    }

    /**
     * 将tree结构转换为list
     * @param group
     * @return
     */
    public List<Group> buildList(Group group){
        List<Group> groupList = new ArrayList<Group>();
        groupList.add(group);
        if(group.getChildrenList() == null){
            return groupList;
        }
        for (Group item : group.getChildrenList()){
            groupList.addAll(findChildren(item));

        }
        for(Group gro : groupList){
            if(gro.getChildrenList() != null){
                gro.setChildrenList(null);
            }
        }
        return groupList;
    }

    /**
     * 递归找出tree所有节点(该节点及其所有子节点)
     * @param group
     * @return
     */
    public List<Group> findChildren(Group group){
        List<Group> groupLists = new ArrayList<Group>();
        groupLists.add(group);
        List<Group> list = group.getChildrenList();
        if(list == null) {
            return groupLists;
        }
        for(Group item : list){
            if(item.getChildrenList() != null){
                groupLists.addAll(findChildren(item));
            }else {
                groupLists.add(item);
            }
        }
        return groupLists;
    }

    /**
     * 通过组织机构id查询该节点下所有符合条件的组织机构信息
     * @param query
     * @return
     */
    public TableResultResponse<Group> selectGroupByCondition(Query query){
        Group entity = new Group();
        try {
            for (String key : query.keySet()) {
                Object vaule = query.get(key);
                setValue(entity, key, vaule);
            }
        } catch (Exception e) {
            e.getMessage();
        }
        //根据条件查询group
        List<Group> group = this.queryTreeById(entity.getId(), entity.getName(), entity.getCode(), entity.getType(), entity.getLevelId(), entity.getEnabled());
        Page<Object> result = PageHelper.startPage(query.getPage(), query.getLimit());
        return new TableResultResponse<Group>(result.getTotal(), group);

    }

//    public TableResultResponse<Group> selectGroupByCondition(Query query){
//        Group entity = new Group();
//        try {
//            for (String key : query.keySet()) {
//                Object vaule = query.get(key);
//                setValue(entity, key, vaule);
//            }
//        } catch (Exception e) {
//            e.getMessage();
//        }
//        if(entity.getId() == null || entity.getId() == ""){
//            return this.selectByQuery(query);
//        }
//        //根据条件查询group
//        List<Group> group = this.queryTreeById(entity.getId(), entity.getName(), entity.getCode(), entity.getType(), entity.getLevelId(), entity.getEnabled());
//        List<Group> groups = new ArrayList<Group>();
//        for (Group item : group){
//            //将group树形转换为list
//            groups.addAll(this.buildList(item));
//        }
//        Iterator<Group> iterator = groups.iterator();
//        while (iterator.hasNext()) {
//            Group gro = iterator.next();
//            if (gro.getEnabled() == BooleanUtil.BOOLEAN_FALSE
//                    || !isContains(gro.getEnabled(), entity.getEnabled())
//                    || !isContains(gro.getName(), entity.getName())
//                    || !isContains(gro.getCode(), entity.getCode())
//                    || !isContains(gro.getType(), entity.getType())
//                    || !isContains(gro.getLevelId(), entity.getLevelId())) {
//                iterator.remove();
//            }
//        }
//        PageBean page = new PageBean();
//        //设置开始页数
//        page.setCurrentPage(query.getPage());
//        //设置每页显示条数
//        page.setPageSize(query.getLimit());
//        return new TableResultResponse<Group>(groups.size(), this.pageQuery(page, groups));
//
//    }
    private boolean isContains(CharSequence seq, CharSequence searchSeq) {
        if (searchSeq == null) {
            return true;
        }
        if (seq != null && searchSeq != null) {
            return seq.toString().indexOf(searchSeq.toString(), 0) >= 0;
        } else {
            return false;
        }
    }

    /**
     * 通过条件进行查询操作
     */
    public List<Group> queryTreeById(String groupId,String name,String code,String type,String levelId,String enabled) {
        return mapper.queryTreeList(groupId,name,code,type,levelId,enabled);
    }


    /**
     * 根据实体类型、属性名称调用其set方法赋值
     * @param group project类
     * @param name 属性名称
     * @param value 需设置的值
     * @throws Exception
     */
    public void setValue(Group group,String name,Object value) throws Exception {
        Method[] m = group.getClass().getMethods();
        for(int i=0;i<m.length;i++){
            if(("set"+name).toLowerCase().equals(m[i].getName().toLowerCase())){
                m[i].invoke(group,value);
                break;
            }
        }
    }

    /**
     * 分页
     * @param page
     * @param group
     * @return
     */
    public static List<Group> pageQuery(PageBean page, List<Group> group) {

        if (page.getCurrentPage() == null) {
            page.setCurrentPage(1);
        }

        //每页的开始数
        page.setStar((page.getCurrentPage() - 1) * page.getPageSize());
        //list的大小
        int count = group.size();
        //设置总页数
        page.setTotalPage(count % 10 == 0 ? count / 10 : count / 10 + 1);
        //对list进行截取
        List<Group> groups = group.subList(page.getStar(), count - page.getStar() > page.getPageSize() ? page.getStar() + page.getPageSize() : count);
        return groups;

    }

    //删除组织机构前判断是否有关联信息
    @Override
    public int deleteById(Object id) {

        String groupId = (String) id;
        List<Group> list = this.mapper.queryIsLastGroup(groupId);
        if(list != null && list.size() != 0){
            return 1;
        } else {
            this.mapper.deleGroup(groupId);
            return 0;
        }
    }

    /**
     *@Description:
     *
     *根据权限用户生成组织机构数
     *
     *@Author: wangs
     *
     *@Date 2018/11/5
     */
    public List<GroupTree> getTreeById(){
//        String groupId = userMapper.selectByPrimaryKey(BaseContextHandler.getUserID()).getGroupId();
//        Group group = mapper.queryGroupById(groupId);
//        List<Group> groups = mapper.selectAll();
//        getGroupTreeByGroupIdList(groups);
//        List<Group> groupList = new ArrayList<>();
//        Group group1 = buildChildrenByFor(group,groups);
//        groupList = buildList(group1);
//        List<GroupTree> trees = new ArrayList<>();
//        GroupTree groupTree = null;
//        groupList.forEach(dictType -> {
//            if(dictType.getEnabled() != null){
//                if(dictType.getEnabled().equals("0")){
//                return;}}
//            trees.add(new GroupTree(dictType.getId(), dictType.getParentId(), dictType.getName(),dictType.getCode()));
//        });
//        return TreeUtil.bulid(trees, group.getParentId(), null);
        List<Group> groups = mapper.selectAll();
        List<String> groupIdList = new ArrayList<String>();
        if(groups.size() > 0){
            for(Group item : groups) {
                groupIdList.add(item.getId());
            }
            return getGroupTreeByGroupIdList(groupIdList);

        }else{
            return null;
        }
    }


    /**
     * 根据组织机构 ID 把属下组织机构查询出来
     * @param groudId 组织机构ID
     * @return 返回一个组织机构列表
     */
    public List<Group> getAllGroupByGroupId(String groudId) {
        // 通过组织机构ID 查询组织机构信息
        Group group = mapper.selectByPrimaryKey(groudId);
        // 通过 code 查询节点以下所有组织机构ID
        List<Group> groupList = mapper.selectByCode(group.getCode());
        return groupList;
    }

    /**
     * 根据组织机构ID获取组织机构树
     * @param groupIdList 组织机构id集合
     * @return 组织机构对象
     */
    public List<GroupTree> getGroupTreeByGroupIdList(List<String> groupIdList){
        //查询出所有组织机构信息列表
        List<Group> groupList = mapper.selectAllGroup();
        //将组织机构列表转换为map
        Map<String,Group> groupMap = new HashMap<>();
        for (Group group : groupList){
            groupMap.put(group.getId(),group);
        }
        //初始化一个缓存的Set用来去重
        Map<String,Group> cacheMap = new HashMap<>();
        for(String groupId : groupIdList){
            recursiveSetGroupChildrenList(cacheMap,groupMap,groupId);
        }

        List<Group> groupList1 = new ArrayList(cacheMap.values());
        List<GroupTree> trees = new ArrayList<GroupTree>();
        GroupTree node = null;
        //将Group转换为GroupTree对象
        for (Group group : groupList1) {
            node = new GroupTree();
            BeanUtils.copyProperties(group, node);
            node.setLabel(group.getName());
            trees.add(node);
        }
        //返回一个组织机构树
        return TreeUtil.bulid(trees, AdminCommonConstant.ROOT, null);
    }

//    public void callRecursion(Map<String,Group> groupMap , List<String> groupIdList){
//        //初始化一个缓存的map用来去重
//        Set<String> cacheSet = new HashSet<>();
//        for(String groupId : groupIdList){
//            recursiveSetGroupChildrenList(cacheSet,groupMap,groupId);
//        }
//    }


    /**
     * 通过任意组织机构id递归建树
     * @param cacheMap 用来缓存groupId的Set
     * @param groupMap 组织机构信息的map
     * @param groupId 组织机构id
     */
    public void recursiveSetGroupChildrenList(Map<String,Group> cacheMap,Map<String,Group> groupMap,String groupId){
//        if(!cacheSet.contains(groupId)){
////            //将set过的节点放进set中避免重复添加
////            cacheSet.add(groupId);
////            //通过groupId获取Group
////            Group group = groupMap.get(groupId);
////            String groupParentId = group.getParentId();
////            //判断该节点的父节点存不存在
////            if(groupMap.get(groupParentId) != null){
////                if (groupMap.get(groupParentId).getChildrenList() == null) {
////                    groupMap.get(groupParentId).setChildrenList(new ArrayList<>());
////                }
////                groupMap.get(groupParentId).getChildrenList().add(group);
////                //递归调用
////                recursiveSetGroupChildrenList(cacheSet,groupMap,groupParentId);
////            }
////        }
        //判断是否将Group对象放入cacheMap中
        if(cacheMap.get(groupId) == null){
            Group group = groupMap.get(groupId);
            cacheMap.put(groupId,group);
            String groupParentId = group.getParentId();
            if(groupMap.get(groupParentId) != null){
                //循环将Group对象放入cacheMap中
                recursiveSetGroupChildrenList(cacheMap,groupMap,groupParentId);
            }
        }
    }
}