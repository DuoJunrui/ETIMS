package cn.duojunrui.etims.oa.domain;

/**
 * TODO
 *
 * @className: Response
 * @author: Duojunrui
 * @date: 2019-04-16 19:04
 */

public class Response {
    public void setResponseMessage(String responseMessage) {
        this.responseMessage = responseMessage;
    }

    private String responseMessage;

    public Response(String responseMessage) {
        this.responseMessage = responseMessage;
    }

    public String getResponseMessage() {
        return responseMessage;
    }
}