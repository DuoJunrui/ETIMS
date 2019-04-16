package cn.duojunrui.etims.common.controller;

import cn.duojunrui.etims.common.config.Constant;
import cn.duojunrui.etims.common.domain.DictDO;
import cn.duojunrui.etims.common.service.DictService;
import cn.duojunrui.etims.common.utils.PageUtils;
import cn.duojunrui.etims.common.utils.Query;
import cn.duojunrui.etims.common.utils.ResultUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @className: DictController
 * @author: Duojunrui
 * @date: 2019-04-16 17:25
 */

@Controller
@RequestMapping("/common/dict")
public class DictController extends BaseController {
    @Autowired
    private DictService dictService;

    @GetMapping()
    @RequiresPermissions("common:dict:dict")
    String dict() {
        return "common/dict/dict";
    }

    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("common:dict:dict")
    public PageUtils list(@RequestParam Map<String, Object> params) {
        // 查询列表数据
        Query query = new Query(params);
        List<DictDO> dictList = dictService.list(query);
        int total = dictService.count(query);
        PageUtils pageUtils = new PageUtils(dictList, total);
        return pageUtils;
    }

    @GetMapping("/add")
    @RequiresPermissions("common:dict:add")
    String add() {
        return "common/dict/add";
    }

    @GetMapping("/edit/{id}")
    @RequiresPermissions("common:dict:edit")
    String edit(@PathVariable("id") Long id, Model model) {
        DictDO dict = dictService.get(id);
        model.addAttribute("dict", dict);
        return "common/dict/edit";
    }

    /**
     * 保存
     */
    @ResponseBody
    @PostMapping("/save")
    @RequiresPermissions("common:dict:add")
    public ResultUtils save(DictDO dict) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        if (dictService.save(dict) > 0) {
            return ResultUtils.ok();
        }
        return ResultUtils.error();
    }

    /**
     * 修改
     */
    @ResponseBody
    @RequestMapping("/update")
    @RequiresPermissions("common:dict:edit")
    public ResultUtils update(DictDO dict) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        dictService.update(dict);
        return ResultUtils.ok();
    }

    /**
     * 删除
     */
    @PostMapping("/remove")
    @ResponseBody
    @RequiresPermissions("common:dict:remove")
    public ResultUtils remove(Long id) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        if (dictService.remove(id) > 0) {
            return ResultUtils.ok();
        }
        return ResultUtils.error();
    }

    /**
     * 删除
     */
    @PostMapping("/batchRemove")
    @ResponseBody
    @RequiresPermissions("common:dict:batchRemove")
    public ResultUtils remove(@RequestParam("ids[]") Long[] ids) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        dictService.batchRemove(ids);
        return ResultUtils.ok();
    }

    @GetMapping("/type")
    @ResponseBody
    public List<DictDO> listType() {
        return dictService.listType();
    };

    // 类别已经指定增加
    @GetMapping("/add/{type}/{description}")
    @RequiresPermissions("common:dict:add")
    String addD(Model model, @PathVariable("type") String type, @PathVariable("description") String description) {
        model.addAttribute("type", type);
        model.addAttribute("description", description);
        return "common/dict/add";
    }

    @ResponseBody
    @GetMapping("/list/{type}")
    public List<DictDO> listByType(@PathVariable("type") String type) {
        // 查询列表数据
        Map<String, Object> map = new HashMap<>(16);
        map.put("type", type);
        List<DictDO> dictList = dictService.list(map);
        return dictList;
    }
}