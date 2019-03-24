package cn.duojunrui.etims;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

//@ComponentScan("cn.duojunrui.etims.entity")
//@MapperScan("cn.duojunrui.etims.mapper")
@SpringBootApplication
public class EtimsApplication {

    public static void main(String[] args) {
        SpringApplication.run(EtimsApplication.class, args);
    }

}
