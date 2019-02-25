package kf.plt.admin.auth.datacontrol.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * 数据权限配置
 * @author maijinchao
 * @Ccreate 2018-12-07-3:46 PM
 */
@Component
public class DataControlConfig {
    /**
     * 不需要做数据认证的 URI 的白名单
     */
    @Value("${dataControl.ignoreUri}")
    private String ignoreUri;

    /**
     * 需要特殊处理的 select 语句,就是处理基础select 没有 where 条件的语句
     */
    @Value("${dataControl.selectMethod}")
    private String selectMethod;

    public String getIgnoreUri() {
        return ignoreUri;
    }

    public void setIgnoreUri(String ignoreUri) {
        this.ignoreUri = ignoreUri;
    }

    public String getSelectMethod() {
        return selectMethod;
    }

    public void setSelectMethod(String selectMethod) {
        this.selectMethod = selectMethod;
    }
}
