package org.dnfon.service;

import java.util.List;

import org.dnfon.dto.NoticeBoardVO;

public interface NoticeBoardService {
	public List<NoticeBoardVO> getList() throws Exception;
	public NoticeBoardVO get(Long bno) throws Exception;
	public void register(NoticeBoardVO board) throws Exception;
	public boolean update(NoticeBoardVO board) throws Exception;
	public boolean remove(Long bno) throws Exception;
	public NoticeBoardVO modifyget(Long bno) throws Exception;
}
