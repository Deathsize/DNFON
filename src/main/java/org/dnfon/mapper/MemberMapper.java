package org.dnfon.mapper;

import org.dnfon.dto.MemberVO;

public interface MemberMapper {
	public void insert(MemberVO board);
	public int id_check(String userid);
	public int nick_check(String userid);
	public MemberVO read(String userid);
}
