package cn.duojunrui.etims.project.module.store.mapper;

import cn.duojunrui.etims.project.module.store.domain.Store;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 创业园店铺 数据层
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Mapper
public interface StoreMapper {
    /**
     * 查询创业园店铺信息
     *
     * @param storeId 创业园店铺ID
     * @return 创业园店铺信息
     */
    public Store selectStoreById(Long storeId);

    /**
     * 查询创业园店铺列表
     *
     * @param store 创业园店铺信息
     * @return 创业园店铺集合
     */
    public List<Store> selectStoreList(Store store);

    /**
     * 新增创业园店铺
     *
     * @param store 创业园店铺信息
     * @return 结果
     */
    public int insertStore(Store store);

    /**
     * 修改创业园店铺
     *
     * @param store 创业园店铺信息
     * @return 结果
     */
    public int updateStore(Store store);

    /**
     * 删除创业园店铺
     *
     * @param storeId 创业园店铺ID
     * @return 结果
     */
    public int deleteStoreById(Long storeId);

    /**
     * 批量删除创业园店铺
     *
     * @param storeIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteStoreByIds(String[] storeIds);

}