package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.AttachVO;

public interface AttachMapper {
	public void insertAttach(AttachVO attachVO);
	
	// 해당 회원의 이미지 객체 전체
	@Select("SELECT * FROM ATTACHS WHERE UNUM = #{UNUM} ORDER BY ATTACH_DATE DESC")
	public List<AttachVO> getAttaches(int unum);
	
	// 해당 회원의 이미지 파일명 리스트
	@Select("SELECT NAME FROM ATTACHS WHERE UNUM = #{UNUM} ORDER BY ATTACH_DATE DESC")
	public List<String> getAttachPics(int unum);
	
	// 메인이미지만 파일명만 찾아오기
	@Select("SELECT NAME FROM ATTACHS WHERE UNUM = #{UNUM} AND MAIN_IMAGE = 'TRUE' ")
	public String getMainAttach(int unum);
	
	// 해당 회원의 모든 이미지 삭제하는 메소드
	@Delete("DELETE FROM ATTACHS WHERE UNUM = #{UNUM}")
	public void deleteAttachByUnum(int unum);
		
	// uuid에 해당하는 이미지 한개 삭제하는 메소드
	@Delete("DELETE FROM ATTACHS WHERE UUID = #{UUID}")
	public void deleteAttachByUuid(String uuid);
}