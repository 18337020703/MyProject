package com.wang.service;

import com.wang.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpService extends baseService {
    List<Emp> selectByPage(Integer page, String deptid);
    int deleteByid(String id) ;
    int editOne(Emp emp);
    int addEmployee(Emp emp);
}
