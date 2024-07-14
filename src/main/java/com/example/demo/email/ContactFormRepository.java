package com.example.demo.email;

import org.springframework.data.jpa.repository.JpaRepository;




public interface ContactFormRepository extends JpaRepository<ContactForm, Long> {
   
}

