package com.test.app.domain.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardRepositoryImpl implements BoardRepository {
	
	@Autowired
	private SqlSession session;
	
	private final String path = "com.test.app.domain.user.BoardRepository.";

	@Override
	public List<Board> getBoardList(int page) {
		
		return session.selectList(path + "getBoardList", page);
	}

	@Override
	public int getBoardInsert(Board board) {
		
		return session.insert(path + "getBoardInsert", board);
	}

	@Override
	public int getBoardUpdate(Board board) {
		
		return session.insert(path + "getBoardUpdate", board);
	}

	@Override
	public int getDelete(int boardcode) {
		
		return session.delete(path + "getDelete", boardcode);
	}

	@Override
	public int getCount() {
		
		return session.selectOne(path + "getCount");
	}

}
