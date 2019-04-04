package org.dnfon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	
}
