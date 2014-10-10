package hyh.auth.model;

public class CustomerInfo {
	private String cstNo;
	private String cstName;
	private String cstDesc;
	private String fax;
	private String phone;

	public String getCstNo() {
		return cstNo;
	}

	public void setCstNo(String cstNo) {
		this.cstNo = cstNo;
	}

	public String getCstName() {
		return cstName;
	}

	public void setCstName(String cstName) {
		this.cstName = cstName;
	}

	public String getCstDesc() {
		return cstDesc;
	}

	public void setCstDesc(String cstDesc) {
		this.cstDesc = cstDesc;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
