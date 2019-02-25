package kf.plt.admin.sysmgnt.rest;

import kf.plt.admin.sysmgnt.biz.PositionBiz;
import kf.plt.admin.sysmgnt.entity.Position;
import kf.plt.admin.sysmgnt.entity.User;
import kf.plt.admin.sysmgnt.vo.GroupTree;
import kf.plt.admin.sysmgnt.vo.RoleTree;
import kf.plt.admin.auth.client.annotation.CheckClientToken;
import kf.plt.admin.auth.client.annotation.CheckUserToken;
import kf.plt.admin.common.msg.ObjectRestResponse;
import kf.plt.admin.common.rest.BaseController;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("position")
@CheckUserToken
@CheckClientToken
public class PositionController extends BaseController<PositionBiz, Position> {

    @RequestMapping(value = "/{id}/user", method = RequestMethod.PUT)
    @ResponseBody
    public ObjectRestResponse modifyUsers(@PathVariable String id, String users) {
        baseBiz.modifyPositionUsers(id, users);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/user", method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<List<User>> getUsers(@PathVariable("id") String positionId) {
        return new ObjectRestResponse<List<User>>().data(baseBiz.getPositionUsers(positionId));
    }

    @RequestMapping(value = "/{id}/role", method = RequestMethod.PUT)
    @ResponseBody
    public ObjectRestResponse modifyRoles(@PathVariable String id, String roles) {
        baseBiz.modifyPositionRoles(id, roles);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/role", method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<List<RoleTree>> getRoles(@PathVariable("id") String positionId) {
        return new ObjectRestResponse<List<RoleTree>>().data(baseBiz.getPositionRoles(positionId));
    }

    @RequestMapping(value = "/{id}/group", method = RequestMethod.PUT)
    @ResponseBody
    public ObjectRestResponse modifyGroups(@PathVariable String id, String groups) {
        baseBiz.modifyPositionGroups(id, groups);
        return new ObjectRestResponse();
    }

    @RequestMapping(value = "/{id}/group", method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<List<GroupTree>> getGroups(@PathVariable("id") String positionId) {
        return new ObjectRestResponse<List<GroupTree>>().data(baseBiz.getPositionGroups(positionId));
    }
}