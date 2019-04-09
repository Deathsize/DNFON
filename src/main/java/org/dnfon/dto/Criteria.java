package org.dnfon.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Criteria {
	private int pageNum;
	private int amount;
	
	public Criteria() {
		this(1, 15);
	}

	public Criteria(int pageNum, int amount) {
		// TODO Auto-generated constructor stub
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
