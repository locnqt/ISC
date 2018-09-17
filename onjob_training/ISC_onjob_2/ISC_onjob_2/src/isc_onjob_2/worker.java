/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isc_onjob_2;

import java.util.Date;

/**
 *
 * @author Me
 */
public class worker extends person{
    double salary;
    date hireDate;

//    public worker(String name, String id, Date date, password pass, double salary, Date hireDate) {
//        super(name, id, date, pass);
//        this.name = name;
//        this.id = id;
//        this.date = date;
//        this.pass = pass;
//        this.salary = salary;
//        this.hireDate = hireDate;
//    }
    public worker(String name, String id, date date, password pass, double salary, date hireDate) {
        super(name, id, date, pass);
        this.name = name;
        this.id = id;
        this.date = date;
        this.pass = pass;
        this.salary = salary;
        this.hireDate = hireDate;
    }

    public double getSalary() {
        return salary;
    }

    public isc_onjob_2.date getHireDate() {
        return hireDate;
    }
    
}
