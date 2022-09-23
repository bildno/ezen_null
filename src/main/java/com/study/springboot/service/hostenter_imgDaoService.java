package com.study.springboot.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.Ihostenter_imgDao;
import com.study.springboot.dto.hostenter_imgDto;

@Component
public class hostenter_imgDaoService {

	@Autowired
	private Ihostenter_imgDao ihostenter_imgDao;
	
	public int hostenter_img_up(String hostenter_img_name,String hostenter_member_id,String hostenter_img) {
		int result  = 0;
		
		hostenter_imgDto dto = new hostenter_imgDto();
		dto.setHostenter_img_name(hostenter_img_name);
		dto.setHostenter_member_id(hostenter_member_id);
		dto.setHostenter_img(hostenter_img);
		
		
		
		result = ihostenter_imgDao.hostenter_img_up(dto);
		
		return result;
	}
	
	
	
}
