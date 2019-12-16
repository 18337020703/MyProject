package com.wang.dao;

import com.wang.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpDao extends baseDao {
     int deleteByid(String id) ;
     int editOne(Emp emp);
     int addEmployee(Emp emp);


}
