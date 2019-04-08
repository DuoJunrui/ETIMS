package cn.duojunrui.etims.handler;

import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.enums.ResultEnum;
import cn.duojunrui.etims.exception.EtimsException;
import cn.duojunrui.etims.utils.ResultUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 全局系统异常处理类
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    private final static Logger logger = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public Result handle(Exception e) {
//        if (e instanceof EtimsException) {
//            EtimsException etimsException = (EtimsException) e;
//            return ResultUtil.error(etimsException.getCode(), etimsException.getMessage());
//        } else {
            logger.error("------------【程序异常】-----------", e);
            return ResultUtil.error(ResultEnum.UNKNOWN_ERROR);
//        }
    }
}
