package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IcommunityDao;
import com.study.springboot.dto.communityDto;

@Component
public class communityService {
	
	@Autowired
	private IcommunityDao icommunityDao;
	
	public List<communityDto> communityload(String contents_number) {

		List<communityDto> communityload = icommunityDao.communityload(contents_number);

		return communityload;

	}
	
//	public int community_hit(int contents_number) {
//		int community_hit = icommunityDao.community_hit(contents_number);
//		return community_hit;
//	}

}
