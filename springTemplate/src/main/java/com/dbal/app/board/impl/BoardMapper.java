package com.dbal.app.board.impl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import com.dbal.app.board.Board;

@Repository //DAO
@MapperScan
//mapperScan은 마이바티스가 알아서 DAO를 생성하게 해줌.
public interface BoardMapper { 
	List<Board> selectall();

	Board selectone(int seq); // 메소드명이 board_mapper.xml의 id값과 일치해야 함

	void insert(Board board);

	void update(Board board);

	void delete(int seq);
}
