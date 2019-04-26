package cn.duojunrui.etims.project.system.user.controller;

import cn.duojunrui.etims.framework.config.EtimsConfig;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.project.system.menu.domain.Menu;
import cn.duojunrui.etims.project.system.menu.service.IMenuService;
import cn.duojunrui.etims.project.system.user.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * 首页 业务处理
 *
 * @className: IndexController
 * @author: Duojunrui
 * @date: 2019-04-19 21:40
 */

@Controller
public class IndexController extends BaseController {
    @Autowired
    private IMenuService menuService;

    @Autowired
    private EtimsConfig etimsConfig;

    // 系统首页
    @GetMapping("/index")
    public String index(ModelMap mmap) {
        // 取身份信息
        User user = getSysUser();
        // 根据用户id取出菜单
        List<Menu> menus = menuService.selectMenusByUser(user);
        mmap.put("menus" , menus);
        mmap.put("user" , user);
        mmap.put("copyrightYear" , etimsConfig.getCopyrightYear());
        return "index";
    }

    // 系统介绍
    @GetMapping("/system/main")
    public String main(ModelMap mmap) {
        mmap.put("version" , etimsConfig.getVersion());
        return "main";
    }
}
