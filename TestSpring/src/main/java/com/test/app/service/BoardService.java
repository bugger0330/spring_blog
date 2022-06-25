package com.test.app.service;

import java.util.List;

import com.test.app.domain.user.Board;
import com.test.app.web.dto.BoardRequestDto;

public interface BoardService {

	public List<Board> getBoardList(int page);
	public boolean getBoardInsert(BoardRequestDto boardRequestDto);
	public boolean getBoardUpdate(BoardRequestDto boardRequestDto);
	public boolean getDelete(int num);
	public int getCount();
	public Board getBoardRead(int num);
}
