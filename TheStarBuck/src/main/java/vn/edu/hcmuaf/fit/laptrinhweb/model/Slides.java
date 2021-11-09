package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Slides extends AbsModifierCommon {
	private String id;
	private String image;
	private String note;
	private boolean active;
	
	public Slides(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id, String image,
			String note, boolean active) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.image = image;
		this.note = note;
		this.active = active;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
}
