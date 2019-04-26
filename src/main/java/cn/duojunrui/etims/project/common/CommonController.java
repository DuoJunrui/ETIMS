package cn.duojunrui.etims.project.common;

import cn.duojunrui.etims.common.utils.StringUtils;
import cn.duojunrui.etims.common.utils.file.FileUploadUtils;
import cn.duojunrui.etims.common.utils.file.FileUtils;
import cn.duojunrui.etims.framework.config.EtimsConfig;
import cn.duojunrui.etims.framework.config.ServerConfig;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 通用请求处理
 *
 * @className: CommonController
 * @author: Duojunrui
 * @date: 2019-04-19 20:07
 */

@Controller
public class CommonController {
    private static final Logger log = LoggerFactory.getLogger(CommonController.class);

    /**
     * 文件上传路径
     */
    public static final String UPLOAD_PATH = "/profile/upload/";

    @Autowired
    private ServerConfig serverConfig;

    /**
     * 通用下载请求
     *
     * @param fileName 文件名称
     * @param delete   是否删除
     */
    @GetMapping("common/download")
    public void fileDownload(String fileName, Boolean delete, HttpServletResponse response, HttpServletRequest request) {
        try {
            if (!FileUtils.isValidFilename(fileName)) {
                throw new Exception(StringUtils.format("文件名称({})非法，不允许下载。 " , fileName));
            }
            String realFileName = System.currentTimeMillis() + fileName.substring(fileName.indexOf("_") + 1);
            String filePath = EtimsConfig.getDownloadPath() + fileName;

            response.setCharacterEncoding("utf-8");
            response.setContentType("multipart/form-data");
            response.setHeader("Content-Disposition" ,
                    "attachment;fileName=" + FileUtils.setFileDownloadHeader(request, realFileName));
            FileUtils.writeBytes(filePath, response.getOutputStream());
            if (delete) {
                FileUtils.deleteFile(filePath);
            }
        } catch (Exception e) {
            log.error("下载文件失败" , e);
        }
    }

    /**
     * 通用上传请求
     */
    @PostMapping("/common/upload")
    @ResponseBody
    public AjaxResult uploadFile(MultipartFile file) throws Exception {
        try {
            // 上传文件路径
            String filePath = EtimsConfig.getUploadPath();
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + UPLOAD_PATH + fileName;
            AjaxResult ajax = AjaxResult.success();
            ajax.put("fileName" , fileName);
            ajax.put("url" , url);
            return ajax;
        } catch (Exception e) {
            return AjaxResult.error(e.getMessage());
        }
    }
}
