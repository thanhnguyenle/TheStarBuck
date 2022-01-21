package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cart extends AbsModel  implements Serializable {
	private static  Cart instance;
	private String id;
	private String idAccount;
	private String idSession;
	private String token;
	private String status;
	private String note;
	private boolean active;
	private List<CartItem> cartItemList;
	private final Map<String, Product> productList;
	private Cart() {
		productList = new HashMap<>();
	}
	public static  Cart getInstance(){
		if(instance == null){
			instance = new Cart();
		}
		return instance;
	}
	public List<CartItem> getCartItemList() {
		return cartItemList;
	}

	public void setCartItemList(List<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}

	//put product to cart
	public void putProduct(Product product){
		productList.put(product.getId(), product);
	}

	//update quantity of product by id
	public void updateQuantity(String id, int quantity){
		Product product = productList.get(id);
		product.setQuantitySold(quantity);
	}

	//get product from cart by id
	public Product getProduct(String id){
		return productList.get(id);
	}

	//remove product from cart by id
	public Product removeProduct(String id){
		return productList.remove(id);
	}

	//get sub total price of cart
	public double getSubTotalPrice(){
		double output = 0;
		for (Product pro: productList.values()) {
			output += pro.getTotalPrice();
		}
		return output;
	}

	//get total price of cart
	public double getTotalPrice(){
		double output = this.getSubTotalPrice() + this.getSubTotalPrice() * 0.01;
		return output ;
	}

	//get total quantity of cart
	public int getTotalQuantity(){
		int output = 0;
		for (Product pro: productList.values()) {
			output = pro.getQuantitySold();
		}
		return output;
	}

	//get list of product
	public Collection<Product> getProductList(){
		return productList.values();
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
