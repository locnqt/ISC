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
public class person {
    String id,name;
    date dob;
    password pass;
    String chucvu;
    double thunhap;
     
    public person(){
        
    }
    
    public person(String id, String name, date dob, password pass, String chucvu,double thunhap) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.pass = pass;
        this.chucvu = chucvu;
        this.thunhap = thunhap;
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

    public date getDob() {
        return dob;
    }

    public void setDob(date dob) {
        this.dob = dob;
    }

    public void setThunhap(double thunhap) {
        this.thunhap = thunhap;
    }

    public password getPass() {
        return pass;
    }

    public void setPass(password pass) {
        this.pass = pass;
    }
    
    public boolean isBirthday(date dob){
        if(dob.getYear()<=2000 && dob.getYear()>=1950)
        return true; 
        else return false;
    }
    public boolean isId(String id){
        id = id.toUpperCase();
        if(id.length()!=6) return false;
        int dem =0;
        for(int i=0;i<4;i++){
            if(id.charAt(i)>=48 && id.charAt(i)<=57) dem++;
        }
        if(id.charAt(4)=='-') dem++;
        if(id.charAt(5)>=65 && id.charAt(5)<=68) dem++;
        if(dem != 6) return false;
        else return true;
    }

    public String getChucvu() {
        return chucvu;
    }

    public void setChucvu(String chucvu) {
        this.chucvu = chucvu;
    }

    public double getThunhap() {
        return thunhap;
    }
    
}
