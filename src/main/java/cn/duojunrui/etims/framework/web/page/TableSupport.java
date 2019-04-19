package cn.duojunrui.etims.framework.web.page;

import cn.duojunrui.etims.common.constant.Constants;
import cn.duojunrui.etims.common.utils.ServletUtils;

/**
 * 表格数据处理
 *
 * @className: TableSupport
 * @author: Duojunrui
 * @date: 2019-04-19 20:03
 */

public class TableSupport {
    /**
     * 封装分页对象
     */
    public static PageDomain getPageDomain() {
        PageDomain pageDomain = new PageDomain();
        pageDomain.setPageNum(ServletUtils.getParameterToInt(Constants.PAGE_NUM));
        pageDomain.setPageSize(ServletUtils.getParameterToInt(Constants.PAGE_SIZE));
        pageDomain.setOrderByColumn(ServletUtils.getParameter(Constants.ORDER_BY_COLUMN));
        pageDomain.setIsAsc(ServletUtils.getParameter(Constants.IS_ASC));
        return pageDomain;
    }

    public static PageDomain buildPageRequest() {
        return getPageDomain();
    }

}
