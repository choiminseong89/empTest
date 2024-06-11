package com.emp.mvc.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.emp.mvc.vo.User;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;

	private static final String NAMESPACE = "com.emp.mvc.dao.UserDao.";

	public List<User> findAllUsers() {
		return sqlSession.selectList(NAMESPACE + "findAll");
	}

	public int usersTotalCount() {
		return sqlSession.selectOne(NAMESPACE + "usersTotalCount");
	}

	public List<User> getUsers(Map<String, Object> map) {
		return sqlSession.selectList(NAMESPACE + "getUsers", map);
	}
}
