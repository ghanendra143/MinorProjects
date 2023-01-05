package com.main.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Customer_Feeback_Records")
public class Feedback {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
	private int Feedback_id;
	private String Customer_name;
	private int Service_rating;
    private int Quality_rating;
    private int Hospitality_rating;
    private String Suggestions;
	public String getCustomer_name() {
		return Customer_name;
	}
	public void setCustomer_name(String customer_name) {
		Customer_name = customer_name;
	}
	public int getService_rating() {
		return Service_rating;
	}
	public void setService_rating(int service_rating) {
		Service_rating = service_rating;
	}
	public int getQuality_rating() {
		return Quality_rating;
	}
	public void setQuality_rating(int quality_rating) {
		Quality_rating = quality_rating;
	}
	public int getHospitality_rating() {
		return Hospitality_rating;
	}
	public void setHospitality_rating(int hospitality_rating) {
		Hospitality_rating = hospitality_rating;
	}
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getSuggestions() {
		return Suggestions;
	}
	public void setSuggestions(String suggestions) {
		Suggestions = suggestions;
	}
	public Feedback(String customer_name, int service_rating, int quality_rating, int hospitality_rating,
			String suggestions) {
		super();
		Customer_name = customer_name;
		Service_rating = service_rating;
		Quality_rating = quality_rating;
		Hospitality_rating = hospitality_rating;
		Suggestions = suggestions;
	}
	@Override
	public String toString() {
		return "Feedback [Customer_name=" + Customer_name + ", Service_rating=" + Service_rating + ", Quality_rating="
				+ Quality_rating + ", Hospitality_rating=" + Hospitality_rating + ", Suggestions=" + Suggestions + "]";
	}
}
