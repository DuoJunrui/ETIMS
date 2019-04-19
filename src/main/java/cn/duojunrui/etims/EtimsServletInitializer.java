package cn.duojunrui.etims;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * web容器中进行部署 war部署
 *
 * @className: EtimsServletInitializer
 * @author: Duojunrui
 * @date: 2019-04-19 21:55
 */

public class EtimsServletInitializer extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(EtimsApplication.class);
    }
}
