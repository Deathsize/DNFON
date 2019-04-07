package org.dnfon.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeBoardVO {
	private Long bno;
	private String nick;
	private String title;
	private String content;
	private Date regdate;
	private Date updateDate;
	private int hit;
}
