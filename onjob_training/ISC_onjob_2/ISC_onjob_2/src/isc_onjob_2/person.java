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
public class person {
    String name;
    String id;
    date date;
    password pass;

    public person(String name, String id, date date, password pass) {
//        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
//        String birthday = formatter.format(date);
//        System.out.println("Today : " + birthday);
        this.name = name;
        this.id = id;
        this.date = date;
        this.pass = pass;
//        if(checkID()) System.out.println("ID OK!");
        isBirthday();
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
    public void isBirthday(){
//        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
//        String birthday = formatter.format(date);
//        System.out.println("Birthday : " + birthday);
//        String [] mang = birthday.split("\\/");
//        int year = Integer.parseInt(mang[2]);
//        if(year<1950 || year>2000) System.out.println("Date of birth must be within the range 1950-2000");
        if(date.year<1950 || date.year>2000) System.out.println("Date of birth must be within the range 1950-2000");
    }
//    public boolean checkID(){
//        //XXXX–L
//        if(id.length()!=6){
//            System.out.println("ID should be XXXX–L");
//            return false;
//        }
//        
////        char c;
//        boolean digit = false;
//            for(int i=0; i<4; i++){
////                c = id.charAt(i);
//                if(Character.isDigit(id.charAt(i))){
//                    digit = true;
//                    break;
//                }
//            }
//            if(!digit){
//                System.out.println("ID should be XXXX–L with X is 0-9");
//                return false;
//            }
//            if(id.charAt(4) != '-'){
//                System.out.println("ID should be XXXX–L"); 
//                return false;
//            }
//            if(id.charAt(5)<= 65 || id.charAt(5)>=68){
//                System.out.println("ID should be XXXX–L with L is A-D");
//                return false;
//            }
//        return true;
//    }
}
