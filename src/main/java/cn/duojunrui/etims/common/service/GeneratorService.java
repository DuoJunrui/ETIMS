package cn.duojunrui.etims.common.service;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: GeneratorService
 * @author: Duojunrui
 * @date: 2019-04-16 17:19
 */

@Service
public interface GeneratorService {
    List<Map<String, Object>> list();

    byte[] generatorCode(String[] tableNames);
}
