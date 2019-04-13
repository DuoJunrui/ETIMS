package cn.duojunrui.etims.utils;

import java.util.Random;

public class RandomUtil {

    public static final String ALLCHAR = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    public static final String LETTERCHAR = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    public static final String NUMBERCHAR = "0123456789";

    //返回一个定长的随机字符串(只包含数字)
    public static String generateNumber(int length) {
        StringBuffer sb = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sb.append(NUMBERCHAR.charAt(random.nextInt(NUMBERCHAR.length())));
        }
        return sb.toString();
    }

    //返回一个定长的随机字符串(只包含大小写字母、数字)
    public static String generateString(int length) {
        StringBuffer sb = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sb.append(ALLCHAR.charAt(random.nextInt(ALLCHAR.length())));
        }
        return sb.toString();
    }

    //返回一个定长的随机纯字母字符串(只包含大小写字母)
    public static String generateMixString(int length) {
        StringBuffer sb = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sb.append(ALLCHAR.charAt(random.nextInt(LETTERCHAR.length())));
        }
        return sb.toString();
    }

    //返回一个定长的随机纯大写字母字符串(只包含大小写字母)
    public static String generateLowerString(int length) {
        return generateMixString(length).toLowerCase();
    }

    //返回一个定长的随机纯小写字母字符串(只包含大小写字母)
    public static String generateUpperString(int length) {
        return generateMixString(length).toUpperCase();
    }
}
