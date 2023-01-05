package com.main.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="FoodDetails")
public class Food {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int food_id;
	private String food_name;
	private double food_price;
	private String food_desc;
	private String food_category;
	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public double getFood_price() {
		return food_price;
	}
	public void setFood_price(double food_price) {
		this.food_price = food_price;
	}
	public String getFood_desc() {
		return food_desc;
	}
	public void setFood_desc(String food_desc) {
		this.food_desc = food_desc;
	}
	public String getFood_category() {
		return food_category;
	}
	public void setFood_category(String food_category) {
		this.food_category = food_category;
	}
	public Food() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Food(int food_id, String food_name, double food_price, String food_desc, String food_category) {
		super();
		this.food_id = food_id;
		this.food_name = food_name;
		this.food_price = food_price;
		this.food_desc = food_desc;
		this.food_category = food_category;
	}
	@Override
	public String toString() {
		return "Food [food_id=" + food_id + ", food_name=" + food_name + ", food_price=" + food_price + ", food_desc="
				+ food_desc + ", food_category=" + food_category + "]";
	}
	
	
	
	
}
