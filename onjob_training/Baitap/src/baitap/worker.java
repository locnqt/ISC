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
public class worker extends person{
    double luong;
    date hiredate;

    public worker(double luong, date hiredate) {
        this.luong = luong;
        this.hiredate = hiredate;
    }

    public worker(double luong, date hiredate, String id, String name, date dob, password pass, String chucvu, double thunhap) {
        super(id, name, dob, pass, chucvu, thunhap);
        this.luong = luong;
        this.hiredate = hiredate;
    }

    public double thunhap(){
        thunhap=luong;
        return thunhap;
    }
    
    public boolean ktrahiredate(date hiredate){
        if(hiredate.getYear()<=2000 && hiredate.getYear()>=1950)
        return true; 
        else return false;
    }
    
    public boolean ktraluong(int luong){
        if(luong > 100) return true;
        else
        return false; 
    }
}
