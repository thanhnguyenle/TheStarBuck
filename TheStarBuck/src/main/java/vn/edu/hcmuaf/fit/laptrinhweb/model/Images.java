package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Images extends AbsModel {
	private String id;
	private String link;
	private boolean active;

	public Images() {
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
