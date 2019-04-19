package cn.duojunrui.etims.project.tool.gen.mapper;

import cn.duojunrui.etims.project.tool.gen.domain.ColumnInfo;
import cn.duojunrui.etims.project.tool.gen.domain.TableInfo;

import java.util.List;

/**
 * 代码生成 数据层
 *
 * @interfaceName: GenMapper
 * @author: Duojunrui
 * @date: 2019-04-19 21:49
 */

public interface GenMapper {
    /**
     * 查询ry数据库表信息
     *
     * @param tableInfo 表信息
     * @return 数据库表列表
     */
    public List<TableInfo> selectTableList(TableInfo tableInfo);

    /**
     * 根据表名称查询信息
     *
     * @param tableName 表名称
     * @return 表信息
     */
    public TableInfo selectTableByName(String tableName);

    /**
     * 根据表名称查询列信息
     *
     * @param tableName 表名称
     * @return 列信息
     */
    public List<ColumnInfo> selectTableColumnsByName(String tableName);
}
