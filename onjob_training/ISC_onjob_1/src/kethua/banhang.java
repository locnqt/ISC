/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kethua;

import java.util.Scanner;

/**
 *
 * @author Me
 */
public class banhang extends nhanvien{
    Scanner sc = new Scanner(System.in);
    int hesothuong;

    public banhang() {
    }
    public banhang(String MaNV, String HotenNV, String loainv, long mucluong, int hesothuong) {
//        super(MaNV, HotenNV, mucluong);
        this.MaNV = MaNV;
        this.HotenNV = HotenNV;
        this.loaiNV = loainv;
        this.mucluong = mucluong;
        this.hesothuong = hesothuong;
        this.thuong = 150000*hesothuong;
    }
//    public banhang(String MaNV, String HotenNV, long mucluong, long thuong) {
//        super(MaNV, HotenNV, mucluong, thuong);
//    }
    public void inputbanhang(){
        sc.nextLine();
        System.out.println("Nhap ma nhan vien: ");
        MaNV = sc.nextLine();
        System.out.println("Nhap ho ten nhan vien: ");
        HotenNV = sc.nextLine();
        System.out.println("Nhap muc luong nhan vien: ");
        mucluong = sc.nextInt();
        System.out.println("Nhap he so thuong cua nhan vien: ");
        hesothuong = sc.nextInt();
    }
    public void showbanhang(){
//        thuong = 150000*hesothuong;
        System.out.println("Ma nhan vien: "+MaNV);
        System.out.println("Ho ten nhan vien: "+HotenNV);
        System.out.println("Loai nhan vien: "+loaiNV);
        System.out.println("Muc luong nhan vien: "+mucluong);
        System.out.println("He so thuong cua nhan vien: "+hesothuong);
        System.out.println("Tien thuong nhan vien: "+thuong);
    }
}
