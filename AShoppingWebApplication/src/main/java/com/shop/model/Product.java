package com.shop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product_details")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int prod_id;
	private String prod_type;
	private String prod_name;
	private int prod_price;
	private String prod_brand;
	
	public int getProd_id() {
		return prod_id;
	}
	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}
	public String getProd_type() {
		return prod_type;
	}
	public void setProd_type(String prod_type) {
		this.prod_type = prod_type;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public String getProd_brand() {
		return prod_brand;
	}
	public void setProd_brand(String prod_brand) {
		this.prod_brand = prod_brand;
	}
	
	public Product(int prod_id, String prod_type, String prod_name, int prod_price, String prod_brand) {
		super();
		this.prod_id = prod_id;
		this.prod_type = prod_type;
		this.prod_name = prod_name;
		this.prod_price = prod_price;
		this.prod_brand = prod_brand;
	}
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Product [prod_id=" + prod_id + ", prod_type=" + prod_type + ", prod_name=" + prod_name + ", prod_price="
				+ prod_price + ", prod_brand=" + prod_brand + "]";
	}
}
