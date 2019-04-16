package cn.duojunrui.etims.common.service.impl;

import cn.duojunrui.etims.common.dao.LogDao;
import cn.duojunrui.etims.common.domain.LogDO;
import cn.duojunrui.etims.common.domain.PageDO;
import cn.duojunrui.etims.common.service.LogService;
import cn.duojunrui.etims.common.utils.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * TODO
 *
 * @className: LogServiceImpl
 * @author: Duojunrui
 * @date: 2019-04-16 17:23
 */

@Service
public class LogServiceImpl implements LogService {
    @Autowired
    LogDao logMapper;

    @Async
    @Override
    public void save(LogDO logDO) {
        logMapper.save(logDO);
    }

    @Override
    public PageDO<LogDO> queryList(Query query) {
        int total = logMapper.count(query);
        List<LogDO> logs = logMapper.list(query);
        PageDO<LogDO> page = new PageDO<>();
        page.setTotal(total);
        page.setRows(logs);
        return page;
    }

    @Override
    public int remove(Long id) {
        int count = logMapper.remove(id);
        return count;
    }

    @Override
    public int batchRemove(Long[] ids){
        return logMapper.batchRemove(ids);
    }
}