package cn.duojunrui.etims.framework.shiro.web.filter.sync;

import cn.duojunrui.etims.common.constant.ShiroConstants;
import cn.duojunrui.etims.framework.shiro.session.OnlineSessionDAO;
import cn.duojunrui.etims.project.monitor.online.domain.OnlineSession;
import org.apache.shiro.web.filter.PathMatchingFilter;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * 同步Session数据到Db
 *
 * @className: SyncOnlineSessionFilter
 * @author: Duojunrui
 * @date: 2019-04-19 19:56
 */

public class SyncOnlineSessionFilter extends PathMatchingFilter {
    @Autowired
    private OnlineSessionDAO onlineSessionDAO;

    /**
     * 同步会话数据到DB 一次请求最多同步一次 防止过多处理 需要放到Shiro过滤器之前
     */
    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        OnlineSession session = (OnlineSession) request.getAttribute(ShiroConstants.ONLINE_SESSION);
        // 如果session stop了 也不同步
        // session停止时间，如果stopTimestamp不为null，则代表已停止
        if (session != null && session.getUserId() != null && session.getStopTimestamp() == null) {
            onlineSessionDAO.syncToDb(session);
        }
        return true;
    }
}
