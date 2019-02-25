package kf.plt.admin.auth.module.client.controller;

import kf.plt.admin.auth.module.client.biz.DataControlBiz;
import kf.plt.admin.auth.module.client.entity.DataControl;
import kf.plt.admin.common.msg.ListResultResponse;
import kf.plt.admin.common.rest.BaseController;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 数据资源表 控制器
 * @author 麦锦超
 * @Ccreate 2018-12-11-7:33 PM
 */
@Controller
@RequestMapping("dataResource")
public class DataResourceController extends BaseController<DataControlBiz,DataControl> {


    @RequestMapping(value = "/getDataResById",method = RequestMethod.GET)
    @ResponseBody
    public ListResultResponse<DataControl> getDataResByUserId(@RequestParam String userId,@RequestParam String code,@RequestParam String mapMethod) {
        return baseBiz.getDataResByUserId(userId,code,mapMethod);
    }
}
