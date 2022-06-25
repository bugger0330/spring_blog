package com.test.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.Board;
import com.test.app.domain.user.BoardRepository;
import com.test.app.web.dto.BoardRequestDto;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardRepository boardRepository;
	
	@Override
	public List<Board> getBoardList(int page) {
		List<Board> board = boardRepository.getBoardList(page);
		
		return board;
	}
 
	@Override
	public boolean getBoardInsert(BoardRequestDto boardRequestDto) {
		int result = boardRepository.getBoardInsert(boardRequestDto.toEntity());
		return result != 0;
	}

	@Override
	public boolean getBoardUpdate(BoardRequestDto boardRequestDto) {
		int result = boardRepository.getBoardUpdate(boardRequestDto.updateEntity());
		return result != 0;
	}

	@Override
	public boolean getDelete(int num) {
		int result = boardRepository.getDelete(num);
		return result != 0;
	}

	@Override
	public int getCount() {
		int result = boardRepository.getCount();
		return result;
	}

	@Override
	public Board getBoardRead(int num) {
		Board board = boardRepository.getBoardRead(num);
		if(board == null) {
			return null;
		}else {
			return board;
		}
		
	}

}
