package com.exam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exam.domain.AdditionalVO;
import com.exam.domain.MemberVO;
import com.exam.service.AttachService;
import com.exam.service.MemberService;

@Controller
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private AttachService attachService;
	
	@GetMapping("/")
	public String home(HttpSession session) { 
		List<Map<String,Object>>memAddList = new ArrayList<Map<String,Object>>();

		if (memberService.countMemberAll() > 0) {
			while (memAddList.size()<200) {
				Map<String,Object> map = new HashMap<String, Object>();
				
				int rand = (int)(Math.random()*memberService.countMemberByClient())+1;
				rand += 10000; // 10001~회원갯수 중 랜덤

				MemberVO mvo = memberService.getMemberByUnum(rand);
				AdditionalVO avo = memberService.getAddtionByUnum(mvo.getUnum());
				
				if (memberService.isAdditionExist(rand)) {
					map.put("member", mvo);
					map.put("addition", avo);
					memAddList.add(map);
				}
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
