package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.communityDto;

@Mapper
public interface IcommunityDao {

	public List<communityDto> communityload(String contents_number);
	
	
	public List<communityDto> community_content(String community_number);
	
	
	public int community_write(communityDto dto);
	
	
	public List<communityDto> community_page(String startRowNum_community, String endRowNum_community, String contents_number);
	
	
	public List<communityDto> mycommu_page(String startRowNum_community, String endRowNum_community,String member_id);
	
	
	public int community_hit(String community_number);
	
	public List <communityDto> community_seq1();
	public List <communityDto> community_seq2();
	public List <communityDto> community_seq3();
	public List <communityDto> community_seq4();
	
	
	public List<communityDto> select_commu(String member_id);
	
	public int deletecommu(int community_number);
	
	public int deletecommuid(String memeber_id);
	
	
	public List<communityDto> community_page_search(String startRowNum_community, String endRowNum_community, String contents_number,String title, String contents );
}
