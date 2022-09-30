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
	
	
	//커뮤니티 리스트
	public List<communityDto> communityload(String contents_number) {

		List<communityDto> communityload = icommunityDao.communityload(contents_number);

		return communityload;
	}
	
	//커뮤니티 글
	public List<communityDto> community_content(String community_number) {
		
		List<communityDto> community_content = icommunityDao.community_content(community_number);
		
		return community_content;
	}
	
	
	public int community_write(communityDto dto) {
		
		int result = icommunityDao.community_write(dto);
		
		return result;
		
	}
	
	//조회수 올리기
	public int community_hit(String community_number)throws Exception {
		
		
		return icommunityDao.community_hit(community_number);
	}
	
	
	//메인 베스트 게시글
	public List<communityDto> community_seq1() {
		
		List<communityDto> community_seqs = icommunityDao.community_seq1();
		
		return community_seqs;
	}
	public List<communityDto> community_seq2() {
		
		List<communityDto> community_seqs = icommunityDao.community_seq2();
		
		return community_seqs;
	}
	public List<communityDto> community_seq3() {
		
		List<communityDto> community_seqs = icommunityDao.community_seq3();
		
		return community_seqs;
	}
	public List<communityDto> community_seq4() {
		
		List<communityDto> community_seqs = icommunityDao.community_seq4();
		
		return community_seqs;
	}
	
	
}
