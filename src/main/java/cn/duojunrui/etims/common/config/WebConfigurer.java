package cn.duojunrui.etims.common.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * TODO
 *
 * @className: WebConfigurer
 * @author: Duojunrui
 * @date: 2019-04-16 16:34
 */

@Component
class WebConfigurer extends WebMvcConfigurerAdapter {
    @Autowired
    EtimsConfig etimsConfig;
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/files/**").addResourceLocations("file:///"+etimsConfig.getUploadPath());
    }

}