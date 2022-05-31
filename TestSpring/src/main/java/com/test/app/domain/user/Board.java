package com.test.app.domain.user;

import java.time.LocalDateTime;

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
	private LocalDateTime create_date;
	private LocalDateTime update_date;

}
