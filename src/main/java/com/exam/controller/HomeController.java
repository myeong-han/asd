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
			while (memAddList.size()<20) {
				int rand = (int)(Math.random()*memberService.countMemberByClient())+1;
				rand += 10000; // 10001~회원갯수 중 랜덤

				MemberVO vo = memberService.getMemberByUnum(rand);
				Map<String,Object> map = new HashMap<String, Object>();
				
				map.put("member", vo);
				map.put("addition", memberService.getAddtionByUnum(vo.getUnum()));
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
		System.out.println("popup 호출 성공");
		System.out.println("unum값 받아오기 : "+unum);
		List<Map<String, String>> popupMapList = new ArrayList<Map<String,String>>();
		List<String> filenameList=attachService.getAttachPics(unum);

		System.out.println("파일명 리스트 받아오기 :"+ filenameList);
		
		for (String filename : filenameList) {
			Map<String, String> popupMap = new HashMap<String, String>();
			popupMap.put("src", "/resources/upload/" + filename);
			popupMapList.add(popupMap);
		}
		
		System.out.println("팝업용 완성된 맵 객체 : "+popupMapList);
		
		return popupMapList;
	}
	
	
}
