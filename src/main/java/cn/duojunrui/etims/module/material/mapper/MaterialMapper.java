package cn.duojunrui.etims.module.material.mapper;

import cn.duojunrui.etims.module.material.domain.Material;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 教学资源 数据层
 *
 * @author Duojunrui
 * @date 2019-04-24
 */
@Mapper
public interface MaterialMapper {
    /**
     * 查询教学资源信息
     *
     * @param materialId 教学资源ID
     * @return 教学资源信息
     */
    public Material selectMaterialById(Long materialId);

    /**
     * 查询教学资源列表
     *
     * @param material 教学资源信息
     * @return 教学资源集合
     */
    public List<Material> selectMaterialList(Material material);

    /**
     * 新增教学资源
     *
     * @param material 教学资源信息
     * @return 结果
     */
    public int insertMaterial(Material material);

    /**
     * 修改教学资源
     *
     * @param material 教学资源信息
     * @return 结果
     */
    public int updateMaterial(Material material);

    /**
     * 删除教学资源
     *
     * @param materialId 教学资源ID
     * @return 结果
     */
    public int deleteMaterialById(Long materialId);

    /**
     * 批量删除教学资源
     *
     * @param materialIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMaterialByIds(String[] materialIds);

}