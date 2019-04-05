package org.dnfon.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.dnfon.dto.MemberVO;
import org.dnfon.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	//아이디 체크
	@Override
	public Map<Object, Object> id_check(final String userid) {
		// TODO Auto-generated method stub
		System.out.println(userid);
		int count = mapper.id_check(userid);
		System.out.println("count : " + count);
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("cnt", count);
		
		return map;
	}

	@Override
	public Map<Object, Object> nick_check(String usernick) {
		// TODO Auto-generated method stub
		System.out.println(usernick);
		int count = mapper.nick_check(usernick);
		System.out.println("count : " + count);
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("cnt", count);
		
		return map;
	}

	@Override
	public void insert(Model model) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		MemberVO dto = new MemberVO();
		
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		dto.setName(request.getParameter("name"));
		dto.setNick(request.getParameter("nick"));
		dto.setEmail(request.getParameter("email") + "@" + request.getParameter("email2"));
		
		if(dto.getId().equals("") || dto.getId() == null 
				|| dto.getPw().equals("") || dto.getPw() == null
				|| dto.getName().equals("") || dto.getName() == null
				|| dto.getNick().equals("") || dto.getNick() == null
				|| dto.getEmail().equals("") || dto.getEmail() == null) {
			System.out.println("텍스트 오류");
			return;
		}
		
		if(!dto.getPw().equals(request.getParameter("expw"))) {
			System.out.println("패스워드 중복 확인");
			return;
		};
		
		mapper.insert(dto);
		
	}
}
