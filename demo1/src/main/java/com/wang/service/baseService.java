package com.wang.service;

import com.wang.entity.Emp;

import java.util.List;

public interface baseService<T> {
    void addOne(T t);

    void modifyOne(T t);

    void removeOne(String id);

    T findOneById(String id);

    List<T> findAllById(String id);

    T findOneByName(String name);

    List<Emp> findAll(Emp emp);
}
