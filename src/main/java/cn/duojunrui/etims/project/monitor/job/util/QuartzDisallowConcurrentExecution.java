package cn.duojunrui.etims.project.monitor.job.util;

import cn.duojunrui.etims.project.monitor.job.domain.Job;
import org.quartz.DisallowConcurrentExecution;
import org.quartz.JobExecutionContext;

/**
 * 定时任务处理（禁止并发执行）
 *
 * @className: QuartzDisallowConcurrentExecution
 * @author: Duojunrui
 * @date: 2019-04-19 20:20
 */

@DisallowConcurrentExecution
public class QuartzDisallowConcurrentExecution extends AbstractQuartzJob {
    @Override
    protected void doExecute(JobExecutionContext context, Job job) throws Exception {
        JobInvokeUtil.invokeMethod(job);
    }
}
