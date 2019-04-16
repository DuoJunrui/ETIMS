package cn.duojunrui.etims.common.utils;

/**
 * TODO
 *
 * @className: ExceptionUtils
 * @author: Duojunrui
 * @date: 2019-04-16 16:54
 */

public class ExceptionUtils {
    public static String getExceptionAllinformation(Exception ex) {
        String sOut = "";
        StackTraceElement[] trace = ex.getStackTrace();
        for (StackTraceElement s : trace) {
            sOut += "\tat " + s + "\r\n";
        }
        return sOut;
    }
}
