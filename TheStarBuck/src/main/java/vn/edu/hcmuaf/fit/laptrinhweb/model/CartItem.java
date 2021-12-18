package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.io.Serializable;
import java.sql.Date;

public class CartItem extends AbsModel  implements Serializable {
	private String id;
	private String idProduct;
	private String idCart;
	private double discount;
	private int quantify;
	private boolean active;

	public CartItem() {
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
