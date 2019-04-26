package cn.duojunrui.etims.framework.shiro.web.filter;

import cn.duojunrui.etims.common.constant.Constants;
import cn.duojunrui.etims.common.utils.MessageUtils;
import cn.duojunrui.etims.common.utils.StringUtils;
import cn.duojunrui.etims.common.utils.security.ShiroUtils;
import cn.duojunrui.etims.framework.manager.AsyncManager;
import cn.duojunrui.etims.framework.manager.factory.AsyncFactory;
import cn.duojunrui.etims.project.system.user.domain.User;
import org.apache.shiro.session.SessionException;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * 退出过滤器
 *
 * @className: LogoutFilter
 * @author: Duojunrui
 * @date: 2019-04-19 19:54
 */

public class LogoutFilter extends org.apache.shiro.web.filter.authc.LogoutFilter {
    private static final Logger log = LoggerFactory.getLogger(LogoutFilter.class);

    /**
     * 退出后重定向的地址
     */
    private String loginUrl;

    public String getLoginUrl() {
        return loginUrl;
    }

    public void setLoginUrl(String loginUrl) {
        this.loginUrl = loginUrl;
    }

    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        try {
            Subject subject = getSubject(request, response);
            String redirectUrl = getRedirectUrl(request, response, subject);
            try {
                User user = ShiroUtils.getSysUser();
                if (StringUtils.isNotNull(user)) {
                    String loginName = user.getLoginName();
                    // 记录用户退出日志
                    AsyncManager.me().execute(AsyncFactory.recordLogininfor(loginName, Constants.LOGOUT, MessageUtils.message("user.logout.success")));
                }
                // 退出登录
                subject.logout();
            } catch (SessionException ise) {
                log.error("logout fail." , ise);
            }
            issueRedirect(request, response, redirectUrl);
        } catch (Exception e) {
            log.error("Encountered session exception during logout.  This can generally safely be ignored." , e);
        }
        return false;
    }

    /**
     * 退出跳转URL
     */
    @Override
    protected String getRedirectUrl(ServletRequest request, ServletResponse response, Subject subject) {
        String url = getLoginUrl();
        if (StringUtils.isNotEmpty(url)) {
            return url;
        }
        return super.getRedirectUrl(request, response, subject);
    }
}
