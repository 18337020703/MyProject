package com.wang.service;

import com.wang.entity.Dept;
import com.wang.entity.Emp;
import com.wang.entity.Incomes;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeptService extends baseService {
   // List<Emp> findAllUserLimit(@Param("tiaojian") String tiaojian, @Param("page") Integer page, @Param("limit") Integer limit);
   List<Dept> findClient(Dept dept);
   int addClient(Dept dept);
   int editClient(Dept dept);
   List<Emp> findEmp(Emp emp);
   int addIncome(Incomes incomes);
   List<Incomes> findIncomes(Incomes incomes);
   List<Incomes> findIncomesApprove(Incomes incomes);
   List<Incomes> findIncomesRefuse(Incomes incomes);
   int editIncomes(String id);
   int refuseIncomes(Incomes incomes);
   int changeIncomesPath(Incomes incomes);
   List<Incomes> findAllIncomesApprove(Incomes incomes);
   List<Incomes> findAllIncomesRefuse(Incomes incomes);
   double sum();
   double pay();
}
