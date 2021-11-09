package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Images extends AbsModifierCommon{
	private String id;
	private String link;
	private boolean active;
	public Images(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id, String link,
			boolean active) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.link = link;
		this.active = active;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
}
