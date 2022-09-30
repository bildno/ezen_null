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

	/* faq 리스트 */
	public List<faqDto> faq() {

		List<faqDto> faq = ifaqDao.faq();

		return faq;
	}

	/* faq 상세보기 select */
	public List<faqDto> ad_FAQ_info(String faq_number) {

		List<faqDto> ad_FAQ_info = ifaqDao.ad_FAQ_info(faq_number);

		return ad_FAQ_info;
	}

	/* faq 작성하기 insert */
	public int ad_FAQ_write(faqDto dto) {

		int result = ifaqDao.ad_FAQ_write(dto);

		return result;
	}
	
	/* faq 삭제하기 */
	public int ad_FAQ_delete(String faq_number) {
		
		int result = ifaqDao.ad_FAQ_delete(faq_number);
		
		return result;
	}
	
	/* faq 수정하기 */
	public int ad_FAQ_update(String faq_number, String faq_title, String faq_content) {
		
		int ad_FAQ_update = ifaqDao.ad_FAQ_update(faq_number, faq_title, faq_content);
		
		return ad_FAQ_update;
	}
	
	/* faq 검색 */
	public List<faqDto> faq_search(String search_type, String search_contents) {
		
		List<faqDto> faq_search = ifaqDao.faq_search(search_type, search_contents);
		
		return faq_search;
	}
	


}
