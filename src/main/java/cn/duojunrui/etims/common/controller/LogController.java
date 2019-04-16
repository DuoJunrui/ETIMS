package cn.duojunrui.etims.common.controller;

import cn.duojunrui.etims.common.domain.LogDO;
import cn.duojunrui.etims.common.domain.PageDO;
import cn.duojunrui.etims.common.service.LogService;
import cn.duojunrui.etims.common.utils.Query;
import cn.duojunrui.etims.common.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * TODO
 *
 * @className: LogController
 * @author: Duojunrui
 * @date: 2019-04-16 17:29
 */
@RequestMapping("/common/log")
@Controller
public class LogController {
    @Autowired
    LogService logService;
    String prefix = "common/log";

    @GetMapping()
    String log() {
        return prefix + "/log";
    }

    @ResponseBody
    @GetMapping("/list")
    PageDO<LogDO> list(@RequestParam Map<String, Object> params) {
        Query query = new Query(params);
        PageDO<LogDO> page = logService.queryList(query);
        return page;
    }

    @ResponseBody
    @PostMapping("/remove")
    ResultUtils remove(Long id) {
        if (logService.remove(id)>0) {
            return ResultUtils.ok();
        }
        return ResultUtils.error();
    }

    @ResponseBody
    @PostMapping("/batchRemove")
    ResultUtils batchRemove(@RequestParam("ids[]") Long[] ids) {
        int r = logService.batchRemove(ids);
        if (r > 0) {
            return ResultUtils.ok();
        }
        return ResultUtils.error();
    }
}
