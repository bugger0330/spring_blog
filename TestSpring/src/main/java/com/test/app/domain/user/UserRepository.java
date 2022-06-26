package com.test.app.domain.user;

public interface UserRepository {

	public int signup(User user);
	public User signin(String username);
	public int usernameCheck(String username);
	public String selectPassword(String username);
	public int userOver(String username);
	public int updatePassword(User user);
}
