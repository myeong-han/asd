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
	(	@Param("lat")double lat,
		@Param("lng")double lng,
		@Param("unum")double unum,
		@Param("rng")double rng);
	
	@Select("SELECT * FROM lat_lng WHERE unum <> #{unum} AND lat <> 0 AND lng <> 0")
	public List<LatLngVO> getLatLngAll(int unum); 
	
	@Select("SELECT * FROM lat_lng WHERE unum = #{unum}")
	public LatLngVO getLatLng(int unum);
	
	@Select("SELECT COUNT(*) FROM lat_lng WHERE unum=#{unum}")
	public int countLatLngByUnum(int unum);
	
	@Delete("DELETE FROM lat_lng WHERE unum=#{unum}")
	public int deleteLatLngByUnum(int unum);
}

