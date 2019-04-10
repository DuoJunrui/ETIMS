package cn.duojunrui.etims.utils;


import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.enums.ResultEnum;
import com.alibaba.fastjson.JSON;

/**
 * 请求结果统一格式处理
 */
public class ResultUtil {

    public static Result success(Object data){
        Result res = new Result();
        res.setCode(ResultEnum.SUCCESS.getCode());
        res.setMessage(ResultEnum.SUCCESS.getDesc());
        res.setData(data);
        return res;
    }

    public static Result success(){
        Result res = new Result();
        res.setCode(ResultEnum.SUCCESS.getCode());
        res.setMessage(ResultEnum.SUCCESS.getDesc());
        return res;
    }

    public static Result error(ResultEnum resultEnum){
        Result res = new Result();
        res.setCode(resultEnum.getCode());
        res.setMessage(resultEnum.getDesc());
        return res;
    }
}
