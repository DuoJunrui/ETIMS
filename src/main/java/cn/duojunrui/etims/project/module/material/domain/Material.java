package cn.duojunrui.etims.project.module.material.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;

/**
 * 教学资源表 mod_material
 *
 * @author Duojunrui
 * @date 2019-04-29
 */
public class Material extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 教学资源表ID主键
     */
    private Integer materialId;
    /**
     * 课程类别（如计算机组成原理）
     */
    private String course;
    /**
     * 资料分类（教学课件、实验指导书、试题等）
     */
    private String category;
    /**
     * 资料文件名称
     */
    private String fileName;
    /**
     * 资料上传者
     */
    private String uploader;
    /**
     * 文件大小
     */
    private String fileSize;
    /**
     * 文件类型（doc、zip、ppt）
     */
    private String fileType;
    /**
     * 下载次数
     */
    private String downloadCount;
    /**
     * 文件磁盘路径
     */
    private String filePath;
    /**
     * 删除标志（0代表存在 1代表删除）
     */
    private String delFlag;

    public void setMaterialId(Integer materialId) {
        this.materialId = materialId;
    }

    public Integer getMaterialId() {
        return materialId;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getCourse() {
        return course;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCategory() {
        return category;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setUploader(String uploader) {
        this.uploader = uploader;
    }

    public String getUploader() {
        return uploader;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public String getFileSize() {
        return fileSize;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public String getFileType() {
        return fileType;
    }

    public void setDownloadCount(String downloadCount) {
        this.downloadCount = downloadCount;
    }

    public String getDownloadCount() {
        return downloadCount;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("materialId", getMaterialId())
                .append("course", getCourse())
                .append("category", getCategory())
                .append("fileName", getFileName())
                .append("uploader", getUploader())
                .append("fileSize", getFileSize())
                .append("fileType", getFileType())
                .append("downloadCount", getDownloadCount())
                .append("filePath", getFilePath())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
