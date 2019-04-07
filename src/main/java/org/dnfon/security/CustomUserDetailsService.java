package org.dnfon.security;

import org.dnfon.dto.MemberVO;
import org.dnfon.mapper.MemberMapper;
import org.dnfon.security.domain.CustomUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.Setter;

public class CustomUserDetailsService implements UserDetailsService{

	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		System.out.println("Load User By UserName : " + username);	
		
		MemberVO vo = memberMapper.read(username);
		
		System.out.println("queried by member mapper : " + vo);
		return vo == null ? null : new CustomUser(vo);
	}

}
