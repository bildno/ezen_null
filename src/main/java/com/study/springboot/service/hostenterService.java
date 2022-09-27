package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IhostenterDao;
import com.study.springboot.dto.hostenterDto;

@Component
public class hostenterService {

	@Autowired
	private IhostenterDao ihostenterDao;

	public int insert_hostenter(String hostenter_title_img, int hostenter_contents_number, String hostenter_name,
			String hostenter_description, String hostenter_caution, String hostenter_zipcode, String hostenter_location,
			String hostenter_location_detail, int hostenter_price, int hostenter_headcount, String hostenter_member_id,
			int hostenter_bumber, String hostenter_onerow) {

		int result = 0;
		hostenterDto dto = new hostenterDto();
		dto.setHostenter_title_img(hostenter_title_img);
		dto.setHostenter_contents_number(hostenter_contents_number);
		dto.setHostenter_name(hostenter_name);
		dto.setHostenter_description(hostenter_description);
		dto.setHostenter_caution(hostenter_caution);
		dto.setHostenter_zipcode(hostenter_zipcode);
		dto.setHostenter_location(hostenter_location);
		dto.setHostenter_location_detail(hostenter_location_detail);
		dto.setHostenter_price(hostenter_price);
		dto.setHostenter_headcount(hostenter_headcount);
		dto.setHostenter_member_id(hostenter_member_id);
		dto.setHostenter_bnumber(hostenter_bumber);
		dto.setHostenter_onerow(hostenter_onerow);

		System.out.println(dto + "   dasd");

		try {
			result = ihostenterDao.insert_hostenter(dto);
			System.out.println("service " + result);
		} catch (Exception e) {
			System.out.println("실패");
			return result;
		}

		return result;

	}

	public List<hostenterDto> select_space(String member_id) {
		List<hostenterDto> enter_list = ihostenterDao.select_space(member_id);

		return enter_list;
	}

	public List<hostenterDto> detail_space(String hostenter_name) {
		List<hostenterDto> detail_list = ihostenterDao.detail_space(hostenter_name);

		return detail_list;
	}

	public int update_hostenter(String hostenter_title_img, int hostenter_contents_number, String hostenter_name,
			String hostenter_description, String hostenter_caution, int hostenter_price, int hostenter_headcount,
			int hostenter_bumber, String hostenter_onerow, String host_name_0) {
		
		int result = 0;
		hostenterDto dto = new hostenterDto();
		dto.setHostenter_title_img(hostenter_title_img);
		dto.setHostenter_contents_number(hostenter_contents_number);
		dto.setHostenter_name(hostenter_name);
		dto.setHostenter_description(hostenter_description);
		dto.setHostenter_caution(hostenter_caution);
		dto.setHostenter_price(hostenter_price);
		dto.setHostenter_headcount(hostenter_headcount);
		dto.setHostenter_bnumber(hostenter_bumber);
		dto.setHostenter_onerow(hostenter_onerow);
	
		System.out.println(dto);
		System.out.println(host_name_0);
		try {
			result = ihostenterDao.update_hostenter(/*
													 * hostenter_title_img, hostenter_contents_number, hostenter_name,
													 * hostenter_description, hostenter_caution, hostenter_price,
													 * hostenter_headcount, hostenter_bumber, hostenter_onerow,
													 */ dto, host_name_0);
			System.out.println("service " + result);
		} catch (Exception e) {
			System.out.println("실패");
			return result;
		}

		return result;
	}
}
