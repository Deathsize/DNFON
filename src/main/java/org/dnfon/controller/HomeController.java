package org.dnfon.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@GetMapping("/")
	public String mainPage() {
		return "index";
	}
	
	@GetMapping("/skill")
	public String skill() {
		return "skill/skill";
	}
	
	@GetMapping("/skill2_1")
	public String skill2_1() {
		return "skill/jobskill/jobskill2_1";
	}
	
	@GetMapping("/skill_error")
	public String skill_error() {
		return "skill/error";
	}
	
	@GetMapping("/join")
	public String joinPage() {
		return "join";
	}
	
	@GetMapping("/accessError")
	public String accessDenied(Authentication auth, Model model) {
		System.out.println("access Denied" + auth);
		model.addAttribute("msg", "Access Denied");
		return "error/accessError";
	}
	
	@GetMapping("/customLogout")
	public void logoutGET() {
		System.out.println("custom logout");
	}
	
	@PostMapping("/customLogout")
	public void logoutPotst() {
		System.out.println("post custom logout");
	}
	
	//로그인
	@GetMapping("/customLogin")
	public void loginInput(String error, String logout) {
		System.out.println("error" + error);
		System.out.println("logout" + logout);
		
		if(error != null) {
			System.out.println("로그인 오류");
		}
		
		if(logout != null) {
			System.out.println("회원 로그아웃");
		}
	}
	
	@GetMapping("/notice_write")
	public String notice_write() {
		return "board/notice/notice_write";
	}
	
	@GetMapping("/error")
	public String error() {
		return "error/error";
	}
	@GetMapping("/accessEorror")
	public String accessEorror() {
		return "error//accessEorror";
		
	}
}

