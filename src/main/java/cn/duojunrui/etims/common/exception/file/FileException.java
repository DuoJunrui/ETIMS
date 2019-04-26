package cn.duojunrui.etims.common.exception.file;

import cn.duojunrui.etims.common.exception.base.BaseException;

/**
 * 文件信息异常类
 *
 * @className: FileException
 * @author: Duojunrui
 * @date: 2019-04-19 18:00
 */

public class FileException extends BaseException {
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args) {
        super("file" , code, args, null);
    }

}
