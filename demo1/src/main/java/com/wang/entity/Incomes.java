package com.wang.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Incomes implements Serializable {
    private String id;
    private String client;
    private String incomemethod;
    private String incometype;
    private String empid;
    private String createman;
    private String modifier;
    private String notes;
    private Double money;
    private String state;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date incometime;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date submittime;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date approvetime;
    private String path;

    @Override
    public String toString() {
        return "Incomes{" +
                "id='" + id + '\'' +
                ", client='" + client + '\'' +
                ", incomemethod='" + incomemethod + '\'' +
                ", incometype='" + incometype + '\'' +
                ", empid='" + empid + '\'' +
                ", createman='" + createman + '\'' +
                ", modifier='" + modifier + '\'' +
                ", notes='" + notes + '\'' +
                ", money=" + money +
                ", state='" + state + '\'' +
                ", incometime=" + incometime +
                ", submittime=" + submittime +
                ", approvetime=" + approvetime +
                ", path='" + path + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getIncomemethod() {
        return incomemethod;
    }

    public void setIncomemethod(String incomemethod) {
        this.incomemethod = incomemethod;
    }

    public String getIncometype() {
        return incometype;
    }

    public void setIncometype(String incometype) {
        this.incometype = incometype;
    }

    public String getEmpid() {
        return empid;
    }

    public void setEmpid(String empid) {
        this.empid = empid;
    }

    public String getCreateman() {
        return createman;
    }

    public void setCreateman(String createman) {
        this.createman = createman;
    }

    public String getModifier() {
        return modifier;
    }

    public void setModifier(String modifier) {
        this.modifier = modifier;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getIncometime() {
        return incometime;
    }

    public void setIncometime(Date incometime) {
        this.incometime = incometime;
    }

    public Date getSubmittime() {
        return submittime;
    }

    public void setSubmittime(Date submittime) {
        this.submittime = submittime;
    }

    public Date getApprovetime() {
        return approvetime;
    }

    public void setApprovetime(Date approvetime) {
        this.approvetime = approvetime;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Incomes() {
    }

    public Incomes(String id, String client, String incomemethod, String incometype, String empid, String createman, String modifier, String notes, Double money, String state, Date incometime, Date submittime, Date approvetime, String path) {
        this.id = id;
        this.client = client;
        this.incomemethod = incomemethod;
        this.incometype = incometype;
        this.empid = empid;
        this.createman = createman;
        this.modifier = modifier;
        this.notes = notes;
        this.money = money;
        this.state = state;
        this.incometime = incometime;
        this.submittime = submittime;
        this.approvetime = approvetime;
        this.path = path;
    }
}
