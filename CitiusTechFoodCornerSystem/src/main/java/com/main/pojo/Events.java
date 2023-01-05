package com.main.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EventDetails")
public class Events {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int event_id;
	private String event_name;
	private String event_date;
	private String offer_desc;
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getEvent_date() {
		return event_date;
	}
	public void setEvent_date(String event_date) {
		this.event_date = event_date;
	}
	public String getOffer_desc() {
		return offer_desc;
	}
	public void setOffer_desc(String offer_desc) {
		this.offer_desc = offer_desc;
	}
	@Override
	public String toString() {
		return "Events [event_id=" + event_id + ", event_name=" + event_name + ", event_date=" + event_date
				+ ", offer_desc=" + offer_desc + "]";
	}
	public Events(int event_id, String event_name, String event_date, String offer_desc) {
		super();
		this.event_id = event_id;
		this.event_name = event_name;
		this.event_date = event_date;
		this.offer_desc = offer_desc;
	}
	public Events() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
