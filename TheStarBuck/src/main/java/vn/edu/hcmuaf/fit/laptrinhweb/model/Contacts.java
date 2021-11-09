package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Contacts extends AbsModifierCommon{
	private String id;
	private String idUser;
	private String locate;
	private String email;
	private String phone;
	private String message;
	private boolean active;
	public Contacts(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id, String idUser,
			String locate, String email, String phone, String message, boolean active) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.idUser = idUser;
		this.locate = locate;
		this.email = email;
		this.phone = phone;
		this.message = message;
		this.active = active;
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
	public String getLocate() {
		return locate;
	}
	public void setLocate(String locate) {
		this.locate = locate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
}
