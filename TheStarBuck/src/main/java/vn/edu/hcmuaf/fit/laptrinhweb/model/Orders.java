package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Orders extends AbsModifierCommon{
	private String id;
	private String idUser;
	private String idSession;
	private String token;
	private String status;
	private String address;
	private double subTotal;
	private double itemDiscount;
	private double tax;
	private double shipping;
	private double total;
	private double discount;
	private double grandTotal;
	private String promo;
	private String note;
	public Orders(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id, String idUser,
			String idSession, String token, String status, String address, double subTotal, double itemDiscount,
			double tax, double shipping, double total, double discount, double grandTotal, String promo, String note) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.idUser = idUser;
		this.idSession = idSession;
		this.token = token;
		this.status = status;
		this.address = address;
		this.subTotal = subTotal;
		this.itemDiscount = itemDiscount;
		this.tax = tax;
		this.shipping = shipping;
		this.total = total;
		this.discount = discount;
		this.grandTotal = grandTotal;
		this.promo = promo;
		this.note = note;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}
	public double getItemDiscount() {
		return itemDiscount;
	}
	public void setItemDiscount(double itemDiscount) {
		this.itemDiscount = itemDiscount;
	}
	public double getTax() {
		return tax;
	}
	public void setTax(double tax) {
		this.tax = tax;
	}
	public double getShipping() {
		return shipping;
	}
	public void setShipping(double shipping) {
		this.shipping = shipping;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	public String getPromo() {
		return promo;
	}
	public void setPromo(String promo) {
		this.promo = promo;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
}
