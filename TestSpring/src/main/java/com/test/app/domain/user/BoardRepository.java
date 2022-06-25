package com.test.app.domain.user;

import java.util.List;

public interface BoardRepository {

	public List<Board> getBoardList(int page);
	public int getBoardInsert(Board board);
	public int getBoardUpdate(Board board);
	public int getDelete(int num);
	public int getCount();
	public Board getBoardRead(int num);
}
