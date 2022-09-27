package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IfaqDao;
import com.study.springboot.dto.faqDto;

@Component
public class faqService {

	@Autowired
	private IfaqDao ifaqDao;

	public List<faqDto> faq() {

		List<faqDto> faq = ifaqDao.faq();

		return faq;
	}

	public List<faqDto> ad_FAQ_update(String faq_number) {

		List<faqDto> ad_FAQ_update = ifaqDao.ad_FAQ_update(faq_number);

		return ad_FAQ_update;
	}

	public int ad_FAQ_write(faqDto dto) {

		int result = ifaqDao.ad_FAQ_write(dto);

		return result;
	}

}
