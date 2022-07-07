package com.test.app.domain.user;

import java.util.List;

public interface BoardRepository {

	//자유게시판
	public List<Board> getBoardList(int page);
	public List<Board> getBoardList2(Board board);
	public int getBoardInsert(Board board);
	public int getBoardUpdate(Board board);
	public int getDelete(int num);
	public int getCount();
	public Board getBoardRead(int num);
	
	//공지사항
	public List<Board> getBoardList11(int page);
	public List<Board> getBoardList22(Board board);
	public int getBoardInsert2(Board board);
	public int getBoardUpdate2(Board board);
	public int getDelete2(int num);
	public int getCount2();
	public Board getBoardRead2(int num);
}
