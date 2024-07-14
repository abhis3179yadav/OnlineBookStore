package com.example.demo.bookdetails;

import java.sql.SQLException;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableJpaRepositories
public interface BookRepo extends JpaRepository<Book ,Integer>{
	@Modifying
	@Transactional
	@Query(value= "{call stockupdate(:stock_unit,:book_id)}",nativeQuery=true)
	 public void stockupdate(@Param("stock_unit")int balance_unit,@Param("book_id")int book_id) throws SQLException ;

	
}
