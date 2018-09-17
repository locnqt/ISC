/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isc_onjob_2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Me
 */
public abstract class person {
    String name;
    String id;
    date date;
    password pass;
//    double income;

    public person(String name, String id, date date, password pass) {
        this.name = name;
        this.id = id;
        this.date = date;
        this.pass = pass;
//        if(checkID()) System.out.println("ID OK!");
//        isBirthday();
    }

    public String getName() {
        return name;
    }

    public String getId() {
        return id;
    }

    public date getDate() {
        return date;
    }

    public password getPass() {
        return pass;
    }
    public boolean isBirthday(){
        if(date.year<1950 || date.year>2000){ System.out.println("Date of birth must be within the range 1950-2000"); return false;}
        return true;
    }
    public abstract double getIncome();
}
