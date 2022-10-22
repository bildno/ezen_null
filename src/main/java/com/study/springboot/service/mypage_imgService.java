package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.Imypage_imgDao;
import com.study.springboot.dto.mypage_imgDto;

@Component
public class mypage_imgService {
	
	
	@Autowired
	private Imypage_imgDao imypage_imgDao;
	
	public int up_file_title(String mypage_img_member_id,String mypage_img) {
		
		int result = 0;
		
		mypage_imgDto dto = new mypage_imgDto();
		dto.setMypage_img_member_id(mypage_img_member_id);
		dto.setMypage_img(mypage_img);
		
		result = imypage_imgDao.up_file_title(dto);
		
		return result;
	}
	
	
	public List<mypage_imgDto> view_file_title(String mypage_img_member_id) {
		
		List<mypage_imgDto> sel_myimg = imypage_imgDao.view_file_title(mypage_img_member_id);
		
		return sel_myimg;
		
	}
	
	
	
	public int delete_file(String mypage_img_member_id) {
		
		int delete = imypage_imgDao.delete_file(mypage_img_member_id);
		
		return delete;
		
	}
	
	
	
	
	
}
