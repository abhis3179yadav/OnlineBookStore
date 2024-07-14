package com.example.demo.users;

import java.sql.SQLException;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("User_Services")
public class UserServices {
	@Autowired
	UserRep user_rep;
	
	
	public void saveusers(Users u) {
		user_rep.saveAndFlush(u);
	}
	
	@SuppressWarnings("deprecation")
	public Users login(String em) {
		
		return user_rep.findAll().stream().filter((m)->m.getE_mail().equals(em)).collect(Collectors.toList()).get(0);
	}
	
	public void updatepassword(String em, String p){
		
		String email=em;
		String password=p;
		
		user_rep.updatePassword(email, password);
	}

	

}
