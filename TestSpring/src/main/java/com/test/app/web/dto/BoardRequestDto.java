package com.test.app.web.dto;

import com.test.app.domain.user.Board;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class BoardRequestDto {

	private int boardCode;
	private String username;
	private String title;
	private String content;
	private int count;
	private int page;
	
	public Board toEntity() {
		return Board.builder()
				.board_code(boardCode)
				.username(username)
				.title(title)
				.content(content)
				.count(count)
				.page(page)
				.build();
	}
}
