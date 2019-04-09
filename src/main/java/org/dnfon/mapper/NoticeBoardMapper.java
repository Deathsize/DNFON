package org.dnfon.mapper;

import java.util.List;

import org.dnfon.dto.Criteria;
import org.dnfon.dto.NoticeBoardVO;

public interface NoticeBoardMapper {
	public void insertSelectKey(NoticeBoardVO board);
	public List<NoticeBoardVO> getList();
	public NoticeBoardVO read(Long bno);
	public void upHit(Long bno);
	public int update(NoticeBoardVO board);
	public int remove(Long bno);
	public NoticeBoardVO modifyget(Long bno);
	public List<NoticeBoardVO> getListWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);
	
}
