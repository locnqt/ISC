/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isc_onjob_2;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author Me
 */
public class main {
    public static boolean checkID(person p){
        if(p.id.length()!=6){
            System.out.println("ID should be XXXX–L");
            return false;
        }
        boolean digit = false;
            for(int i=0; i<4; i++){
                if(Character.isDigit(p.id.charAt(i))){
                    digit = true;
                    break;
                }
            }
            if(!digit){
                System.out.println("ID should be XXXX–L with X is 0-9");
                return false;
            }
            if(p.id.charAt(4) != '-'){
                System.out.println("ID should be XXXX–L"); 
                return false;
            }
            if(p.id.charAt(5)<= 65 || p.id.charAt(5)>=68){
                System.out.println("ID should be XXXX–L with L is A-D");
                return false;
            }
        return true;
    }
    public static boolean isHire(worker w){
        if((w.hireDate.year - w.date.year)<18) return false;
        else return true;
    }
    public static void wsalary(worker w){
        if(w.salary<=100) System.out.println("Salary must be greater than 100$");
    }
    public static void lsalary(leader l){
        if(l.salary<=200) System.out.println("Salary must be greater than 200$");
        if(l.bonus<=0) System.out.println("Bonus must be greater than zero");
    }
    static ArrayList<person> listperson = new ArrayList();
    static ArrayList<worker> listworker = new ArrayList();
    static ArrayList<leader> listleader= new ArrayList();
    public static void openData(String path){
        
        try{
            FileInputStream fis = new FileInputStream(path);
            InputStreamReader isr = new InputStreamReader(fis);
            BufferedReader bfr = new BufferedReader(isr);
            String line = bfr.readLine();
            while(line != null){
                String []arr = line.split(",");
                if(arr.length == 8){
                    if(arr[5].trim().equals("worker")){
                        worker w = new worker(arr[1], arr[0], new date(arr[2].trim()), new password(arr[3], arr[4].trim().equals("true")), Integer.parseInt(arr[6].trim()), new date(arr[7].trim()));
                        listperson.add(w);
                    }
                    else if(arr[5].trim().equals("leader")){
                        leader l = new leader(arr[1], arr[0], new date(arr[2].trim()), new password(arr[3], arr[4].trim().equals("true")), Integer.parseInt(arr[6].trim()), Integer.parseInt(arr[7].trim()));
                        listperson.add(l);
                    }
                    System.out.println("index worker: "+listperson.size());
                    System.out.println("index leader: "+listperson.size());
                }
                line = bfr.readLine();
            }
            fis.close();
            isr.close();
            bfr.close();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }
    public static void main(String[] args) throws ParseException {
        Scanner sc = new Scanner(System.in);
//        password password = new password("123456Aa", false);
//        DateFormat sourceFormat = new SimpleDateFormat("dd/MM/yyyy");
//String dateAsString = "25/12/1996";
//Date date = sourceFormat.parse(dateAsString);
//        date d1 = new date("22/2/1996");
//        date d2 = new date("22/2/2000");
//        date d3 = new date("22/2/1990");
//        date d4 = new date("22/2/2016");
//        person p = new person("abc", "1234-B",d1,password);
//        worker w = new worker("abc", "1234-B", d2, password, 50, d4);
//        leader l = new leader("abc", "1234-B", d3, password, 110, 50);
//myfile f = new myfile();
String fileName = "a.txt";
openData(fileName);
        if(checkID(listperson.get(0))) System.out.println("ID OK!");
        if(isHire((worker) listperson.get(0))) System.out.println("Worker hired!");
        else System.out.println("Worker under 18");
        System.out.println(listperson.get(0).pass.text);
//        if(isVaild(password)) System.out.println("password OK!");
        listperson.get(0).pass.encrypt();
        listperson.get(1).pass.encrypt();
        listperson.get(0).pass.decrypt();
        listperson.get(1).pass.decrypt();
        wsalary((worker) listperson.get(0));
        lsalary((leader) listperson.get(1));
//        System.out.println(p.date.day+"/"+p.date.month+"/"+p.date.year);
        
    }
}
