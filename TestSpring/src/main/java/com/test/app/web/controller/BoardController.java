package com.test.app.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Board;
import com.test.app.service.BoardService;
import com.test.app.web.dto.BoardRequestDto;
import com.test.app.web.dto.SearchRequestDto;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@ResponseBody
	@RequestMapping(value = "/board/list", method = RequestMethod.POST)
	public List<Board> boardList(@RequestBody int page) {
		System.out.println("컨트롤러 들어옴 page : " + page);
		if(page == 1) {
			page = 0;
		}else if(page > 1) {
			page = (page - 1) * 10;
		}
		System.out.println("컨트롤러 계산된 page : " + page);
		
		List<Board> board = boardService.getBoardList(page);
		System.out.println("board리스트"+board.toString());	
		return board;
	}
	
	@ResponseBody
	@RequestMapping(value = "/board/list/search", method = RequestMethod.POST)
	public List<Board> boardListSearch(@RequestBody SearchRequestDto searchRequestDto) {
		System.out.println("컨트롤러 들어옴 page : " + searchRequestDto.toString());
		if(searchRequestDto.getNumber() == 1) {
			searchRequestDto.setNumber(0);
		}else if(searchRequestDto.getNumber() > 1) {
			searchRequestDto.setNumber((searchRequestDto.getNumber() - 1) * 10);
		}
		System.out.println("컨트롤러 계산된 page : " + searchRequestDto.toString());
		
		List<Board> board = boardService.getBoardList2(searchRequestDto);
		System.out.println("board리스트"+board.toString());	
		return board;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/board/read/{num}", method = RequestMethod.POST)
	public Board boardRead(@PathVariable int num) {
		Board board = boardService.getBoardRead(num);
		System.out.println("게시글 읽음 결과 : " + board.toString());
		return board;
	}
	

	@ResponseBody
	@RequestMapping(value = "/board/insert", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String getInsert(BoardRequestDto boardRequestDto) {
		System.out.println("컨트롤러 들어옴 page : " + boardRequestDto.toString());
		boolean result = boardService.getBoardInsert(boardRequestDto);
		
		return Boolean.toString(result);
	}
	
	@ResponseBody
	@RequestMapping(value = "/board/update/{num}", method = RequestMethod.POST)
	public Board boardupdateLoad(@PathVariable int num) {
		Board board = boardService.getBoardRead(num);
		
		return board;
	}
	
	@ResponseBody
	@RequestMapping(value = "/board/update", method = RequestMethod.POST)
	public String getUpdate(BoardRequestDto boardRequestDto) {
		System.out.println("컨트롤러 들어옴 : " + boardRequestDto.toString());
		boolean result = boardService.getBoardUpdate(boardRequestDto);
		
		return Boolean.toString(result);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/board/delete/{num}", method = RequestMethod.DELETE)
	public String getDelete(@PathVariable int num) {
		System.out.println("컨트롤러 들어옴 : " + num);;
		boolean result = boardService.getDelete(num);
		return Boolean.toString(result);
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/board/count", method = RequestMethod.GET) public
	 * int getCount() { int result = boardService.getCount(); return result; }
	 */
	
	

	
	
}
