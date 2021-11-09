package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public abstract class AbsModifierCommon {
	protected Date createdDate;
	protected String createdBy;
	protected Date modifiedDate;
	protected String modifiedBy;
	public AbsModifierCommon(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy) {
		super();
		this.createdDate = createdDate;
		this.createdBy = createdBy;
		this.modifiedDate = modifiedDate;
		this.modifiedBy = modifiedBy;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	
}
