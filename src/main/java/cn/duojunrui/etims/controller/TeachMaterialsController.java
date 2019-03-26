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

    /**
     * 查询所有教学资料
     * @param tm
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "findTeachFilesAll", method = RequestMethod.GET)
    public Result findTeachFilesAll(TeachMaterials tm) {
        if (tm == null){
            return ResultUtil.error(1,"数据为空");
        }
        return ResultUtil.success(tms.findTeachFilesAll());

    }

    /**
     * 根据资料名称查询资料
     * @param fileName
     * @return
     */
    @RequestMapping(value = "findFilesByName", method = RequestMethod.POST)
    public Result findFilesByName(String fileName) {
        tms.findFilesByName(fileName);
        return ResultUtil.success();
    }

    /**
     * 添加教学资料
     * @param tm
     * @return
     */
    @RequestMapping(value = "addTeachFiles", method = RequestMethod.POST)
    public Result addTeachFiles(TeachMaterials tm) {

        return ResultUtil.success(tms.addTeachFiles(tm));
    }

}
