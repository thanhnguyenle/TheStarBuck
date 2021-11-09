package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class CartItem extends AbsModifierCommon{
	private String id;
	private String idProduct;
	private String idCart;
	private double price;
	private double discount;
	private int quantify;
	private boolean active;
	public CartItem(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id,
			String idProduct, String idCart, double price, double discount, int quantify, boolean active) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.idProduct = idProduct;
		this.idCart = idCart;
		this.price = price;
		this.discount = discount;
		this.quantify = quantify;
		this.active = active;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(String idProduct) {
		this.idProduct = idProduct;
	}
	public String getIdCart() {
		return idCart;
	}
	public void setIdCart(String idCart) {
		this.idCart = idCart;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public int getQuantify() {
		return quantify;
	}
	public void setQuantify(int quantify) {
		this.quantify = quantify;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
}
