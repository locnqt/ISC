/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baitap;

/**
 *
 * @author ghost
 */
public class date {
    int day , month,year;

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

    @Override
    public String toString() {
        return day+"/"+month+"/"+year;
    }

    public date(String a) {
        String mang []=new String[3];
        for(int i=0;i<3;i++){
            mang[i]= "";
        }
        int j=0;
        for(int i=0;i<a.length();i++){
            if(a.charAt(i)=='/') j++;
            else mang[j]= mang[j]+ a.charAt(i);
        }
        this.day= Integer.parseInt(mang[0]);
        this.month= Integer.parseInt(mang[1]);
        this.year= Integer.parseInt(mang[2]);
    }
    
}
