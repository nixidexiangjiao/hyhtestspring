package hyh.auth.pagemodel;


public class Message {
	/**
	 * 错误码
	 */
	private String errCode;
	/**
	 * 错误消息文本
	 */
	private String errMessage;
	/**
	 * 数据
	 */
	private Object data;
	
	public Message() {
		this.errCode = "0";
		this.errMessage = "";
	}

	public Message(String errCode, String errMessage) {
		this.errCode = errCode;
		this.errMessage = errMessage;
	}
	
	public String getErrCode() {
		return errCode;
	}
	
	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}
	
	public String getErrMessage() {
		return errMessage;
	}
	
	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}

	public Object getData() {
		return data;
	}
	
	public void setData(Object data) {
		this.data = data;
	}
	
}
