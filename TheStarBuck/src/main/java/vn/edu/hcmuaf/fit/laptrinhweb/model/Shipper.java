package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Shipper extends AbsModel {
	private String id;
	private String idOrder;
	private double price;
	private double discount;
	private int quantify;
	private String note;

	public Shipper() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
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

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
}
