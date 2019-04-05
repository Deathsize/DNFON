package org.dnfon.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.dnfon.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/join/*")
@AllArgsConstructor
public class JoinController {
	private MemberService service;
	
	@GetMapping("/id_check")
	public void id_check() {}
	
	@GetMapping("/nick_check")
	public void nick_check() {}
	
	//아이디 체크
	@PostMapping("/id_check")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String userid) {
		System.out.println("id_check() : " + userid);
		return service.id_check(userid);
	}
	
	//아이디 체크
	@PostMapping("/nick_check")
	@ResponseBody
	public Map<Object, Object> nickcheck(@RequestBody String usernick) {
		System.out.println("nick_check() : " + usernick);
		return service.nick_check(usernick);
	}
	
	//회원가입
	@PostMapping("/member_join")
	public String member_join(HttpServletRequest request, Model model) {
		System.out.println("member_join()");
		model.addAttribute("request", request);
		
		service.insert(model);
		return "index";
	}
}
