package cn.duojunrui.etims.common.task;

import cn.duojunrui.etims.oa.domain.Response;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Component;

/**
 * TODO
 *
 * @className: WelcomeJob
 * @author: Duojunrui
 * @date: 2019-04-16 16:50
 */

@Component
public class WelcomeJob implements Job {
    @Autowired
    SimpMessagingTemplate template;

    @Override
    public void execute(JobExecutionContext arg0) throws JobExecutionException {
        template.convertAndSend("/topic/getResponse", new Response("欢迎体验bootdo,这是一个任务计划，使用了websocket和quzrtz技术，可以在计划列表中取消，欢迎您加入qq群交流学习!" ));

    }

}