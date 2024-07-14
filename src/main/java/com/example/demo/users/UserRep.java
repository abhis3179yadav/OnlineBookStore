package com.example.demo.users;

import java.sql.SQLException;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



@Repository
@EnableJpaRepositories
public interface UserRep extends JpaRepository<Users, Integer> {
	
	@Transactional
	@Modifying
    @Query(value = "UPDATE users SET password = :password WHERE e_mail = :email", nativeQuery = true)
    void updatePassword(@Param("password") String password, @Param("email") String email);
}
