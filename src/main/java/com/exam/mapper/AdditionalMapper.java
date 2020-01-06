package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.AdditionalVO;
import com.exam.domain.MemberVO;

public interface AdditionalMapper {
	
	// 회원 추가정보 삽입
	public int insertAddition(AdditionalVO additionalVO);
	
	// 회원 추가정보 전체 수정
	public int updateAddition(AdditionalVO additionalVO);
	
	// 회원 대표사진 업데이트
	public int updateAdditionPic(AdditionalVO additionalVO);
	
	@Select("SELECT * FROM additional WHERE unum=#{unum}")
	public AdditionalVO getAddition(int unum);
	
	@Select("SELECT * FROM additional")
	public List<AdditionalVO> getAdditionAll();
	
	@Select("SELECT COUNT(*) FROM additional WHERE unum=#{unum}")
	public int countAdditionByUnum(int unum);
	
	@Delete("DELETE FROM additional WHERE unum=#{unum}")
	public void deleteAddition(int unum);
}
