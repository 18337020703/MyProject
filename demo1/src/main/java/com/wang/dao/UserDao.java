package com.wang.dao;

import com.wang.entity.Emp;
import com.wang.entity.User;

import java.util.List;

public interface UserDao extends baseDao {
    int addUser(String id);
    int deleteUser(String id);
    List<User> findUser(User user);
    int editPassword(Emp emp);
}
