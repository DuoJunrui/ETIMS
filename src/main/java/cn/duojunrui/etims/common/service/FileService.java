package cn.duojunrui.etims.common.service;

import cn.duojunrui.etims.common.domain.FileDO;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: FileService
 * @author: Duojunrui
 * @date: 2019-04-16 17:18
 */

public interface FileService {

    FileDO get(Long id);

    List<FileDO> list(Map<String, Object> map);

    int count(Map<String, Object> map);

    int save(FileDO sysFile);

    int update(FileDO sysFile);

    int remove(Long id);

    int batchRemove(Long[] ids);

    /**
     * 判断一个文件是否存在
     * @param url FileDO中存的路径
     * @return
     */
    Boolean isExist(String url);
}
