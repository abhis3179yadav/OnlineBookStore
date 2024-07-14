package com.example.demo.email;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactServ {

@Autowired ContactFormRepository ContactFormRepository;	

public void SaveConatct(ContactForm c) {
	
	ContactFormRepository.save(c);
}

public List<ContactForm> DisplayContact() {
	
	
	return ContactFormRepository.findAll();
	
	

}
public void deletecategory(long id) {
	
	ContactFormRepository.deleteById(id);
	
}

}
