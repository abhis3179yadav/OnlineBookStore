package com.example.demo.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import com.example.demo.categories.Category;
import com.example.demo.users.Users;

import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactController {

	@Autowired ContactServ ContactServ;
	
	@Autowired
	private JavaMailSender emailSender;

	
	@GetMapping("/Contact")
	public String GetContact(Model m) {

		m.addAttribute("contactForm", new ContactForm());
		return "contact";

	}
	
	
	@PostMapping("/SaveConatct")
	public String register(Model m, @Validated ContactForm c, BindingResult r) {
	    ContactServ.SaveConatct(c); 
	    
	 m.addAttribute("updateSuccessFul", true);
	 try {
         sendEmailNotification(c);
         m.addAttribute("updateSuccessful", true);
     } catch (MessagingException e) {
         // Handle email sending failure
         m.addAttribute("emailError", true);
     }
		
	return "contact";
}
	@GetMapping("/contactDetails")
	public String ConatctDetails(Model m) {
		
		m.addAttribute("contact",ContactServ.DisplayContact());
		return "ManageContact";
	}
	
	@GetMapping("/admin/contact/delete/{id}")
	public String deleteProduct(@PathVariable("id") long id, Model m) {

		ContactServ.deletecategory(id);
		
		m.addAttribute("contactForm", new ContactForm());
		m.addAttribute("contact", ContactServ.DisplayContact());
		

		return "ManageContact";
	}
	
	
	private void sendEmailNotification(ContactForm contactForm) throws MessagingException {
        MimeMessage message = emailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        helper.setFrom("ay1996465@gmail.com");
        helper.setTo(contactForm.getEmail());
        helper.setSubject("New Contact Form Submission");

        // Prepare the HTML content using Thymeleaf template
        String htmlContent = "<p><strong>Name:</strong> " + contactForm.getName() + "</p>"
                            + "<p><strong>Email:</strong> " + contactForm.getEmail() + "</p>"
                            + "<p><strong>Phone Number:</strong> " + contactForm.getPhoneNumber() + "</p>"
                            + "<p><strong>Message:</strong><br>" + contactForm.getMessage() + "</p>";

        helper.setText(htmlContent, true);

        emailSender.send(message);
    }

}
