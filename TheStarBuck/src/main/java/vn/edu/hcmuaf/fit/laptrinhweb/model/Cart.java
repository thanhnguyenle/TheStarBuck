package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Cart extends AbsModifierCommon{
	private String id;
	private String idUser;
	private String idSession;
	private String token;
	private String status;
	private String note;
	private boolean active;
	public Cart(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id, String idUser,
			String idSession, String token, String status, String note, boolean active) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.idUser = idUser;
		this.idSession = idSession;
		this.token = token;
		this.status = status;
		this.note = note;
		this.active = active;
	}
	
	
}
