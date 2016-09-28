package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@JsonIgnore
	private int productid;
	@NotEmpty(message="Name is Mandatory")
	private String productname;
	@NotNull(message="Quantity is needed")
	private Integer productquantity;
	@NotEmpty(message="Description is needed")
	private String productdescription;
	@NotEmpty(message="Category is mandatory")
	private String category;
	@NotNull(message="Price is needed")
	@Min(value = 1)
	private Integer productprice;
	@NotEmpty(message="Image name is Mandatory")
	private String imagename;
	@Transient
	private  MultipartFile image;
	@NotNull(message="discount is needed minimum 5%")
	private Integer discount;
	private Integer discountPrice;
	private Boolean status;
	
	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public Integer getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(Integer discountPrice) {
		this.discountPrice = discountPrice;
	}

	public String getImagename() {
		return imagename;
	}

	public void setImagename(String imagename) {
		this.imagename = imagename;
	}

	public Integer getProductprice() {
		return productprice;
	}

	public void setProductprice(Integer productprice) {
		this.productprice = productprice;
	}

	public MultipartFile getImage() {
		return image;
		
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getproductid() {
		return productid;
	}

	public void setproductid(int productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public Integer getProductquantity() {
		return productquantity;
	}

	public void setProductquantity(Integer productquantity) {
		this.productquantity = productquantity;
	}

	public String getProductdescription() {
		return productdescription;
	}

	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}

}
