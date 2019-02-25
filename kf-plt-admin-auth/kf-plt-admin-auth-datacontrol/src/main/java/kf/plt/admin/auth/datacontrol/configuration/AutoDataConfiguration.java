package kf.plt.admin.auth.datacontrol.configuration;

import kf.plt.admin.auth.datacontrol.config.DataControlConfig;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * 数据权限自动配置类
 * @author maijinchao
 * @Ccreate 2018-12-09-8:01 PM
 */
@Configuration
@ComponentScan({"kf.plt.admin.auth.datacontrol"})
public class AutoDataConfiguration {

    @Bean
    DataControlConfig getDataControlConfig(){
        return new DataControlConfig();
    }
    
}
