package cn.duojunrui.etims.common.config;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Configuration;

/**
 * TODO
 *
 * @className: SecuityConfig
 * @author: Duojunrui
 * @date: 2019-04-16 16:33
 */
@EnableAutoConfiguration(exclude = {
        org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class
})
@Configuration
public class SecuityConfig {
}
