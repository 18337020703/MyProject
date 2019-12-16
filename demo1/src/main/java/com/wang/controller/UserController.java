package com.wang.controller;

import com.wang.entity.Emp;
import com.wang.entity.User;
import com.wang.service.UserService;
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
@RequestMapping("User")
public class UserController {
    @Autowired
    private UserService userService;


    //修改密码
    @RequestMapping("editPassword")
    @ResponseBody
    public Map<String,Object> editPassword(Emp emp){
        System.out.println("更改密码"+emp);
        HashMap<String,Object> map = new HashMap<>();
            if (emp.getTruename().equals(emp.getPaytype())&&emp.getPhone().equals(emp.getPassword())){
                System.out.println("进来了22222222222222222222222222222222222");
                int i=userService.editPassword(emp);
                System.out.println("i="+i);
                if (i==1){
                    System.out.println("修改成功");
                    map.put("code",200);
                    map.put("msg","更改成功");
                }
            }else {
                System.out.println("密码重置错误");
                map.put("msg","密码重置错误");
            }
        return map;
    }
    //    根据name查询一个
    @RequestMapping("findOneByName")
    public String findOneByName(String name, String password, HttpServletRequest request) {
        System.out.println("进来了");
        System.out.println(name);
        System.out.println(password);
        Emp emp = (Emp) userService.findOneByName(name);
        System.out.println(emp);
        if (emp != null && emp.getPassword().equals(password) && emp.getWorkstate()==4) {
//           request.getSession().setAttribute("name", emp.getTruename());
           request.getSession().setAttribute("emp", emp);
            return "redirect:/Dept/findAll";
        }else if (emp != null && emp.getPassword().equals(password) && emp.getWorkstate()==3){
            request.getSession().setAttribute("emp", emp);
            return "redirect:/Dept/findAll2";
        }else {
            String message = "用户名或密码错误！";
            request.setAttribute("message", message);
            return "user/lylogin";
        }
    }

    //添加管理员
    @RequestMapping(value = "addUser",method = RequestMethod.POST)
    public Map<String,Object> addUser(String id){
        System.out.println("添加管理员");
        System.out.println(id);
        HashMap<String,Object> map = new HashMap<String, Object>();
        int i= userService.addUser(id);
        System.out.println("i="+i);
        if (i==1){
            map.put("code",200);
            map.put("msg","添加成功");
        }
        return map;
    }
    @RequestMapping("findUser")
    @ResponseBody
    public Map<String,Object>findUser(User user){
        System.out.println("查找管理员");
        System.out.println(user);
        HashMap<String,Object> map = new HashMap<String, Object>();
        List<User> data = userService.findUser(user);
        System.out.println(data);
        map.put("code", 0);
        map.put("data", data);
        map.put("count", 10);
        return map;
        }
    @RequestMapping("deleteUser")
    public Map<String,Object>deleteUser(String id){
        HashMap<String,Object> map = new HashMap<String, Object>();
        int i =userService.deleteUser(id);
        if (i==1){
            map.put("code",200);
            map.put("msg","删除成功");
        }
        return map;
    }

}
