package com.dbal.app.user.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dbal.app.user.UserService;
import com.dbal.app.user.UserVO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;
	@Override
	public UserVO getUser(UserVO vo) { //알아서 DB 연결과 해제함. 서비스 단위로.
		return userDAO.getUser(vo);
	}
	@Override
	public List<UserVO> getUserList(UserVO vo) {
		return userDAO.getUserList(vo);
	}
	@Override
	public List<Map> getUserListMap(UserVO vo) {
		return userDAO.getUserListMap(vo);
	}
	public int insertUser(UserVO dto) {		
		return userDAO.insertUser(dto);		
	}
	public int updateUser(UserVO dto) {
		return userDAO.updateUser(dto);
	}
	public int deleteUser(UserVO dto) {
		return userDAO.deleteUser(dto);
	}
}
