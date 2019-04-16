package cn.duojunrui.etims.common.service;

import cn.duojunrui.etims.common.domain.LogDO;
import cn.duojunrui.etims.common.domain.PageDO;
import cn.duojunrui.etims.common.utils.Query;
import org.springframework.stereotype.Service;

/**
 * TODO
 *
 * @interfaceName: LogService
 * @author: Duojunrui
 * @date: 2019-04-16 17:20
 */
@Service
public interface LogService {

    void save(LogDO logDO);

    PageDO<LogDO> queryList(Query query);

    int remove(Long id);

    int batchRemove(Long[] ids);
}