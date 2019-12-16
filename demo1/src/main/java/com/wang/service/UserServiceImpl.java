package com.wang.service;

import com.wang.dao.UserDao;
import com.wang.entity.Emp;
import com.wang.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

//    @Override
//    @Transactional(readOnly =true )
//    public List<User> findAll() {
//        return userDao.selectAll();
//    }

    @Override
    public void addOne(Object o) {
        userDao.insertOne(o);
    }

    @Override
    public void modifyOne(Object o) {

    }

    @Override
    public void removeOne(String id) {

    }

    @Override
    public Object findOneById(String id) {
        return null;
    }

    @Override
    public List findAllById(String id) {
        return userDao.selectAllById(id);
    }

    @Override
    public Emp findOneByName(String name) {
        return (Emp) userDao.selectOneByName(name);
    }

    @Override
    public List<Emp> findAll(Emp emp) {
        return null;
    }


    @Override
    public int addUser(String id) {
        return userDao.addUser(id);
    }

    @Override
    public int deleteUser(String id) {
        return userDao.deleteUser(id);
    }

    @Override
    public List<User> findUser(User user) {
        return userDao.findUser(user);
    }

    @Override
    public int editPassword(Emp emp) {
        return userDao.editPassword(emp);
    }
}
