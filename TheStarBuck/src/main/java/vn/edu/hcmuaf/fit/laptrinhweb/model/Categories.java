package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Categories extends AbsModifierCommon{
	private String id;
	private String name;
	private String icon;
	private String avatar;
	private String idAd;
	private boolean active;
	
	public Categories(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id, String name,
			String icon, String avatar, String idAd, boolean active) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.name = name;
		this.icon = icon;
		this.avatar = avatar;
		this.idAd = idAd;
		this.active = active;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getIdAd() {
		return idAd;
	}
	public void setIdAd(String idAd) {
		this.idAd = idAd;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
}
