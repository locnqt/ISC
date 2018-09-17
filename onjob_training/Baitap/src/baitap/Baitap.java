/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baitap;

import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Scanner;
import baitap.person;

/**
 *
 * @author ghost
 */
public class Baitap {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException, IOException {
        // TODO code application logic here
        Scanner sc= new Scanner (System.in);
        FileInputStream fis = new FileInputStream("a.txt");
        DataInputStream dis = new DataInputStream(fis);
        String a[] = new String [100];
        person mangps[] = new person[100];
        for(int i=0;i<100;i++){
            a[i] = dis.readLine();
            System.out.println(a[i]);
            if(a[i]==null) break;
            mangps[i]=chuyenperson(a[i]);
        }
        boolean ktra;
        ktra = mangps[0].isBirthday(mangps[0].getDob());
        System.out.append(ktra+" ");
        ktra = mangps[1].isId(mangps[1].getId());
        System.out.append(ktra+" ");
        System.out.append(mangps[0].getChucvu()+" "+mangps[0].getThunhap());
        System.out.append(mangps[1].getChucvu()+" "+mangps[1].getThunhap());
    }
    public static person chuyenperson(String a){
        String chuoi[] = new String [8];
        for(int i=0;i<8;i++){
            chuoi[i]= "";
        }
        int j=0;
        for(int i=0;i<a.length();i++){
            if(a.charAt(i)==',') {
                chuoi[j] = chuoi[j].trim();
                j++;
            }
            else chuoi[j]= chuoi[j]+ a.charAt(i);
        }
        person ps = new person();
        boolean ktra ;
        ps.setId(chuoi[0]);
        ktra = ps.isId(ps.getId());
        if(ktra == false) {
            System.out.println("Sai ID");
            return null;
        }
        ps.setName(chuoi[1]);
        date day = new date(chuoi[2]);
        ps.setDob(day);
        ktra = ps.isBirthday(day);
        if(ktra == false) {
            System.out.println("Sai ngay sinh");
            return null;
        }
        password pass=null;
        if(chuoi[4].equals("true")){
            pass = new password(chuoi[3],true);
        }else
            pass = new password(chuoi[3],false);
        ps.setPass(pass);
        ktra = ps.getPass().isvaild(pass);
         if(ktra == false) {
            System.out.println("Sai Password");
            return null;
        }
        ps.setChucvu(chuoi[5]);
        if(ps.getChucvu().equals("worker")){
            int so = Integer.parseInt(chuoi[6]);
            day = new date(chuoi[7].trim());
            worker wr =new worker(so,day);
            ps.thunhap = wr.thunhap();
        }else {
            int so1 = Integer.parseInt(chuoi[6]);
            int so2 = Integer.parseInt(chuoi[7].trim());
            leader lr=new leader(so1,so2);
            ps.thunhap = lr.thunhap();
        }
        return ps;
    }
    
}
