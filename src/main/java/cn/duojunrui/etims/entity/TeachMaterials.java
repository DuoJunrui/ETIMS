package cn.duojunrui.etims.entity;

import java.util.Date;

/* *
 * 教学资料实体
 * 课件、试题、设备知识、项目资料等
 */
public class TeachMaterials {

    //教学资源表ID（主键）
    private String teachMaterialsId;
    //资源文件名称
    private String fileName;
    //课程类别
    private String courseType;
    //资料分类
    private String category;
    //资料上传者
    private String uploader;
    //文件映射路径
    private String fileMap;
    //创建时间
    private Date createTime;
    //更新时间
    private Date updateTime;
    //有效性（1为有效/在用，0为失效/删除）
    private Integer validity;

    public String getTeachMaterialsId() {
        return teachMaterialsId;
    }

    public void setTeachMaterialsId(String teachMaterialsId) {
        this.teachMaterialsId = teachMaterialsId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getUploader() {
        return uploader;
    }

    public void setUploader(String uploader) {
        this.uploader = uploader;
    }

    public String getFileMap() {
        return fileMap;
    }

    public void setFileMap(String fileMap) {
        this.fileMap = fileMap;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getValidity() {
        return validity;
    }

    public void setValidity(Integer validity) {
        this.validity = validity;
    }
}
