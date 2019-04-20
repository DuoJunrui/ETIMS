package cn.duojunrui.etims.project.monitor.job.util;

import cn.duojunrui.etims.project.monitor.job.domain.Job;
import org.quartz.JobExecutionContext;

/**
 * 定时任务处理（允许并发执行）
 *
 * @className: QuartzJobExecution
 * @author: Duojunrui
 * @date: 2019-04-19 20:21
 */

public class QuartzJobExecution extends AbstractQuartzJob {
    @Override
    protected void doExecute(JobExecutionContext context, Job job) throws Exception {
        JobInvokeUtil.invokeMethod(job);
    }
}
