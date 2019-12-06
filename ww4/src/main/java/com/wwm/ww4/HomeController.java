package com.wwm.ww4;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.wwm.domain.MemberVO;
import com.wwm.service.MemberService;

@Controller
public class HomeController {

	@Autowired
	private MemberService memberService;

	@GetMapping("/")
	public String home(HttpSession session) {

		List<MemberVO> showMemberList = new ArrayList<MemberVO>();

		Random random = new Random();
		for (int i = 0; i < 10; i++) {
			int m = random.nextInt(15) + 1;
			MemberVO vo = memberService.getMemberByNum(m);
			showMemberList.add(vo);
		}

		session.setAttribute("showMemberList", showMemberList);

		// 리다이렉트일 경우 HttpStatus.Found 지정해야 함
		return "main/main";

	}

	@GetMapping("/main2")
	public String main2(HttpSession session) {

		List<MemberVO> showMemberList = new ArrayList<MemberVO>();

		Random random = new Random();
		for (int i = 0; i < 10; i++) {
			int m = random.nextInt(15) + 1;
			MemberVO vo = memberService.getMemberByNum(m);
			showMemberList.add(vo);
		}

		session.setAttribute("showMemberList", showMemberList);
		return "main/main2";
	}

	@GetMapping("/about")
	public String about() {
		return "etc/about";
	}

	@GetMapping("/contact")
	public String contact() {
		return "etc/contact";
	}

	@GetMapping("/pricing")
	public String pricing() {
		return "etc/pricing";
	}

}
