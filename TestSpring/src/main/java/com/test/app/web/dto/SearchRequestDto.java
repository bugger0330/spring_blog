package com.test.app.web.dto;

import com.test.app.domain.user.Board;
import com.test.app.domain.user.Search;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class SearchRequestDto {

	private int number;
	private String select;
	private String search;
	
	public Search entity() {
		return Search.builder()
				.number(number)
				.select(select)
				.search(search)
				.build();
	}
	
	public Board boardEntity() {
		return Board.builder()
				.number(number)
				.select(select)
				.search(search)
				.build();
	}
}
