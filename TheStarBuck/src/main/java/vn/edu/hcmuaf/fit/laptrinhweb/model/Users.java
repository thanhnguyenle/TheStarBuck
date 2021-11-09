package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Users extends AbsModifierCommon {
	private String id;
	private String name;
	private String phoneNumber;
	private String email;
	private Date emailVerifiedAt;
	private String password;
	private String avatar;
	private String address;
	private String aboutMe;
	private Date lastLogin;
	private boolean type;
	private boolean active;

	public Users(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id, String name,
			String phoneNumber, String email, Date emailVerifiedAt, String password, String avatar, String address,
			String aboutMe, Date lastLogin, boolean type, boolean active) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.emailVerifiedAt = emailVerifiedAt;
		this.password = password;
		this.avatar = avatar;
		this.address = address;
		this.aboutMe = aboutMe;
		this.lastLogin = lastLogin;
		this.type = type;
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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getEmailVerifiedAt() {
		return emailVerifiedAt;
	}

	public void setEmailVerifiedAt(Date emailVerifiedAt) {
		this.emailVerifiedAt = emailVerifiedAt;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAboutMe() {
		return aboutMe;
	}

	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

	public boolean isType() {
		return type;
	}

	public void setType(boolean type) {
		this.type = type;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
	
}
