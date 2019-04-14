package cn.duojunrui.etims.controller;
import cn.duojunrui.etims.service.TeachMaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 教学资料控制层
 * @author Duojunrui
 * @date 2019/4/10 12:06
 */
@Controller
@RequestMapping("/teachMatrial")
public class TeachMaterialController {

    @Autowired
    private TeachMaterialService teachMaterialService;

//    /**
//     * 查询所有教学资料
//     * @param tm
//     * @return
//     */
//    @ResponseBody
//    @RequestMapping(value = "listTeachFileAll", method = RequestMethod.GET)
//    public Result listTeachFileAll(TeachMaterial tm) {
//        if (tm == null){
//            return ResultUtil.error(ResultEnum.SUCCESS_BUT_NULL);
//        }
//        return ResultUtil.success(tms.listTeachFileAll());
//
//    }
//
//    /**
//     * 根据资料名称查询资料
//     * @param fileName
//     * @return
//     */
//    @RequestMapping(value = "listFileByName", method = RequestMethod.POST)
//    public Result listFileByName(String fileName) {
//        tms.listFileByName(fileName);
//        return ResultUtil.success();
//    }
//
//    /**
//     * 添加教学资料
//     * @param tm
//     * @return
//     */
//    @RequestMapping(value = "insertTeachFile", method = RequestMethod.POST)
//    public Result insertTeachFile(TeachMaterial tm) {
//
//        return ResultUtil.success(tms.insertTeachFile(tm));
//    }

}
