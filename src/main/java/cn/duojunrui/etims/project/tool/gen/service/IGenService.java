package cn.duojunrui.etims.project.tool.gen.service;

import cn.duojunrui.etims.project.tool.gen.domain.TableInfo;

import java.util.List;

/**
 * 代码生成 服务层
 *
 * @interfaceName: IGenService
 * @author: Duojunrui
 * @date: 2019-04-19 21:50
 */

public interface IGenService {
    /**
     * 查询ry数据库表信息
     *
     * @param tableInfo 表信息
     * @return 数据库表列表
     */
    public List<TableInfo> selectTableList(TableInfo tableInfo);

    /**
     * 生成代码
     *
     * @param tableName 表名称
     * @return 数据
     */
    public byte[] generatorCode(String tableName);

    /**
     * 批量生成代码
     *
     * @param tableNames 表数组
     * @return 数据
     */
    public byte[] generatorCode(String[] tableNames);
}
