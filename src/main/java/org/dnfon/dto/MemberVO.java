package org.dnfon.dto;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	private String userid;
	private String userpw;
	private String userName;
	private String userNick;	
	private String userEmail;
	private int userLevel;
	private int userPoint;
	private String enable;
	private List<AuthVO> authList;
}
