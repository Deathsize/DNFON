package org.dnfon.service;

import java.util.Map;

import org.springframework.ui.Model;

public interface MemberService {
	public Map<Object, Object> id_check(String userid);
	public Map<Object, Object> nick_check(String usernick);
	public void insert(Model model);
	
	
}
