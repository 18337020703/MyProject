package com.wang.service;

import com.wang.dao.EmpDao;
import com.wang.entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
@Service
@Transactional
public class EmpServiceImpl implements EmpService {
    @Autowired
    private EmpDao empDao;
    @Override
    public void addOne(Object o) {
            empDao.insertOne(o);
    }

    @Override
    public void modifyOne(Object o) {
        empDao.updateOne(o);
    }

    @Override
    public void removeOne(String id) {
            empDao.deleteOne(id);
    }

    @Override
    public Object findOneById(String id) {
        return empDao.selectOneById(id);
    }

    @Override
    public List findAllById(String id) {
        return empDao.selectAllById(id);
    }

    @Override
    public Object findOneByName(String name) {
        return null;
    }

    @Override
    public List<Emp> findAll(Emp emp) {
        return null;
    }
    @Override
    public List<Emp> selectByPage(Integer page,String deptid) {
        Integer start=(page-1)*2;
        Integer size=2;
        return empDao.selectByPage(start,size,deptid);
    }

    @Override
    public int deleteByid(String id) {
        return empDao.deleteByid(id);
    }

    @Override
    public int editOne(Emp emp) {
        Date date=new Date();
        emp.setEmpcreatedate(date);
        return empDao.editOne(emp);
    }

    @Override
    public int addEmployee(Emp emp) {
        Date date=new Date();
        emp.setEmpcreatedate(date);
        return empDao.addEmployee(emp);
    }
}
