package com.wang.controller;


import com.wang.entity.Dept;
import com.wang.entity.Emp;
import com.wang.service.DeptService;
import com.wang.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("Emp")
public class EmpController {
    @Autowired
    private EmpService empService;

    @RequestMapping("/deleteOne")
    public Map<String,Object> deleteUser(String id){
        System.out.println("lalala");
        System.out.println(id);
        Map<String,Object> map = new HashMap<>();
      //  empService.removeOne(id);
        int i=empService.deleteByid(id);
        if(i==1) {
            map.put("code", 200);
            map.put("msg", " 删除成功");
        }
        return map;
    }

//    添加
    @RequestMapping(value = "addOne",method = RequestMethod.POST)
        public Map<String,Object> addOne(Emp emp){
            System.out.println("崩溃了");
            System.out.println(emp);
            Map<String,Object> map = new HashMap<>();
                int i=empService.addEmployee(emp);
                System.out.println(i);
        System.out.println("到这了");
                if(i==1){
                    map.put("code", 200);
                    map.put("msg", " 添加成功");
                }
                return map;
        }

    @RequestMapping(value = "edit",method = RequestMethod.POST)
        public Map<String,Object> editOne(Emp emp){
            System.out.println(emp);
            System.out.println("妈的，头疼aaaa");
            Map<String,Object> map = new HashMap<>();
            int i = empService.editOne(emp);
        System.out.println("i="+i);
            if (i==1){
                map.put("code", 200);
                map.put("msg", " 添加成功");
            }
            return map;
        }

}
