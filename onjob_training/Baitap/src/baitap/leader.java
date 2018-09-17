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
public class leader extends person{
    double luong;
    double thuong;

    public boolean ktraluong(int luong){
        if(luong > 100) return true;
        else
        return false; 
    }

    public leader(double luong, double thuong) {
        this.luong = luong;
        this.thuong = thuong;
    }

    public leader(double luong, double thuong, String id, String name, date dob, password pass, String chucvu, double thunhap) {
        super(id, name, dob, pass, chucvu, thunhap);
        this.luong = luong;
        this.thuong = thuong;
    }
    
    public double thunhap(){
        thunhap = luong+thuong;
        return thunhap;
    }
    
}
