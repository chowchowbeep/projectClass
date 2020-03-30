package com.dbal.app.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dbal.app.board.Board;

@Service("boardService")
public class BoardServiceImpl {
	// 객체주입
	@Autowired
	BoardMapper BoardMapper;

	public List<Board> getSelectall() {
		return this.BoardMapper.selectall();
	}

	public Board getSelectone(int seq) {
		return this.BoardMapper.selectone(seq);
	}

	public void insert(Board board) {
		this.BoardMapper.insert(board);
	}

	public void update(Board board) {
		this.BoardMapper.update(board);
	}

	public void delete(int seq) {
		this.BoardMapper.delete(seq);
	}
}
