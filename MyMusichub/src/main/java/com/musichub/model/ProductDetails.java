package com.musichub.model;

import java.io.Serializable;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class ProductDetails {
	
	@Id
	int productId;
	
	@NotEmpty(message="Product name field is mandatory.")
	String productName;
	
	@NotNull(message="Product price field is mandatory.")
	float productprice;
	
	@NotEmpty(message="manufacturer feild is mandatory.")
	String manufacturer;
	
	/*public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}*/
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public MultipartFile getImgFile() {
		return imgFile;
	}
	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}
	/*@Transient
	private String img;*/
	
	@NotEmpty(message="Type feild is mandatory")
	private String type;
	
	private transient MultipartFile imgFile;

	
	
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public float getProductprice() {
		return productprice;
	}
	public void setProductprice(float productprice) {
		this.productprice = productprice;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	
}
