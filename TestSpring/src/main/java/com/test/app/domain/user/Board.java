package com.test.app.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Board {
	
	private int board_code;
	private String username;
	private String title;
	private String content;
	private int count;
	private int page;
	private int boardCount;

}
