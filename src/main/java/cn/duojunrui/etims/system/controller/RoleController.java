package cn.duojunrui.etims.system.controller;

import cn.duojunrui.etims.common.annotation.Log;
import cn.duojunrui.etims.common.config.Constant;
import cn.duojunrui.etims.common.controller.BaseController;
import cn.duojunrui.etims.common.utils.ResultUtils;
import cn.duojunrui.etims.system.domain.RoleDO;
import cn.duojunrui.etims.system.service.RoleService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * TODO
 *
 * @className: RoleController
 * @author: Duojunrui
 * @date: 2019-04-16 19:58
 */
@RequestMapping("/sys/role")
@Controller
public class RoleController extends BaseController {
    String prefix = "system/role";
    @Autowired
    RoleService roleService;

    @RequiresPermissions("sys:role:role")
    @GetMapping()
    String role() {
        return prefix + "/role";
    }

    @RequiresPermissions("sys:role:role")
    @GetMapping("/list")
    @ResponseBody()
    List<RoleDO> list() {
        List<RoleDO> roles = roleService.list();
        return roles;
    }

    @Log("添加角色")
    @RequiresPermissions("sys:role:add")
    @GetMapping("/add")
    String add() {
        return prefix + "/add";
    }

    @Log("编辑角色")
    @RequiresPermissions("sys:role:edit")
    @GetMapping("/edit/{id}")
    String edit(@PathVariable("id") Long id, Model model) {
        RoleDO roleDO = roleService.get(id);
        model.addAttribute("role", roleDO);
        return prefix + "/edit";
    }

    @Log("保存角色")
    @RequiresPermissions("sys:role:add")
    @PostMapping("/save")
    @ResponseBody()
    ResultUtils save(RoleDO role) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        if (roleService.save(role) > 0) {
            return ResultUtils.ok();
        } else {
            return ResultUtils.error(1, "保存失败");
        }
    }

    @Log("更新角色")
    @RequiresPermissions("sys:role:edit")
    @PostMapping("/update")
    @ResponseBody()
    ResultUtils update(RoleDO role) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        if (roleService.update(role) > 0) {
            return ResultUtils.ok();
        } else {
            return ResultUtils.error(1, "保存失败");
        }
    }

    @Log("删除角色")
    @RequiresPermissions("sys:role:remove")
    @PostMapping("/remove")
    @ResponseBody()
    ResultUtils save(Long id) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        if (roleService.remove(id) > 0) {
            return ResultUtils.ok();
        } else {
            return ResultUtils.error(1, "删除失败");
        }
    }

    @RequiresPermissions("sys:role:batchRemove")
    @Log("批量删除角色")
    @PostMapping("/batchRemove")
    @ResponseBody
    ResultUtils batchRemove(@RequestParam("ids[]") Long[] ids) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        int r = roleService.batchremove(ids);
        if (r > 0) {
            return ResultUtils.ok();
        }
        return ResultUtils.error();
    }
}
