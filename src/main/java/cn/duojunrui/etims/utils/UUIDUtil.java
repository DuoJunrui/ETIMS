package cn.duojunrui.etims.utils;
import java.util.UUID;
public class UUIDUtil {
    public static String getUUID32(){
        String uuid = UUID.randomUUID().toString().replace("-", "").toLowerCase();
        return uuid;
    }
}
