package com.wang.dao;

import com.wang.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface baseDao<T> {
    void insertOne(T t);

    void updateOne(T t);

    void deleteOne(String id);

     T selectOneById(String id);

     List<T> selectAllById(String id);

     T selectOneByName(String name);

     List<Emp> selectAll(Emp emp);
    //参数1:起始条数   参数2:每页显示记录数据
    List<T> selectByPage(@Param("start") Integer start, @Param("size") Integer size, @Param("deptid") String deptid);
}
