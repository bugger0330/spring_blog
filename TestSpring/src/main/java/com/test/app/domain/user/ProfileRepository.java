package com.test.app.domain.user;

public interface ProfileRepository {

	public Profile getProfile(String username);
	public int insertProfile(Profile profile);
}
