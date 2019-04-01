package cn.duojunrui.etims.entity;

/**
 * http请求返回的最外层对象
 * @param <T>
 */
public class Result<T> {

    //错误代码
    private Integer code;
    //提示信息
    private String message;
    //封装的数据内容
    private T data;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
