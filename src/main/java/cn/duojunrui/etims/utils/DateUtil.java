package cn.duojunrui.etims.utils;

import java.text.SimpleDateFormat;

public class DateUtil {

    public static String Time(long lon) {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        return sdf.format(lon);

    }
}
