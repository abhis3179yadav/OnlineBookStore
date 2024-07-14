package com.example.demo.bookdetails;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service("Book_Service")
public class BookService {
  
	@Autowired
	BookRepo bookRepo;
	
	public void savebook(Book p) {
		
		bookRepo.saveAndFlush(p);
	}
	public List<Book> displaybook()
	{
		return bookRepo.findAll();
	}
	
	public void deletebookbyid(int id) {
		
		bookRepo.deleteById(id);
	}
	public Book FindbookByid(int id) {
		return bookRepo.getById(id);
	}
	public void updatebook(Book p) {
		bookRepo.saveAndFlush(p);
	}
	@SuppressWarnings("deprecation") 
	public Book FindbyProductIdRemove(int em1) {
			  
			  return bookRepo.findAll().stream().filter((m)->m.getStock_Unit() >
			  0).collect(Collectors.toList()).get(0);
			  
			  }
    public void updatestock(int stock_unit, int book_id) throws SQLException {
		
		
    	bookRepo.stockupdate(stock_unit,book_id);
	}
}
