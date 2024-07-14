package com.example.demo.bookdetails;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book_details")
public class Book {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="book_id")
	private int book_id;
	
	@Column(name="book_name")
	private String book_name;
	
	@Column(name="price")
	private int price;
	
	@Column(name="stock_unit")
	private int Stock_Unit;

	
	public int getStock_Unit() {
		return Stock_Unit;
	}
	public void setStock_Unit(int stock_Unit) {
		Stock_Unit = stock_Unit;
	}
	@Column(name="book_desc")
	private String book_desc;
	
	
	
	@Column(name="book_img")
	private String book_img;
	
	@Column(name="Category")
	private String Category;


	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBook_desc() {
		return book_desc;
	}
	public void setBook_desc(String book_desc) {
		this.book_desc = book_desc;
	}
	public String getBook_img() {
		return book_img;
	}
	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	} 
	
	
	

}
