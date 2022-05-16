package com.test.app.domain.user;

public interface ProfileRepository {

	public Profile checkNickname(String username);
	
	public int nickname(Profile profile);
	public int address(Profile profile);
	public int gender(Profile profile);
	public int deleteProfile(String username);
}
