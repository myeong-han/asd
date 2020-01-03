package com.exam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exam.domain.AdditionalVO;
import com.exam.domain.LatLngVO;
import com.exam.domain.MemberVO;
import com.exam.mapper.MemberMapper;
import com.exam.service.MemberService;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("latLng")
@Log4j
public class LatLngController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private LatLngVO latLngVO;
	
	@GetMapping(value = "getUnum/{email}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<Integer> unum(@PathVariable("email") String email) {
		int unum = memberService.getMemberByEmail(email).getUnum();
		return new ResponseEntity<Integer>(unum, HttpStatus.OK);
	}
	
	@PostMapping(value = "insert", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> latLng(
			@RequestBody LatLngVO latLngVO,
			String email) {
		
		log.info("POST latLngVO: "+latLngVO);
		
		int successCount = 0;
		
		if (memberService.isLatLngExist(latLngVO.getUnum())) {
			successCount = memberService.updateLatLng(latLngVO);
		} else {
			successCount = memberService.insertLatLng(latLngVO);
		}
		
		ResponseEntity<String> entity = null;
		if (successCount > 0) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@PostMapping(value = "range", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> postRange(@RequestBody double rng) {
		log.info("setRng: "+rng);
		latLngVO.setRng(rng); 
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
//	@GetMapping(value = "range", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
//	public ResponseEntity<Integer> getRange() {
//		if (latLngVO.getRng() == null) {
//			latLngVO.setRng(2);
//		}
//		return new ResponseEntity<Integer>(latLngVO.getRng(), HttpStatus.OK);
//	}
	
	@GetMapping(value = "getList/{unum}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<List<Map<String,Object>>> getList(@PathVariable("unum") int unum) {
		log.info("unum: "+unum);
		log.info("getRng: "+latLngVO.getRng());
		if (latLngVO.getRng() == null) {
			latLngVO.setRng(2.0);
		}
		LatLngVO myLatLng = memberService.getLatLng(unum);
		List<LatLngVO> latLngList = memberService.getNearLatLng(myLatLng, latLngVO.getRng());
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		for (LatLngVO latLngVO :latLngList) {
			int distance = (int)(latLngVO.getDistance()*10);
			
			Map<String,Object> map = new HashMap<String, Object>();
			MemberVO memberVO = memberService.getMemberByUnum(latLngVO.getUnum());
			AdditionalVO additionalVO = memberService.getAddtionByUnum(latLngVO.getUnum());
			String mpic = "";
			if (additionalVO != null) {
				mpic = additionalVO.getMpic();
			}
			map.put("latLng", latLngVO);
			map.put("member", memberVO);
			map.put("mpic", mpic);
			map.put("distance", distance);
			
			list.add(map);
			
			if (list.size()==20) {
				break;
			}
		}
		
		log.info("GET latLngList: "+latLngList);
		return new ResponseEntity<List<Map<String,Object>>>(list, HttpStatus.OK);
	}
}
