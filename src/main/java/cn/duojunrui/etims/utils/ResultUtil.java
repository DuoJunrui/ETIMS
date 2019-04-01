package cn.duojunrui.etims.utils;


import cn.duojunrui.etims.entity.Result;
import com.alibaba.fastjson.JSON;

/**
 * 请求结果统一格式处理
 */
public class ResultUtil {

    public static Result success(Object data){
        Result res = new Result();
        res.setCode(1);
        res.setMessage("成功");
        res.setData(data);
        return res;
    }

    public static Result success(){
        Result res = new Result();
        res.setCode(1);
        res.setMessage("成功");
        return res;
    }

    public static Result error(Integer code, String message){
        Result res = new Result();
        res.setCode(code);
        res.setMessage(message);
        return res;
    }
}
