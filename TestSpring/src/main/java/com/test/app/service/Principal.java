package com.test.app.service;

import com.test.app.domain.user.User;

public interface Principal {

	public User check(String username, String password);
}
