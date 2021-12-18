package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.io.Serializable;
import java.sql.Date;

public class Icon extends AbsModel  implements Serializable {
	private String id;
	private String link;
	private boolean active;

	public Icon() {
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
