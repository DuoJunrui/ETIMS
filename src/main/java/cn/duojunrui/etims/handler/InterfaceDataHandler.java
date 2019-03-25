package cn.duojunrui.etims.handler;

/**
 * 接口返回数据处理
 * JSON接口返回参数统一配置
 */
public class InterfaceDataHandler {

    //一般性错误
    public final static String FAILED = "0";
    //正常、成功
    public final static String SUCCESSFUL = "1";
    //授权、权限错误
    public final static String UNAUTHORIZED = "2";
    //操作错误
    public final static String INVALID = "3";
    //已存在
    public final static String EXISTS = "4";
    //不存在
    public final static String NOTEXISTS = "5";
    //已过期
    public final static String EXPIRED = "6";
    //内容有误
    public final static String CONTENTINVALID = "7";
    //订单为完成
    public final static String ORDERNOTCOMPLETED = "8";

    public static class InterfaceFormatResult {
        public InterfaceFormatResult(){}

        //请求处理是否成功
        public boolean succeed = false;
        //处理信息说明
        public String statusMessage = "";
        //请求结果对象
        public Object result = null;
        //请求结果状态
        public String status = "0";

        public boolean isSucceed() {
            return succeed;
        }

        public void setSucceed(boolean succeed) {
            this.succeed = succeed;
        }

        public String getStatusMessage() {
            return statusMessage;
        }

        public void setStatusMessage(String statusMessage) {
            this.statusMessage = statusMessage;
        }

        public Object getResult() {
            return result;
        }

        public void setResult(Object result) {
            this.result = result;
        }

        public String getStatus() {
            return status;
        }

        public void setStatus(String status) {
            this.status = status;
        }
    }

}
