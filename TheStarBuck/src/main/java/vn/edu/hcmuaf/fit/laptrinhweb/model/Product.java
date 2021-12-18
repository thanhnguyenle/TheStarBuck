package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.io.Serializable;
import java.sql.Date;

public class Product extends AbsModel  implements Serializable {
	private String id;
	private String name;
	private String idCategory;
	private String ingredients;
	private double price;
	private double discount;
	private int quantity;
	private boolean active;
	private boolean hot;
	private int view;
	private String description;
	private String image;
	private String descriptionSeo;
	private String keywordSeo;
	private String titleSeo;
	private String note;

	public Product() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(String idCategory) {
		this.idCategory = idCategory;
	}

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public boolean isHot() {
		return hot;
	}

	public void setHot(boolean hot) {
		this.hot = hot;
	}

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescriptionSeo() {
		return descriptionSeo;
	}

	public void setDescriptionSeo(String descriptionSeo) {
		this.descriptionSeo = descriptionSeo;
	}

	public String getKeywordSeo() {
		return keywordSeo;
	}

	public void setKeywordSeo(String keywordSeo) {
		this.keywordSeo = keywordSeo;
	}

	public String getTitleSeo() {
		return titleSeo;
	}

	public void setTitleSeo(String titleSeo) {
		this.titleSeo = titleSeo;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
}
