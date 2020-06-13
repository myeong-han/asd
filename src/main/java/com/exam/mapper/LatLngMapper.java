package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.LatLngVO;

public interface LatLngMapper {
	
	public int insertLatLng(LatLngVO latLngVO);
	
	public int updateLatLng(LatLngVO latLngVO);
	
	public int removeLatLng(int unum);
	
	public List<LatLngVO> getNearLatLng
	(	@Param("LAT")double lat,
		@Param("LNG")double lng,
		@Param("UNUM")double unum,
		@Param("RNG")double rng);
	
	@Select("SELECT * FROM LAT_LNG WHERE UNUM <> #{UNUM} AND LAT <> 0 AND LNG <> 0")
	public List<LatLngVO> getLatLngAll(int unum);
	
	@Select("SELECT * FROM LAT_LNG WHERE UNUM = #{UNUM}")
	public LatLngVO getLatLng(int unum);
	
	@Select("SELECT COUNT(*) FROM LAT_LNG WHERE UNUM=#{UNUM}")
	public int countLatLngByUnum(int unum);
	
	@Delete("DELETE FROM LAT_LNG WHERE UNUM=#{UNUM}")
	public int deleteLatLngByUnum(int unum);
}
