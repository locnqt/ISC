/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isc_onjob_2;

/**
 *
 * @author locnq
 */
public class Mydate {
    int day, month, year;

    public Mydate(String a) {
        String [] mang = a.split("\\/");
        this.day = Integer.parseInt(mang[0]);
        this.month= Integer.parseInt(mang[1]);
        this.year = Integer.parseInt(mang[2]);
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
