package com.test.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.Board;
import com.test.app.domain.user.BoardRepository;
import com.test.app.web.dto.BoardRequestDto;
import com.test.app.web.dto.SearchRequestDto;

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
		System.out.println("서비스1 : " +boardRequestDto.toString() );
		int result = boardRepository.getBoardUpdate(boardRequestDto.updateEntity());
		System.out.println("서비스2 : " +boardRequestDto.updateEntity());
		System.out.println("서비스3 : " +result);
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

	@Override
	public List<Board> getBoardList2(SearchRequestDto searchRequestDto) {
		List<Board> board = boardRepository.getBoardList2(searchRequestDto.boardEntity());
		
		return board;
	}

	/*-------------------------------------------------------------------------------*/
	
	@Override
	public List<Board> getBoardList11(int page) {
		List<Board> board = boardRepository.getBoardList11(page);
		
		return board;
	}
 
	@Override
	public boolean getBoardInsert2(BoardRequestDto boardRequestDto) {
		int result = boardRepository.getBoardInsert2(boardRequestDto.toEntity());
		return result != 0;
	}

	@Override
	public boolean getBoardUpdate2(BoardRequestDto boardRequestDto) {
		System.out.println("서비스1 : " +boardRequestDto.toString() );
		int result = boardRepository.getBoardUpdate2(boardRequestDto.updateEntity());
		System.out.println("서비스2 : " +boardRequestDto.updateEntity());
		System.out.println("서비스3 : " +result);
		return result != 0;
	}

	@Override
	public boolean getDelete2(int num) {
		int result = boardRepository.getDelete2(num);
		return result != 0;
	}

	@Override
	public int getCount2() {
		int result = boardRepository.getCount2();
		return result;
	}

	@Override
	public Board getBoardRead2(int num) {
		Board board = boardRepository.getBoardRead2(num);
		if(board == null) {
			return null;
		}else {
			return board;
		}
		
	}

	@Override
	public List<Board> getBoardList22(SearchRequestDto searchRequestDto) {
		List<Board> board = boardRepository.getBoardList2(searchRequestDto.boardEntity());
		
		return board;
	}
}
