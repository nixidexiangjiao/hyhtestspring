package hyh.auth.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "auth_customer_info")
public class CustomerInfo {
	private String cstNo;
	private String cstName;
	private String cstDesc;
	private String fax;
	private String phone;

	@Id
	@Column(name = "cst_no", nullable = false)
	public String getCstNo() {
		return cstNo;
	}

	public void setCstNo(String cstNo) {
		this.cstNo = cstNo;
	}

	@Column(name = "cst_name", nullable = false)
	public String getCstName() {
		return cstName;
	}

	public void setCstName(String cstName) {
		this.cstName = cstName;
	}

	@Column(name = "cst_desc")
	public String getCstDesc() {
		return cstDesc;
	}

	public void setCstDesc(String cstDesc) {
		this.cstDesc = cstDesc;
	}

	@Column(name = "fax")
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name = "phone")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
