package org.dnfon.controller;

import org.dnfon.dto.Criteria;
import org.dnfon.dto.NoticeBoardVO;
import org.dnfon.dto.PageDTO;
import org.dnfon.service.NoticeBoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class NoticeBoardController {
	
	private NoticeBoardService service;
	
	//list
	@GetMapping("/notice")
	public String list(Criteria cri, Model model) throws Exception {
		System.out.println("list");
		model.addAttribute("list", service.getList(cri));
		int total = service.getTotal(cri);
		
		System.out.println(cri.getPageNum());
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "board/notice/notice";
	}
	
	//글쓰기
	@RequestMapping(value="/register", method=RequestMethod.POST)
	@ResponseBody
	public void register(NoticeBoardVO board) throws Exception {
		System.out.println("register");
		
		
		System.out.println(board.getNick());
		System.out.println(board.getTitle());
		System.out.println(board.getContent());
		
		service.register(board);
	}
	
	//페이지 보기
	@GetMapping("content_view")
	public String content_view(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri,  Model model) throws Exception {
		System.out.println("content_view()");
		model.addAttribute("content_view", service.get(bno));
		return "board/notice/notice_view";
	}
	
	//게시글 수정 불러오기
	@GetMapping("/modify")
	public String modify(@RequestParam("bno") Long bno, Model model) throws Exception {
		System.out.println("content_view()");
		model.addAttribute("reply_view", service.modifyget(bno));
		return "board/notice/notice_reply";
	}
	
	
	//게시글 수정
	@RequestMapping(value="/update", method=RequestMethod.POST)
	@ResponseBody
	public void modify(NoticeBoardVO board) throws Exception {
		System.out.println("modify");
		
		
		System.out.println(board.getNick());
		System.out.println(board.getTitle());
		System.out.println(board.getContent());
		
		service.update(board);
	}
	
	//게시글 삭제
	@GetMapping("/remove")
	public String remove(@RequestParam("bno") Long bno) throws Exception {
		service.remove(bno);
		return "redirect:/notice";
		
	}
}
