package kf.plt.admin.auth.datacontrol.service;

import kf.plt.admin.auth.datacontrol.entity.DataResource;
import kf.plt.admin.auth.datacontrol.feign.AuthDataFeign;
import kf.plt.admin.common.msg.ListResultResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 调用认证的服务封装,因为 Mybatis 拦截器自动注入有问题,
 * 唯有建这个类做中间封装做自动注入
 * @author maijinchao
 * @Ccreate 2018-12-13-3:30 PM
 */
@Component
public class AuthDataService {

    @Autowired
    private AuthDataFeign authDataFeign;

    public ListResultResponse<DataResource> getDataResoureById(String userId,String code,String mapMethod) {
        return authDataFeign.getDataResoureById(userId,code,mapMethod);
    }
}
