package org.dnfon.service;

import java.util.List;

import org.dnfon.dto.Criteria;
import org.dnfon.dto.NoticeBoardVO;
import org.dnfon.mapper.NoticeBoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class NoticeBoardServiceImpl implements NoticeBoardService {
	
	@Setter(onMethod_ = @Autowired)
	private NoticeBoardMapper mapper;
	
	//리스트 출력
	@Override
	public List<NoticeBoardVO> getList(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri);
	}
	
	//입력
	@Override
	public void register(NoticeBoardVO board) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("register");
		mapper.insertSelectKey(board);
	}
	
	//페이지보기
	@Transactional
	@Override
	public NoticeBoardVO get(Long bno) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		System.out.println("get()");
		mapper.upHit(bno);
		return mapper.read(bno);
	}
	
	//페이지보기
	@Override
	public NoticeBoardVO modifyget(Long bno) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		return mapper.read(bno);
	}
	
	//페이지수정
	@Override
	public boolean update(NoticeBoardVO board) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("register");
		return mapper.update(board) == 1;
	}
	
	//페이지삭제
	@Override
	public boolean remove(Long bno) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("delete");
		return mapper.remove(bno) == 1;
	}
	
	//페이지Total
	public int getTotal(Criteria cri) throws Exception {
		System.out.println("get Total Count()");
		return mapper.getTotalCount(cri);
		
	}
}
