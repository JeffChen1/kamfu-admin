package kf.plt.admin.sysmgnt.rest;

import kf.plt.admin.auth.client.annotation.CheckClientToken;
import kf.plt.admin.auth.client.annotation.CheckUserToken;
import kf.plt.admin.common.msg.ListResultResponse;
import kf.plt.admin.common.rest.BaseController;
import kf.plt.admin.sysmgnt.biz.GroupLevelBiz;
import kf.plt.admin.sysmgnt.entity.GroupLevel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@CheckUserToken
@CheckClientToken
@RequestMapping("groupLevel")
public class GroupLevelController extends BaseController<GroupLevelBiz,GroupLevel> {

    @RequestMapping(value = "/groupLevelByGroup",method = RequestMethod.GET)
    @ResponseBody
    public ListResultResponse<GroupLevel> getGroupLevelByAuthority(){

        return new ListResultResponse<GroupLevel>().data(baseBiz.queryByGroupId());
    }

}
