package com.wang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Emp implements Serializable {
    private String id;
    private String name;
    private String password;
    private String truename;
    private String phone;
    private String deptid;
    private String paytype;
    private Integer upload;
    private Integer workstate;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date empcreatedate;

    public Emp() {
    }

    @Override
    public String toString() {
        return "Emp{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", truename='" + truename + '\'' +
                ", phone='" + phone + '\'' +
                ", deptid='" + deptid + '\'' +
                ", paytype='" + paytype + '\'' +
                ", upload=" + upload +
                ", workstate=" + workstate +
                ", empcreatedate=" + empcreatedate +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid;
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype;
    }

    public Integer getUpload() {
        return upload;
    }

    public void setUpload(Integer upload) {
        this.upload = upload;
    }

    public Integer getWorkstate() {
        return workstate;
    }

    public void setWorkstate(Integer workstate) {
        this.workstate = workstate;
    }

    public Date getEmpcreatedate() {
        return empcreatedate;
    }

    public void setEmpcreatedate(Date empcreatedate) {
        this.empcreatedate = empcreatedate;
    }

    public Emp(String id, String name, String password, String truename, String phone, String deptid, String paytype, Integer upload, Integer workstate, Date empcreatedate) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.truename = truename;
        this.phone = phone;
        this.deptid = deptid;
        this.paytype = paytype;
        this.upload = upload;
        this.workstate = workstate;
        this.empcreatedate = empcreatedate;
    }
}
