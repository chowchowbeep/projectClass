package com.dbal.app.board.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dbal.app.board.Board;
import com.dbal.app.board.impl.BoardServiceImpl;

@Controller
public class BoardController {
	@Autowired BoardServiceImpl boardService;
	
	@RequestMapping("/board/list.do")
	public String list(Model model) {
		model.addAttribute("list", boardService.getSelectall());
		return "board/list";
	}
	
	//등록폼
	@RequestMapping("/board/insertForm.do")
	public String insertForm() {
		return "board/insert";
	}
	
	//등록처리
	@RequestMapping("/board/insert.do")
	public String insert(Board board) {
		boardService.insert(board);
		return "redirect:/board/list.do";
	}
}
