package cn.duojunrui.etims.common.utils;

import cn.duojunrui.etims.common.domain.ScheduleJob;
import cn.duojunrui.etims.common.domain.TaskDO;

/**
 * TODO
 *
 * @className: ScheduleJobUtils
 * @author: Duojunrui
 * @date: 2019-04-16 17:04
 */
public class ScheduleJobUtils {
    public static ScheduleJob entityToData(TaskDO scheduleJobEntity) {
        ScheduleJob scheduleJob = new ScheduleJob();
        scheduleJob.setBeanClass(scheduleJobEntity.getBeanClass());
        scheduleJob.setCronExpression(scheduleJobEntity.getCronExpression());
        scheduleJob.setDescription(scheduleJobEntity.getDescription());
        scheduleJob.setIsConcurrent(scheduleJobEntity.getIsConcurrent());
        scheduleJob.setJobName(scheduleJobEntity.getJobName());
        scheduleJob.setJobGroup(scheduleJobEntity.getJobGroup());
        scheduleJob.setJobStatus(scheduleJobEntity.getJobStatus());
        scheduleJob.setMethodName(scheduleJobEntity.getMethodName());
        scheduleJob.setSpringBean(scheduleJobEntity.getSpringBean());
        return scheduleJob;
    }
}