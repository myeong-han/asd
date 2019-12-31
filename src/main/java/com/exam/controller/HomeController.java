package com.exam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exam.domain.AdditionalVO;
import com.exam.domain.MemberVO;
import com.exam.service.AttachService;
import com.exam.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private AttachService attachService;
	
	@GetMapping("/")
	public String home(HttpSession session) { 
		int generateNum = 30; // 전체 조회 : memberService.countAddition()-2;
		log.info("countAddition: "+generateNum);
		
		List<Map<String,Object>>memAddList = new ArrayList<Map<String,Object>>();

		if (memberService.countMemberAll() > 0) {
			
			Set<Integer> unumSet = new LinkedHashSet<Integer>();
			
			// 랜덤 Unum 세팅
			if (memberService.countMemberAll() >= generateNum) {
				while (unumSet.size()<=generateNum+1) {
					int rand = (int)(Math.random()*memberService.countMemberByClient())+1;
					rand += 10000; // 10001~회원갯수 중 랜덤
					
					if (memberService.isAdditionExist(rand)) {
						unumSet.add(rand);
					}
				}
			} else {
				for (MemberVO memberVO : memberService.getMemberList()) {
					unumSet.add(memberVO.getUnum());
				}
			}
			
			// set에 들은 unum 전부 제너레이트
			for (Integer unum : unumSet) {
				Map<String,Object> map = new HashMap<String, Object>();
				
				MemberVO mvo = memberService.getMemberByUnum(unum);
				AdditionalVO avo = memberService.getAddtionByUnum(mvo.getUnum());
				
				map.put("member", mvo);
				map.put("addition", avo);
				memAddList.add(map);
			}
		} else {
			memAddList = null;
		}
		session.setAttribute("maList", memAddList);

		// 리다이렉트일 경우 HttpStatus.Found 지정해야 함
		return "main/main";
	}
	
	
	// @ResponseBody 애노테이션을 통해 리턴값을 JSON형식으로 응답준다.
	@GetMapping("/popup")
	@ResponseBody
	public List<Map<String,String>> popup(int unum) {
			
		List<Map<String, String>> popupMapList = new ArrayList<Map<String,String>>();
		List<String> filenameList=attachService.getAttachPics(unum);
								
		for (String filename : filenameList) {
			Map<String, String> popupMap = new HashMap<String, String>();
			popupMap.put("src", "/resources/upload/" + filename);
			popupMapList.add(popupMap);
		}
		
		return popupMapList;
	}
	
	
}
