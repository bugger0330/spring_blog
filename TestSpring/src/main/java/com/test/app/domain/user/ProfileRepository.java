package com.test.app.domain.user;

public interface ProfileRepository {

	public int changeProfile(Profile profile);
	public int checkNickname(Profile profile);
	
	public int nickname(Profile profile);
	public int address(Profile profile);
	public int gender(Profile profile);
}
