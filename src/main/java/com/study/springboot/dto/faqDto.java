package com.study.springboot.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class faqDto {
	
	private String faq_number;
	private String faq_title;
	private String faq_content;
	private String faq_contents_number;
	private Date faq_date;
	
}
