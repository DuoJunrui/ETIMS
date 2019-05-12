package cn.duojunrui.etims.project.monitor.job.task;

import org.springframework.stereotype.Component;

/**
 * 定时任务调度测试
 *
 * @className: EtimsTask
 * @author: Duojunrui
 * @date: 2019-04-19 20:17
 */

@Component("etimsTask")
public class EtimsTask {
    public void etimsParams(String params) {
        System.out.println("执行有参方法：" + params);
    }

    public void etimsNoParams() {
        System.out.println("执行无参方法");
    }
}
