package cn.duojunrui.etims.utils;


import cn.duojunrui.etims.entity.Result;
import com.alibaba.fastjson.JSON;

/**
 * 结果返回情况
 */
public class ResultUtil {

    public static Result success(Object data){
        Result res = new Result();
        res.setCode(1);
        res.setMsg("成功");
        res.setData(data);
        return res;
    }

    public static Result success(){
        Result res = new Result();
        res.setCode(1);
        res.setMsg("成功");
        return res;
    }

    public static Result error(Integer code, String msg){
        Result res = new Result();
        res.setCode(code);
        res.setMsg(msg);
        return res;
    }
}
