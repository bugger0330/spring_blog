package com.test.app.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProfileRepositoryImpl implements ProfileRepository {

	@Autowired
	private SqlSession session;
	
	private final String path = "com.test.app.domain.user.ProfileRepository";
	
	@Override
	public int changeProfile(Profile profile) {
		
		return session.insert(path + "changeProfile", profile);
	}

	@Override
	public int checkNickname(Profile profile) {
		
		return session.selectOne(path + "checkNickname", profile);
	}

	@Override
	public int nickname(Profile profile) {
		
		return session.selectOne(path + "nickname", profile);
	}

	@Override
	public int address(Profile profile) {

		return session.selectOne(path + "address", profile);
	}

	@Override
	public int gender(Profile profile) {
		
		return session.selectOne(path + "gender", profile);
	}

}
