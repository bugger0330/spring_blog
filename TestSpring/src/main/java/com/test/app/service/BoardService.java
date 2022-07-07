package com.test.app.service;

import java.util.List;

import com.test.app.domain.user.Board;
import com.test.app.web.dto.BoardRequestDto;
import com.test.app.web.dto.SearchRequestDto;

public interface BoardService {

	//자유게시판
	public List<Board> getBoardList(int page);
	public List<Board> getBoardList2(SearchRequestDto searchRequestDto);
	public boolean getBoardInsert(BoardRequestDto boardRequestDto);
	public boolean getBoardUpdate(BoardRequestDto boardRequestDto);
	public boolean getDelete(int num);
	public int getCount();
	public Board getBoardRead(int num);
	
	//공지사항
	public List<Board> getBoardList11(int page);
	public List<Board> getBoardList22(SearchRequestDto searchRequestDto);
	public boolean getBoardInsert2(BoardRequestDto boardRequestDto);
	public boolean getBoardUpdate2(BoardRequestDto boardRequestDto);
	public boolean getDelete2(int num);
	public int getCount2();
	public Board getBoardRead2(int num);
}
