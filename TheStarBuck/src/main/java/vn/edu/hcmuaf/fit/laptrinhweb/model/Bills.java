package vn.edu.hcmuaf.fit.laptrinhweb.model;

public class Bills {
	private String id;
	private String idUser;
	private String idOrder;
	private String detail;
	private double amount;
	private boolean active;
	public Bills(String id, String idUser, String idOrder, String detail, double amount, boolean active) {
		super();
		this.id = id;
		this.idUser = idUser;
		this.idOrder = idOrder;
		this.detail = detail;
		this.amount = amount;
		this.active = active;
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
	public String getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
}
