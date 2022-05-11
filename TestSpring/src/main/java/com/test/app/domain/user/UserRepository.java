package com.test.app.domain.user;

public interface UserRepository {

	public int signup(User user);
	public User signin(String username);
}
