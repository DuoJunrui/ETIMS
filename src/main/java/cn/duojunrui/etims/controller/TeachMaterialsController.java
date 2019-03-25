package cn.duojunrui.etims.controller;
import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.TeachMaterials;
import cn.duojunrui.etims.service.TeachMaterialsService;
import cn.duojunrui.etims.utils.ResultUtil;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "teachMatrials")
public class TeachMaterialsController {

    @Autowired
    private TeachMaterialsService tms;

    @ResponseBody
    @RequestMapping(value = "findTeachFilesAll", method = RequestMethod.GET)
    public Result findTeachFilesAll(TeachMaterials tm) {

        return ResultUtil.success();

        /*try{
            List<TeachMaterials> list = tms.findTeachFilesAll();
            if (list != null && list.size() >0) {
                return ResultUtil.success(list);
            } else {
                result.setSucceed(true);
                result.setStatusMessage("无此数据");
                result.setStatus(InterfaceDataHandler.SUCCESSFUL);
                result.setData(null);
                return JSON.toJSONString(result);
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (e instanceof java.sql.SQLException) {
                result.setSucceed(false);
                result.setStatusMessage("数据库异常，请稍后重试");
                result.setStatus(InterfaceDataHandler.FAILED);
                result.setData(null);
                return JSON.toJSONString(result);
            } else {
                result.setSucceed(false);
                result.setStatusMessage("系统错误，请联系管理员");
                result.setStatus(InterfaceDataHandler.FAILED);
                result.setData(null);
                return JSON.toJSONString(result);
            }
        }*/

    }

    @RequestMapping(value = "addTeachFiles", method = RequestMethod.POST)
    public Result addTeachFiles(TeachMaterials tm) {
        tms.addTeachFiles(tm);
        return ResultUtil.success();
    }


    @RequestMapping(value = "findFilesByName", method = RequestMethod.POST)
    public Result findFilesByName(String fileName) {
        tms.findFilesByName(fileName);
        return ResultUtil.success();

           // return ResultUtil.error(0,"参数错误");

        //return ResultUtil.success(TeachMaterialsService.findFilesByName(fileName));
    }
}
