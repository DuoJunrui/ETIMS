package cn.duojunrui.etims.common.controller;

import cn.duojunrui.etims.common.config.Constant;
import cn.duojunrui.etims.common.domain.TaskDO;
import cn.duojunrui.etims.common.service.JobService;
import cn.duojunrui.etims.common.utils.PageUtils;
import cn.duojunrui.etims.common.utils.Query;
import cn.duojunrui.etims.common.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @className: JobController
 * @author: Duojunrui
 * @date: 2019-04-16 17:29
 */

@Controller
@RequestMapping("/common/job")
public class JobController extends BaseController{
    @Autowired
    private JobService taskScheduleJobService;

    @GetMapping()
    String taskScheduleJob() {
        return "common/job/job";
    }

    @ResponseBody
    @GetMapping("/list")
    public PageUtils list(@RequestParam Map<String, Object> params) {
        // 查询列表数据
        Query query = new Query(params);
        List<TaskDO> taskScheduleJobList = taskScheduleJobService.list(query);
        int total = taskScheduleJobService.count(query);
        PageUtils pageUtils = new PageUtils(taskScheduleJobList, total);
        return pageUtils;
    }

    @GetMapping("/add")
    String add() {
        return "common/job/add";
    }

    @GetMapping("/edit/{id}")
    String edit(@PathVariable("id") Long id, Model model) {
        TaskDO job = taskScheduleJobService.get(id);
        model.addAttribute("job", job);
        return "common/job/edit";
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public ResultUtils info(@PathVariable("id") Long id) {
        TaskDO taskScheduleJob = taskScheduleJobService.get(id);
        return ResultUtils.ok().put("taskScheduleJob", taskScheduleJob);
    }

    /**
     * 保存
     */
    @ResponseBody
    @PostMapping("/save")
    public ResultUtils save(TaskDO taskScheduleJob) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        if (taskScheduleJobService.save(taskScheduleJob) > 0) {
            return ResultUtils.ok();
        }
        return ResultUtils.error();
    }

    /**
     * 修改
     */
    @ResponseBody
    @PostMapping("/update")
    public ResultUtils update(TaskDO taskScheduleJob) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        taskScheduleJobService.update(taskScheduleJob);
        return ResultUtils.ok();
    }

    /**
     * 删除
     */
    @PostMapping("/remove")
    @ResponseBody
    public ResultUtils remove(Long id) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        if (taskScheduleJobService.remove(id) > 0) {
            return ResultUtils.ok();
        }
        return ResultUtils.error();
    }

    /**
     * 删除
     */
    @PostMapping("/batchRemove")
    @ResponseBody
    public ResultUtils remove(@RequestParam("ids[]") Long[] ids) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        taskScheduleJobService.batchRemove(ids);

        return ResultUtils.ok();
    }

    @PostMapping(value = "/changeJobStatus")
    @ResponseBody
    public ResultUtils changeJobStatus(Long id,String cmd ) {
        if (Constant.DEMO_ACCOUNT.equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        String label = "停止";
        if ("start".equals(cmd)) {
            label = "启动";
        } else {
            label = "停止";
        }
        try {
            taskScheduleJobService.changeStatus(id, cmd);
            return ResultUtils.ok("任务" + label + "成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResultUtils.ok("任务" + label + "失败");
    }

}
