package com.test.app.config;

public class FileConfig {

	private static String profileImgPath;
	
	public static void setProfileImgPath(String url) {
		profileImgPath = url;
	}

	public static String getProfileImgPath() {
		return profileImgPath;
	}
}
