package cn.duojunrui.etims.common.service.impl;

import cn.duojunrui.etims.common.config.EtimsConfig;
import cn.duojunrui.etims.common.dao.FileDao;
import cn.duojunrui.etims.common.domain.FileDO;
import cn.duojunrui.etims.common.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.io.File;
import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @className: FileServiceImpl
 * @author: Duojunrui
 * @date: 2019-04-16 17:22
 */

@Service
public class FileServiceImpl implements FileService {
    @Autowired
    private FileDao sysFileMapper;

    @Autowired
    private EtimsConfig etimsConfig;
    @Override
    public FileDO get(Long id){
        return sysFileMapper.get(id);
    }

    @Override
    public List<FileDO> list(Map<String, Object> map){
        return sysFileMapper.list(map);
    }

    @Override
    public int count(Map<String, Object> map){
        return sysFileMapper.count(map);
    }

    @Override
    public int save(FileDO sysFile){
        return sysFileMapper.save(sysFile);
    }

    @Override
    public int update(FileDO sysFile){
        return sysFileMapper.update(sysFile);
    }

    @Override
    public int remove(Long id){
        return sysFileMapper.remove(id);
    }

    @Override
    public int batchRemove(Long[] ids){
        return sysFileMapper.batchRemove(ids);
    }

    @Override
    public Boolean isExist(String url) {
        Boolean isExist = false;
        if (!StringUtils.isEmpty(url)) {
            String filePath = url.replace("/files/", "");
            filePath = etimsConfig.getUploadPath() + filePath;
            File file = new File(filePath);
            if (file.exists()) {
                isExist = true;
            }
        }
        return isExist;
    }
}
