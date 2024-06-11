package com.emp.mvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emp.mvc.dao.UserDao;
import com.emp.mvc.vo.User;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public List<User> getAllUsers() {
        return userDao.findAllUsers();
    }

	public int usersTotalCount() {
		 return userDao.usersTotalCount();
	}

	public List<User> getUsers(Map<String, Object> map) {
		return userDao.getUsers(map);
	}
}