package cn.duojunrui.etims.controller;
import cn.duojunrui.etims.entity.TeachMaterials;
import cn.duojunrui.etims.handler.InterfaceDataHandler;
import cn.duojunrui.etims.service.TeachMaterialsService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import cn.duojunrui.etims.handler.InterfaceDataHandler.InterfaceFormatResult;

@Controller
@RequestMapping(value = "teachMatrials")
public class TeachMaterialsController {

    @Autowired
    private TeachMaterialsService tms;

    @ResponseBody
    @RequestMapping(value = "findTeachFilesAll", method = RequestMethod.GET)
    public List<TeachMaterials> findTeachFilesAll(HttpServletRequest request, HttpServletResponse response) {
        //InterfaceFormatResult ifr = new InterfaceFormatResult();
        List<TeachMaterials> list = tms.findTeachFilesAll();
        return list;
    }

    @ResponseBody
    @RequestMapping(value = "inputTeachFiles", method = RequestMethod.POST)
    public String inputTeachFiles(@RequestBody TeachMaterials tm, HttpServletRequest request, HttpServletResponse response) {
        InterfaceFormatResult ifr = new InterfaceFormatResult();
        if (tm.getFileName() == null) {
            ifr.setSucceed(false);
            ifr.setStatusMessage("文件名不能为空！");
            ifr.setStatus(InterfaceDataHandler.CONTENTINVALID);
            ifr.setResult(null);
            return JSON.toJSONString(ifr);
        }
        return  JSON.toJSONString(ifr);
    }


}
