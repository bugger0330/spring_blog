package com.test.app.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Board;
import com.test.app.service.BoardService;
import com.test.app.web.dto.BoardRequestDto;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@ResponseBody
	@RequestMapping(value = "/board/list", method = RequestMethod.POST)
	public List<Board> boardList(@RequestBody int page) {
		System.out.println("page : " + page);
		
		List<Board> board = boardService.getBoardList(page);
		System.out.println("board리스트"+board.toString());	
		return board;
	}

	@ResponseBody
	@RequestMapping(value = "/board/insert", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String getInsert(@RequestBody BoardRequestDto boardRequestDto) {
		boolean result = boardService.getBoardInsert(boardRequestDto);
		
		return Boolean.toString(result);
	}
	
	@ResponseBody
	@RequestMapping(value = "/board/update", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String getUpdate(@RequestBody BoardRequestDto boardRequestDto) {
		boolean result = boardService.getBoardUpdate(boardRequestDto);
		
		return Boolean.toString(result);
	}
	
	@ResponseBody
	@RequestMapping(value = "/board/delete", method = RequestMethod.GET)
	public String getDelete(@RequestBody int boardCode) {
		boolean result = boardService.getDelete(boardCode);
		return Boolean.toString(result);
	}
	
	@ResponseBody
	@RequestMapping(value = "/board/count", method = RequestMethod.GET)
	public int getCount() {
		int result = boardService.getCount();
		return result;
	}
}
