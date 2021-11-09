package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class FeedBack extends AbsModifierCommon{
	private String id;
	private String idUser;
	private String content;
	private boolean status;
	public FeedBack(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id, String idUser,
			String content, boolean status) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.idUser = idUser;
		this.content = content;
		this.status = status;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	

}
