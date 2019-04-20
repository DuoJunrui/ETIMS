package cn.duojunrui.etims;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@MapperScan("cn.duojunrui.etims.project.*.*.mapper")
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class EtimsApplication {

    public static void main(String[] args) {
        SpringApplication.run(EtimsApplication.class, args);
        System.out.println("---------实验教学信息管理系统启动成功---------");
    }

}
