package com.wang;


import com.alibaba.druid.pool.DruidDataSource;
import com.wang.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootContextLoader;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@SpringBootTest(classes = Demo1Application.class)
@RunWith(SpringRunner.class)
public class Demo1ApplicationTests {
    @Autowired
    private UserService userService;
    @Test
    public void testconnection(){
      //  List all = userService.findAll();
      //  all.forEach(person->{
      //      System.out.println(person);
      //  });
    }



}
