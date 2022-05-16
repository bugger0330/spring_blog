package com.test.app.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProfileRepositoryImpl implements ProfileRepository {

	@Autowired
	private SqlSession session;
	
	private final String path = "com.test.app.domain.user.ProfileRepository.";
	
	
	@Override
	public Profile checkNickname(String username) {
		
		return session.selectOne(path + "checkNickname", username);
	}

	/* ======================================================================= */
	
	@Override
	public int nickname(Profile profile) {
		
		return session.update(path + "nickname", profile);
	}

	@Override
	public int address(Profile profile) {

		return session.update(path + "address", profile);
	}

	@Override
	public int gender(Profile profile) {
		
		return session.update(path + "gender", profile);
	}

	@Override
	public int deleteProfile(String username) {
		
		return session.delete(username);
	}

}
