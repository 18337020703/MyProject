package com.wang.controller;

import com.wang.entity.Dept;
import com.wang.entity.Emp;
import com.wang.entity.Incomes;
import com.wang.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("Dept")
public class DeptController {
    @Autowired
    private DeptService deptService;


    //查询总利润
    @RequestMapping(value = "lirunbi",method = RequestMethod.POST)
    @ResponseBody
    public Map lirunbi(){
        System.out.println("查询lirunbi");
        HashMap<String,Object> map = new HashMap<>();
        double incomes=deptService.sum();
        double pay=deptService.pay();
        double data =incomes/(pay+incomes);
        System.out.println("总利润比为"+data);
        map.put("code",200);
        map.put("data",data);
        return map;
    }

    //查询总利润
    @RequestMapping(value = "lirun",method = RequestMethod.POST)
    @ResponseBody
    public Map lirun(){
        System.out.println("查询lirun");
        HashMap<String,Object> map = new HashMap<>();
        double incomes=deptService.sum();
        double pay=deptService.pay();
        double data =incomes-pay;
        System.out.println("总利润为"+data);
        map.put("code",200);
        map.put("data",data);
        return map;
    }

    //查询总收入
    @RequestMapping(value = "paySum",method = RequestMethod.POST)
    @ResponseBody
    public Map pay(){
        System.out.println("查询支出总和");
        HashMap<String,Object> map = new HashMap<>();
        double data=deptService.pay();
        System.out.println("总支出为"+data);
        map.put("code",200);
        map.put("data",data);
        return map;
    }
    //查询总收入
    @RequestMapping(value = "sum",method = RequestMethod.POST)
    @ResponseBody
    public Map sum(){
        System.out.println("查询收入总和");
        HashMap<String,Object> map = new HashMap<>();
        double data= deptService.sum();
        System.out.println("总收入为"+data);
        map.put("code",200);
        map.put("data",data);
        return map;
    }

    //审批收支
    @RequestMapping(value = "editIncomes",method = RequestMethod.POST)
    public Map<String,Object> editIncomes(String id){
        System.out.println("审批通过的id为"+id);
        HashMap<String,Object> map = new HashMap<String, Object>();
        int i = deptService.editIncomes(id);
        if(i==1){
            map.put("code",0);
            map.put("msg","添加成功");
        }
        return map;
    }
    //拒绝审批
    @RequestMapping("refuseIncomes")
    public Map<String,Object> refuseIncomes(Incomes incomes){
        System.out.println("拒绝申请");
        System.out.println(incomes);
        HashMap<String,Object> map = new HashMap<String, Object>();
        int i = deptService.refuseIncomes(incomes);
        System.out.println("i="+i);
        if(i==1){
            map.put("code",0);
            map.put("msg","添加成功");
        }
        return map;
    }
    //增加收支
    @RequestMapping("income")
    @ResponseBody
    public Map<String,Object> income(Incomes incomes,HttpServletRequest request,MultipartFile path) throws IOException {
//        System.out.println(path);
//        System.out.println("122"+path.getOriginalFilename());
//        String realPath = request.getSession().getServletContext().getRealPath("/upload");
//        path.transferTo(new File(realPath,path.getOriginalFilename()));

        System.out.println("增加收支");
        System.out.println(incomes);
        HashMap<String,Object> map = new HashMap<String, Object>();
       incomes.setPath("");
        String sid=UUID.randomUUID().toString();
        incomes.setId(sid);
        int i = deptService.addIncome(incomes);
        System.out.println("i="+i);
        if (i==1){
            map.put("code",200);
            map.put("msg","添加成功");
        }
        return map;
    }
    //查询收支
    @RequestMapping("findIncomes")
    @ResponseBody
    public Map<String,Object> findIncome(Incomes incomes,HttpSession httpSession){
        System.out.println("查找收支");
        Emp emp =(Emp) httpSession.getAttribute("emp");
        System.out.println(emp.getTruename());
        incomes.setCreateman(emp.getTruename());
        System.out.println(incomes);
        HashMap<String,Object> map = new HashMap<String, Object>();
        List<Incomes> data = deptService.findIncomes(incomes);
        System.out.println(data);
            map.put("code",0);
            map.put("data",data);
            map.put("count",10);

        return map;
    }

    //查询已通过的
    @RequestMapping("findIncomesApprove")
    @ResponseBody
    public Map<String,Object> findIncomeApprove(Incomes incomes,HttpSession httpSession){
        System.out.println("查找通过的收支");
        Emp emp =(Emp) httpSession.getAttribute("emp");
        System.out.println(emp.getTruename());
        incomes.setCreateman(emp.getTruename());
        System.out.println(incomes);
        HashMap<String,Object> map = new HashMap<String, Object>();
        List<Incomes> data = deptService.findIncomesApprove(incomes);
        System.out.println(data);
        map.put("code",0);
        map.put("data",data);
        map.put("count",10);

        return map;
    }

    //查询收支
    @RequestMapping("findAllIncomes")
    @ResponseBody
    public Map<String,Object> findAllIncome(Incomes incomes){
        System.out.println("查找收支");
        System.out.println(incomes);
        HashMap<String,Object> map = new HashMap<String, Object>();
        List<Incomes> data = deptService.findAllIncomesRefuse(incomes);
        System.out.println(data);
        map.put("code",0);
        map.put("data",data);
        map.put("count",10);

        return map;
    }

    //查询已通过的
    @RequestMapping("findAllIncomesApprove")
    @ResponseBody
    public Map<String,Object> findAllIncomeApprove(Incomes incomes){
        System.out.println("查找通过的收支");
        System.out.println(incomes);
        HashMap<String,Object> map = new HashMap<String, Object>();
        List<Incomes> data = deptService.findAllIncomesApprove(incomes);
        System.out.println(data);
        map.put("code",0);
        map.put("data",data);
        map.put("count",10);

        return map;
    }
    //查询未通过的
    @RequestMapping("findIncomesRefuse")
    @ResponseBody
    public Map<String,Object> findIncomeRefuse(Incomes incomes, HttpSession httpSession ){
        System.out.println("查找拒绝的收支");
        Emp emp =(Emp) httpSession.getAttribute("emp");
        System.out.println(emp.getTruename());
        incomes.setCreateman(emp.getTruename());
        System.out.println(incomes);
        HashMap<String,Object> map = new HashMap<String, Object>();
        List<Incomes> data = deptService.findIncomesRefuse(incomes);
        System.out.println(data);
        map.put("code",0);
        map.put("data",data);
        map.put("count",10);

        return map;
    }
    //跳转
    @RequestMapping("jump")
    public String jump(HttpServletRequest request) {
        System.out.println("jump了");
        return "emp/addIncomes"; }
    //跳转
    @RequestMapping("jump2")
    public String jump2(HttpServletRequest request) {
        System.out.println("jump2了");
        return "user/lylogin"; }
    //查询所有
    @RequestMapping("findAll")
    public String findAll(HttpServletRequest request){

        System.out.println("jinqu");
        return "dept/homepage";
    }

    //查询所有
    @RequestMapping("findAll2")
    public String findAll2(HttpServletRequest request){

        System.out.println("jinqu");
        return "dept/emphomepage";
    }
    //开启分页查询
    @RequestMapping(value = "datalist")
    @ResponseBody
    public Map<String,Object> list(Emp emp){
        System.out.println("查询数据");
       System.out.println(emp);
        Map<String,Object>  map = new HashMap<String,Object>();
        List<Emp> data = deptService.findAll(emp);
        System.out.println("查询成功"+data);
        map.put("code", 0);
        map.put("data", data);
        map.put("count", 10);
        return  map;
    }
    //不是管理员的员工
    @RequestMapping("datalistAuthorise")
    @ResponseBody
    public Map<String,Object> findUser(Emp emp){
        System.out.println("查询非管理员员工");
        System.out.println(emp);
        Map<String,Object>  map = new HashMap<String,Object>();
        List<Emp> data = deptService.findEmp(emp);
        map.put("code", 0);
        map.put("data", data);
        map.put("count", 10);
        return  map;
    }

    //分页分页分页
//    @RequestMapping("fenye")
//    public Map<String,Object> findAllMapUser(Emp emp,@RequestParam(required = false) String tiaojian, @RequestParam(required = false,defaultValue = "1") Integer page, @RequestParam(required = false,defaultValue = "10") Integer limit){
//        Map<String,Object> map = new HashMap<>();
//        System.out.println(emp.getName());
//        List<Emp> allUser = deptService.findAllUserLimit(emp.getName(),page,limit);
//        List<Emp> allUserTJCount = deptService.findAll(emp);
//        int count = allUserTJCount.size();
//        map.put("code",0);
//        map.put("msg","");
//        map.put("data",allUser);
//        map.put("count",count);
//        return map;
//    }

    //查询客户
    @RequestMapping(value = "client")
    @ResponseBody
    public Map<String,Object> client(Dept dept){
        Map<String,Object> map =new HashMap<String, Object>();
        System.out.println("查找顾客");
        List<Dept> clientData = deptService.findClient(dept);
        System.out.println(clientData);
        map.put("code", 0);
        map.put("data", clientData);
        map.put("count", clientData.size());
        map.put("limit",3);
        return  map;
    }
    //添加客户
    @RequestMapping(value = "addClient",method = RequestMethod.POST)
    public Map<String,Object> addClient(Dept dept){
        System.out.println(dept);
        Map<String,Object> map =new HashMap<String, Object>();
        System.out.println("增加客户");
        int i = deptService.addClient(dept);
        System.out.println("i="+i);
        if (i==1){
            map.put("code", 0);
            map.put("msg", " 添加成功");
        }
        return  map;
    }
    //编辑客户
    @RequestMapping(value = "editClient",method = RequestMethod.POST)
    public Map<String,Object> editClient(Dept dept){
        System.out.println("编辑客户");
        System.out.println(dept);
        Map<String,Object> map = new HashMap<String, Object>();
        int i = deptService.editClient(dept);
        System.out.println("编辑成功 i ="+i);
        if (i==1){
            map.put("code",200);
            map.put("code","添加成功");
        }
        return map;
    }

     @RequestMapping("upload")
     @ResponseBody
    public  void upload(MultipartFile img,HttpServletRequest request,Incomes incomes) throws IOException {
        String realPath = request.getSession().getServletContext().getRealPath("/upload");
        img.transferTo(new File(realPath,img.getOriginalFilename()));
    }

}
