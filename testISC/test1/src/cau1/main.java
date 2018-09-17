/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cau1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.InputMismatchException;
import java.util.Scanner;

/**
 *
 * @author locnq
 */
public class main {

    public void dsDau() {
    }

    public void dsThuong() {
    }

    public void tsCaonhat() {
    }

    public static void main(String[] args) {
        int n;
        ArrayList<ThiSinh> ds = new ArrayList<>();
        Scanner sc = new Scanner(System.in);
        try {
            System.out.print("Nhap so luong thi sinh: ");
            n = sc.nextInt();
            ThiSinh t;
            for (int i = 1; i <= n; i++) {
                sc.nextLine();
                System.out.println("Nhap thong tin thi sinh thu " + i + " :");
                System.out.print("Nhap ma thi sinh: ");
                String mats = sc.nextLine();
                System.out.print("Nhap ten thi sinh: ");
                String ten = sc.nextLine();
                System.out.print("Nhap ngay sinh: ");
                String ngaysinh = sc.nextLine();
                System.out.print("Nhap diem toan: ");
                float diemtoan = sc.nextFloat();
                System.out.print("Nhap diem van: ");
                float diemvan = sc.nextFloat();
                System.out.print("Nhap diem anh: ");
                float diemanh = sc.nextFloat();
                t = new ThiSinh(mats, diemtoan, diemvan, diemanh, ten, ngaysinh);
                ds.add(t);
            }
            //Sap xep giam dan theo diem TB
            System.out.println("--------------------------Danh Sach thi sinh-----------------------------");
            Collections.sort(ds, new Comparator<ThiSinh>() {
                @Override
                public int compare(ThiSinh t, ThiSinh t1) {
                if (t.diemTB()> t1.diemTB())
                            return -1;
                        else{
                            if (t.diemTB()== t1.diemTB())
                                return 0;
                            else
                                return 1;
                        }
            } 
            });
            for (ThiSinh ts : ds) {
                ts.showAll();
            }
            //Danh sach hi sinh dau
            System.out.println("--------------------------Danh Sach thi sinh dau-----------------------------");
            for(ThiSinh ts : ds){
                if(ts.ktDau()){
                    ts.showAll();
                }
            }
            //Danh sach thi sinh dc khen thuong
            System.out.println("--------------------------Danh Sach thi sinh khen thuong-----------------------------");
            for(ThiSinh ts : ds){
                if(ts.ktThuong()){
                    ts.showAll();
                }
            }
            //thi sinh co diem tb cao nhat
            System.out.println("--------------------------Thi sinh co diem trung binh cao nhat-----------------------------");
            ds.get(0).showAll();
        } catch (InputMismatchException e) {
            System.out.println("Ban vua nhap vao chữ");
            System.out.println("Du lieu nhap phai la SO ");
        }
    }
}
