package vn.edu.hcmuaf.fit.laptrinhweb.model;

import java.io.Serializable;

public class Article extends AbsModel  implements Serializable {
	private String id;
	private String name;
	private String description;
	private String content;
	private boolean active;
	private String productId;
	private String adminId;
	private String descriptionSeo;
	private String titleSeo;
	private String avatar;
	private int view;
	private boolean hot;

	public Article() {
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getDescriptionSeo() {
		return descriptionSeo;
	}

	public void setDescriptionSeo(String descriptionSeo) {
		this.descriptionSeo = descriptionSeo;
	}

	public String getTitleSeo() {
		return titleSeo;
	}

	public void setTitleSeo(String titleSeo) {
		this.titleSeo = titleSeo;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public boolean isHot() {
		return hot;
	}

	public void setHot(boolean hot) {
		this.hot = hot;
	}
}
