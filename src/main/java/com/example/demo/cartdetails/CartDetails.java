package com.example.demo.cartdetails;

import java.util.Comparator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cartdetails")
public class CartDetails {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="book_no") 
	public int book_no;
	@Column(name="book_name") 
	public String book_name;
	@Column(name="unit") 
	public int unit;
	@Column(name="amount")
	public long amount;
	@Column(name="added_by_user")
	public String AddedByUser;
	@Column(name="book_img")
	public String book_img;
	public int getBook_no() {
		return book_no;
	}
	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public int getUnit() {
		return unit;
	}
	public void setUnit(int unit) {
		this.unit = unit;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public String getAddedByUser() {
		return AddedByUser;
	}
	public void setAddedByUser(String addedByUser) {
		AddedByUser = addedByUser;
	}
	public String getBook_img() {
		return book_img;
	}
	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}
	
	
	

}
