package com.study.springboot.service;


import java.util.List;

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
	
	public List<hostenter_imgDto> hostenter_img_sel(String hostenter_img_name){
		
		List<hostenter_imgDto> img_list = ihostenter_imgDao.hostenter_img_sel(hostenter_img_name);
		
		
		return img_list;
	}
	
	public int hostenter_img_update(String hostenter_img, String hostenter_img_name) {
		int result = ihostenter_imgDao.hostenter_img_update(hostenter_img, hostenter_img_name);
		
		return result;
		
	}
	
	public int delete_img(String hostenter_img_name) {
		int result = ihostenter_imgDao.delete_img(hostenter_img_name);
		
		return result;
	}
	
	public List<hostenter_imgDto> img_sel(String hostenter_img_name) {
		List<hostenter_imgDto> img_list = ihostenter_imgDao.img_sel(hostenter_img_name);
		
		return img_list;
		
	}

}
