package cn.duojunrui.etims.system.config;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * TODO
 *
 * @className: EtimsSessionListener
 * @author: Duojunrui
 * @date: 2019-04-16 19:34
 */

public class EtimsSessionListener implements SessionListener {

    private final AtomicInteger sessionCount = new AtomicInteger(0);

    @Override
    public void onStart(Session session) {
        sessionCount.incrementAndGet();
    }

    @Override
    public void onStop(Session session) {
        sessionCount.decrementAndGet();
    }

    @Override
    public void onExpiration(Session session) {
        sessionCount.decrementAndGet();

    }

    public int getSessionCount() {
        return sessionCount.get();
    }

}