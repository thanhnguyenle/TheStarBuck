package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Cart extends AbsModel  implements Serializable {
	private String id;
	private String idAccount;
	private String idSession;
	private String token;
	private String status;
	private String note;
	private boolean active;
	private List<CartItem> cartItemList;
	public Cart() {
	}
	public List<CartItem> getCartItemList() {
		return cartItemList;
	}

	public void setCartItemList(List<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIdAccount() {
		return idAccount;
	}

	public void setIdAccount(String idAccount) {
		this.idAccount = idAccount;
	}

	public String getIdSession() {
		return idSession;
	}

	public void setIdSession(String idSession) {
		this.idSession = idSession;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
