package cn.duojunrui.etims.utils;

import org.apache.logging.log4j.util.PropertiesUtil;

import java.security.MessageDigest;

public class Md5Util {

        // 这里主要是遍历8个byte，转化为16位进制的字符，即0-F
        private static String byteArrayToHexString(byte[] b) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < b.length; i++) {
                stringBuffer.append(byteToHexString(b[i]));
            }
            return stringBuffer.toString();
        }
        // 这里是针对单个byte，256的byte通过16拆分为d1和d2
        private static String byteToHexString(byte b) {
            int n = b;
            if (n < 0) {
                n += 256;
            }
            int d1 = n / 16;
            int d2 = n % 16;
            return HEXDIGITS[d1] + HEXDIGITS[d2];
        }

        /**
         * 返回大写MD5
         *
         * @param origin
         * @param charsetname
         * @return
         */
        private static String md5Encode(String origin, String charsetname) {
            String resultString = null;
            try {
                resultString = new String(origin);
                MessageDigest md = MessageDigest.getInstance("MD5");
                if (charsetname == null || "".equals(charsetname)) {
                    resultString = byteArrayToHexString(md.digest(resultString.getBytes()));
                } else {
                    resultString = byteArrayToHexString(md.digest(resultString.getBytes(charsetname)));
                }
            } catch (Exception exception) {
            }
            return resultString.toUpperCase();
        }

        public static String md5EncodeUtf8(String origin) {
           // origin = origin + PropertiesUtil.getProperty("password.salt", "");
            return md5Encode(origin, "utf-8");
        }


        private static final String[] HEXDIGITS = {"0", "1", "2", "3", "4", "5",
                "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

}

////在这段代码里面还引入了PropertiesUtil.getProperty("password.salt","")来获取一个额外的字符串，以保证碰撞算法的命中率更低，且在第三方MD5平台上也很难被搜索到。
//password.salt = 23543dfggeelysdafaqj23ou89ZXcj@#$@#$#@KJdjklj;D../dSF.,
