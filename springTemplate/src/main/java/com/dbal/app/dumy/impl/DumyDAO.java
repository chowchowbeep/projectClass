package com.dbal.app.dumy.impl;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DumyDAO {
	
	@Autowired private SqlSessionTemplate mybatis; //모든 jdbc처리해주는 클래스
	
	public Map getTime() {
		return mybatis.selectOne("DumyDAO.getTime"); //()내에는 dumy_mapper.xml의  namespace이름.id값
	}


}
