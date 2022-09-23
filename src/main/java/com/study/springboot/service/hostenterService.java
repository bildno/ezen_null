package com.study.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IhostenterDao;
import com.study.springboot.dto.hostenterDto;

@Component
public class hostenterService {

	
	@Autowired
	private IhostenterDao ihostenterDao;
	
	public int insert_hostenter(
			String hostenter_contents_number, 
			String hostenter_name,
			String hostenter_description,
			String hostenter_caution,
			String hostenter_zipcode,
		    String hostenter_location, 
		    String hostenter_location_detail,
			String hostenter_price,
			String hostenter_member_id,
			String hostenter_bumber,
			String hostenter_headcount,
			String hostenter_onerow) {
		
		int result = 0;
		hostenterDto dto = new hostenterDto();
		dto.setHostenter_contents_number(hostenter_contents_number);
		dto.setHostenter_name(hostenter_name);
		dto.setHostenter_description(hostenter_description);
		dto.setHostenter_caution(hostenter_caution);
		dto.setHostenter_zipcode(hostenter_zipcode);
		dto.setHostenter_location(hostenter_location);
		dto.setHostenter_location_detail(hostenter_location_detail);
		dto.setHostenter_price(hostenter_price);
		dto.setHostenter_member_id(hostenter_member_id);
		dto.setHostenter_bnumber(hostenter_bumber);
		dto.setHostenter_headcount(hostenter_headcount);
		dto.setHostenter_onerow(hostenter_onerow);
		
		try {
			result = ihostenterDao.insert_hostenter(dto);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return result;
		
	}
	
	
	
}
