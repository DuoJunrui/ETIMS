package cn.duojunrui.etims.controller;

import cn.duojunrui.etims.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import javax.mail.AuthenticationFailedException;
import java.util.Random;

@Controller
public class MailController {

    @Autowired
    private MailService mailService;

    @PostMapping("/sendEmailCode")
    public String sendEmailCode(String email) {
        String emailCode = String.valueOf(new Random().nextInt(899999) + 100000);
        String message = "您的注册验证码是：" + emailCode;
        mailService.sendSimpleMail(email, "欢迎注册桂电信科实验教学信息管理系统，请及时填写您的验证码", message);
        return emailCode;
    }

}
