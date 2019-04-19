package cn.duojunrui.etims.project.tool.swagger;

import cn.duojunrui.etims.framework.web.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * swagger 接口
 *
 * @className: SwaggerController
 * @author: Duojunrui
 * @date: 2019-04-19 21:44
 */

@Controller
@RequestMapping("/tool/swagger")
public class SwaggerController extends BaseController {
    @RequiresPermissions("tool:swagger:view")
    @GetMapping()
    public String index() {
        return redirect("/swagger-ui.html");
    }
}
