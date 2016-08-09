package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Product {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) 
	private int productid;
	@Column
	private String productname;
	@Column
	private int productquantity;
	@Column
	private  String productdescription;
	public Product(){}
	public Product(int productproductid, String productname, int productquantity,
			String poductdescription) {
		super();
		this.productid = productproductid;
		this.productname = productname;
		this.productquantity = productquantity;
		this.productdescription = productdescription;
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
	public int getProductquantity() {
		return productquantity;
	}
	public void setProductquantity(int productquantity) {
		this.productquantity = productquantity;
	}
	public String getProductdescription() {
		return productdescription;
	}
	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}
	
	
}
