package cn.duojunrui.etims.common.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * TODO
 *
 * @className: EtimsConfig
 * @author: Duojunrui
 * @date: 2019-04-16 16:27
 */

@Component
@ConfigurationProperties(prefix="etims")
public class EtimsConfig {
    //上传路径
    private String uploadPath;

    private String username;

    private String password;

    public String getUploadPath() {
        return uploadPath;
    }

    public void setUploadPath(String uploadPath) {
        this.uploadPath = uploadPath;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
