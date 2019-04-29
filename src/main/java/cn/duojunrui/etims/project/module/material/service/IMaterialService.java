package cn.duojunrui.etims.project.module.material.service;

import cn.duojunrui.etims.project.module.material.domain.Material;

import java.util.List;

/**
 * 教学资源 服务层
 *
 * @author Duojunrui
 * @date 2019-04-29
 */
public interface IMaterialService {
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
     * 删除教学资源信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMaterialByIds(String ids);

}
