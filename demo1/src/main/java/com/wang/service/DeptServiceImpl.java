package com.wang.service;

import com.wang.dao.DeptDao;
import com.wang.entity.Dept;
import com.wang.entity.Emp;
import com.wang.entity.Incomes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class DeptServiceImpl implements DeptService {

    @Autowired
    private DeptDao deptDao;
    @Override
    public void addOne(Object o) {

        deptDao.insertOne(o);
    }

    @Override
    public void modifyOne(Object o) {
        deptDao.updateOne(o);
    }

    @Override
    public void removeOne(String id) {
            deptDao.deleteOne(id);
    }

    @Override
    public Object findOneById(String id) {
         return deptDao.selectOneById(id);
    }

    @Override
    public List findAllById(String id) {
        return deptDao.selectAllById(id);
    }


    @Override
    public Object findOneByName(String name) {
        return null;
    }

    @Override
    public List<Emp> findAll(Emp emp) {
        return deptDao.selectAll(emp);
    }

    @Override
    public List<Dept> findClient(Dept dept) {
        return deptDao.findClient(dept);
    }

    @Override
    public int addClient(Dept dept) {
        Date date=new Date();
        dept.setCreatedate(date);
        return deptDao.addClient(dept);
    }

    @Override
    public int editClient(Dept dept) {
        Date date=new Date();
        dept.setCreatedate(date);
        return deptDao.editClient(dept);
    }

    @Override
    public List<Emp> findEmp(Emp emp) {
        return deptDao.findEmp(emp);
    }

    @Override
    public int addIncome(Incomes incomes) {
        Date date=new Date();
        incomes.setApprovetime(date);
        incomes.setSubmittime(date);
        System.out.println("收支数据为"+incomes);
        return deptDao.addIncome(incomes);
    }

    @Override
    public List<Incomes> findIncomes(Incomes incomes) {
        return deptDao.findIncomes(incomes);
    }

    @Override
    public List<Incomes> findIncomesApprove(Incomes incomes) {
        return deptDao.findIncomesApprove(incomes);
    }

    @Override
    public List<Incomes> findIncomesRefuse(Incomes incomes) {
        return deptDao.findIncomesRefuse(incomes);
    }

    @Override
    public int editIncomes(String id) {
        return deptDao.editIncomes(id);
    }

    @Override
    public int refuseIncomes(Incomes incomes) {
        Date date=new Date();
        incomes.setApprovetime(date);
        return deptDao.refuseIncomes(incomes);
    }

    @Override
    public int changeIncomesPath(Incomes incomes) {
        return deptDao.changeIncomesPath(incomes);
    }

    @Override
    public List<Incomes> findAllIncomesApprove(Incomes incomes) {
        return deptDao.findAllIncomesApprove(incomes);
    }

    @Override
    public List<Incomes> findAllIncomesRefuse(Incomes incomes) {
        return deptDao.findAllIncomesRefuse(incomes);
    }



    @Override
    public double sum() {
        return deptDao.sum();
    }

    @Override
    public double pay() {
        return deptDao.pay();
    }

//    @Override
//    public List<Emp> findAllUserLimit(String tiaojian, Integer page, Integer limit) {
//        return deptDao.findAllUserLimit(tiaojian,page,limit);
//    }


//    @Override
//    @Transactional(propagation = Propagation.SUPPORTS)
//    public List findAll(Emp emp) {
//        return deptDao.selectAll(emp);
//    }

}
