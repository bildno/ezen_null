package com.study.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IwishDao;
import com.study.springboot.dto.wishDto;

@Component
public class wishService {
	
	@Autowired
	private IwishDao iwishDao;
	
   //찜 하기
	public int zzim_do(wishDto dto) {
		int result = iwishDao.zzim_do(dto);
		return result;
	}
	
	//찜 중복 확인
	public int zzim_exist(String hostenter_number,String member_id) {
		int result = iwishDao.zzim_exist(hostenter_number,member_id);
		return result;
	}
	

	

	
	
}
