package kf.plt.admin.auth.datacontrol.feign;

import kf.plt.admin.auth.datacontrol.entity.DataResource;
import kf.plt.admin.common.msg.ListResultResponse;
import kf.plt.admin.common.msg.TableResultResponse;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 调用数据认证服务
 * @author 麦锦超
 */
@FeignClient(value = "${dataControl.serviceId}")
public interface AuthDataFeign {


    /**
     *  根据用户 ID 调用 AuthServer 服务,获取资源ID
     * @param userId 用户ID
     * @return  ListResultResponse<DataResource>
     */
    @RequestMapping(value = "/dataResource/getDataResById", method = RequestMethod.GET)
    public ListResultResponse<DataResource> getDataResoureById(@RequestParam("userId") String userId,@RequestParam("code") String code,@RequestParam("mapMethod") String mapMethod);

}
