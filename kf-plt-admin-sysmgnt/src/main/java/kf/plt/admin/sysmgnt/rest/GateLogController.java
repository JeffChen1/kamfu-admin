package kf.plt.admin.sysmgnt.rest;

import kf.plt.admin.auth.client.annotation.CheckClientToken;
import kf.plt.admin.auth.client.annotation.CheckUserToken;
import kf.plt.admin.common.rest.BaseController;
import kf.plt.admin.sysmgnt.biz.GateLogBiz;
import kf.plt.admin.sysmgnt.entity.GateLog;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author maijinchao
 * @Ccreate 2018-11-20-9:05 AM
 */
@Controller
@CheckUserToken
@CheckClientToken
@RequestMapping("gateLog")
public class GateLogController extends BaseController<GateLogBiz,GateLog> {
}
