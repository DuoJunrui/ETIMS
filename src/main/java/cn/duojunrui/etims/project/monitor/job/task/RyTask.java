package cn.duojunrui.etims.project.monitor.job.task;

import org.springframework.stereotype.Component;

/**
 * 定时任务调度测试
 *
 * @className: RyTask
 * @author: Duojunrui
 * @date: 2019-04-19 20:17
 */

@Component("ryTask")
public class RyTask {
    public void ryParams(String params) {
        System.out.println("执行有参方法：" + params);
    }

    public void ryNoParams() {
        System.out.println("执行无参方法");
    }
}
