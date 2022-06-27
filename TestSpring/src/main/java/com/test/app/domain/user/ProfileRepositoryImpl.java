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
	public Profile getProfile(String username) {
		
		return session.selectOne(path + "getProfile", username);
	}

	@Override
	public int insertProfile(Profile profile) {
		
		return session.update(path + "insertProfile", profile);
	}
	
	
	
}
