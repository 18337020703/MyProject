package com.wang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Dept implements Serializable {
    private String id;
    private String name;
    private String phone;
    private String type;
    private String empid;
    private String notes;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date createdate;

    public Dept() {
    }

    public Dept(String id, String name, String phone, String type, String empid, String notes, Date createdate) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.type = type;
        this.empid = empid;
        this.notes = notes;
        this.createdate = createdate;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", type='" + type + '\'' +
                ", empid='" + empid + '\'' +
                ", notes='" + notes + '\'' +
                ", createdate=" + createdate +
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEmpid() {
        return empid;
    }

    public void setEmpid(String empid) {
        this.empid = empid;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}
