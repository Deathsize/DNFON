package org.dnfon.dto;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String nick;	
	private String email;
	private int lv;
	private int point;
}
