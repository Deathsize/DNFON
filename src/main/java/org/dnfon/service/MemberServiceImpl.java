package org.dnfon.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.dnfon.dto.MemberVO;
import org.dnfon.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	  
	//아이디 체크
	@Override
	public Map<Object, Object> id_check(final String userid) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(userid);
		int count = mapper.id_check(userid);
		System.out.println("count : " + count);
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("cnt", count);
		
		return map;
	}
	@Override
	public Map<Object, Object> nick_check(String usernick) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(usernick);
		int count = mapper.nick_check(usernick);
		System.out.println("count : " + count);
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("cnt", count);
		
		return map;
	}
	@Override
	public void insert(Model model) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		MemberVO dto = new MemberVO();
		
		if(!request.getParameter("pw").equals(request.getParameter("expw"))) {
			System.out.println("패스워드 중복 확인");
			return;
		};
		
		dto.setUserid(request.getParameter("id"));
		dto.setUserpw( pwencoder.encode(request.getParameter("pw")));
		dto.setUserName(request.getParameter("name"));
		dto.setUserNick(request.getParameter("nick"));
		dto.setUserEmail(request.getParameter("email") + "@" + request.getParameter("email2"));
		
		if(dto.getUserid().equals("") || dto.getUserid() == null 
				|| dto.getUserpw().equals("") || dto.getUserpw() == null
				|| dto.getUserName().equals("") || dto.getUserName() == null
				|| dto.getUserNick().equals("") || dto.getUserNick() == null
				|| dto.getUserEmail().equals("") || dto.getUserEmail() == null) {
			System.out.println("텍스트 오류");
			return;
		}
		
		mapper.insert(dto);
		
	}
}
