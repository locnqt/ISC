/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kethua;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Me
 */
public class main {
    static Scanner sc = new Scanner(System.in);
    static ArrayList<vanphong> listvanphong = new ArrayList();
    static ArrayList<banhang> listbanhang = new ArrayList();
    static ArrayList<sanxuat> listsanxuat = new ArrayList();
    
//    static ArrayList<nhanvien> listnhanvien = new ArrayList<nhanvien>();
    public static  void docFile (String path){
        try{
            FileInputStream fis = new FileInputStream(path);
            InputStreamReader isr = new InputStreamReader(fis);
            BufferedReader bfr = new BufferedReader(isr);
            String line = bfr.readLine();
            while(line != null){
                String []array = line.split(",");
                if(array.length == 5){
//                    nhanvien nv = new nhanvien(array[0],array[1],Integer.parseInt(array[2]),Integer.parseInt(array[3]));
//                    listnhanvien.add(nv);
                      if(array[2].equals("vanphong")){
                          vanphong vp = new vanphong(array[0],array[1],array[2],Integer.parseInt(array[3]),Integer.parseInt(array[4]));
                          listvanphong.add(vp);
                      }
                      else if(array[2].equals("banhang")){
                          banhang bh = new banhang(array[0],array[1],array[2],Integer.parseInt(array[3]),Integer.parseInt(array[4]));
                          listbanhang.add(bh);
                      }
                      else if(array[2].equals("sanxuat")){
                          sanxuat sx = new sanxuat(array[0],array[1],array[2],Integer.parseInt(array[3]),Integer.parseInt(array[4]));
                          listsanxuat.add(sx);
                      }
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
    public static void main(String[] args) throws FileNotFoundException, IOException {
//        System.out.println("Nhap so nhan vien: ");
//        int n = sc.nextInt();
        vanphong vp = new vanphong();
        banhang bh = new banhang();
        sanxuat sx = new sanxuat();
        String fileName = "text.txt";
//        for(int i=0; i<n; i++){
//            vp.inputvanphong();
//            listvanphong.add(vp);
////            vp.showvanphong();
//            listvanphong.get(i).showvanphong();
//        }
        docFile(fileName);
        
        for(int i=0; i<listvanphong.size(); i++){
            listvanphong.get(i).showvanphong();
            System.out.println("");
        }
        for(int i=0; i<listbanhang.size(); i++){
            listbanhang.get(i).showbanhang();
            System.out.println("");
        }
        for(int i=0; i<listsanxuat.size(); i++){
            listsanxuat.get(i).showbanhang();
            System.out.println("");
        }
    }
}
