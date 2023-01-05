package com.main.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CustomerRecords")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cust_id;
	private String Customer_Name;
	private String Customer_Address;
	private String Customer_Contact;
	public int getCust_id() {
		return cust_id;
	}
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
	public String getCustomer_Name() {
		return Customer_Name;
	}
	public void setCustomer_Name(String customer_Name) {
		Customer_Name = customer_Name;
	}
	public String getCustomer_Address() {
		return Customer_Address;
	}
	public void setCustomer_Address(String customer_Address) {
		Customer_Address = customer_Address;
	}
	public String getCustomer_Contact() {
		return Customer_Contact;
	}
	public void setCustomer_Contact(String customer_Contact) {
		Customer_Contact = customer_Contact;
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(int cust_id, String customer_Name, String customer_Address, String customer_Contact) {
		super();
		this.cust_id = cust_id;
		Customer_Name = customer_Name;
		Customer_Address = customer_Address;
		Customer_Contact = customer_Contact;
	}
	@Override
	public String toString() {
		return "Customer [cust_id=" + cust_id + ", Customer_Name=" + Customer_Name + ", Customer_Address="
				+ Customer_Address + ", Customer_Contact=" + Customer_Contact + "]";
	}
	
	
}
