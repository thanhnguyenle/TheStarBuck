package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Transactions extends AbsModifierCommon{
	private String id;
	private String idUser;
	private String idOrder;
	private String code;
	private String type;
	private String mode;
	private String status;
	private String note;
	public Transactions(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id,
			String idUser, String idOrder, String code, String type, String mode, String status, String note) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.idUser = idUser;
		this.idOrder = idOrder;
		this.code = code;
		this.type = type;
		this.mode = mode;
		this.status = status;
		this.note = note;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIdUser() {
		return idUser;
	}
	public void setIdUser(String idUser) {
		this.idUser = idUser;
	}
	public String getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
}
