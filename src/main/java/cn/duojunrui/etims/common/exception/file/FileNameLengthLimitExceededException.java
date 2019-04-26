package cn.duojunrui.etims.common.exception.file;

/**
 * 文件名称超长限制异常类
 *
 * @className: FileNameLengthLimitExceededException
 * @author: Duojunrui
 * @date: 2019-04-19 18:01
 */

public class FileNameLengthLimitExceededException extends FileException {
    private static final long serialVersionUID = 1L;

    public FileNameLengthLimitExceededException(int defaultFileNameLength) {
        super("upload.filename.exceed.length" , new Object[]{defaultFileNameLength});
    }
}
