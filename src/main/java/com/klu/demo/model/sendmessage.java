package com.klu.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sdpsm")
public class sendmessage {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long sno;
	@Column(name="valueTo") 
	private String to;
	 @Column(name="valueFrom") 
	private String from;
	 @Column(name="valuemsg") 
	private String message;
	 @Column(name="valuedate") 
	private String date;
	 @Column(name="valuedtime") 
	private String time;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
