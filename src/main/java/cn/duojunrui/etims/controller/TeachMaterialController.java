package cn.duojunrui.etims.controller;
import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.TeachMaterial;
import cn.duojunrui.etims.enums.ResultEnum;
import cn.duojunrui.etims.service.TeachMaterialService;
import cn.duojunrui.etims.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "teachMatrial")
public class TeachMaterialController {

    @Autowired
    private TeachMaterialService tms;

    /**
     * 查询所有教学资料
     * @param tm
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "listTeachFileAll", method = RequestMethod.GET)
    public Result listTeachFileAll(TeachMaterial tm) {
        if (tm == null){
            return ResultUtil.error(ResultEnum.SUCCESS_BUT_NULL);
        }
        return ResultUtil.success(tms.listTeachFileAll());

    }

    /**
     * 根据资料名称查询资料
     * @param fileName
     * @return
     */
    @RequestMapping(value = "listFileByName", method = RequestMethod.POST)
    public Result listFileByName(String fileName) {
        tms.listFileByName(fileName);
        return ResultUtil.success();
    }

    /**
     * 添加教学资料
     * @param tm
     * @return
     */
    @RequestMapping(value = "insertTeachFile", method = RequestMethod.POST)
    public Result insertTeachFile(TeachMaterial tm) {

        return ResultUtil.success(tms.insertTeachFile(tm));
    }

}
