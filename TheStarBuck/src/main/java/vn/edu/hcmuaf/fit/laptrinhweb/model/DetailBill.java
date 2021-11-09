package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.sql.Date;

public class DetailBill extends AbsModifierCommon{
	private String id;
	private String idBill;
	private String idProduct;
	private Date orderDate;
	private Date deliveryDate;
	private String status;
	private String address;
	private String deliver;
	private boolean active;
	public DetailBill(Date createdDate, String createdBy, Date modifiedDate, String modifiedBy, String id,
			String idBill, String idProduct, Date orderDate, Date deliveryDate, String status, String address,
			String deliver, boolean active) {
		super(createdDate, createdBy, modifiedDate, modifiedBy);
		this.id = id;
		this.idBill = idBill;
		this.idProduct = idProduct;
		this.orderDate = orderDate;
		this.deliveryDate = deliveryDate;
		this.status = status;
		this.address = address;
		this.deliver = deliver;
		this.active = active;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIdBill() {
		return idBill;
	}
	public void setIdBill(String idBill) {
		this.idBill = idBill;
	}
	public String getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(String idProduct) {
		this.idProduct = idProduct;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
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
	public String getDeliver() {
		return deliver;
	}
	public void setDeliver(String deliver) {
		this.deliver = deliver;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
}
