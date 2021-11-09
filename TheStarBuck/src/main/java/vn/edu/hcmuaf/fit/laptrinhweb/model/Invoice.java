package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class Invoice extends AbsModifierCommon{
	private String id;
	private String idProduct;
	private String status;
	private double total;
	public Invoice(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id,
			String idProduct, String status, double total) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.idProduct = idProduct;
		this.status = status;
		this.total = total;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	
}
