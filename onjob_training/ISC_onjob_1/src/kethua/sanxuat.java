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
public class sanxuat extends nhanvien{
    Scanner sc = new Scanner(System.in);
    int sosp;

    public sanxuat() {
    }
    public sanxuat(String MaNV, String HotenNV, String loainv, long mucluong, int sosp) {
//        super(MaNV, HotenNV, mucluong, thuong);
        this.MaNV = MaNV;
        this.HotenNV = HotenNV;
        this.loaiNV = loainv;
        this.mucluong = mucluong;
        this.sosp = sosp;
        this.thuong = 20000*sosp;
    }
//    public sanxuat(String MaNV, String HotenNV, long mucluong, long thuong) {
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
        System.out.println("Nhap so san pham cua nhan vien: ");
        sosp = sc.nextInt();
    }
    public void showbanhang(){
//        thuong = 20000*sosp;
        System.out.println("Ma nhan vien: "+MaNV);
        System.out.println("Ho ten nhan vien: "+HotenNV);
        System.out.println("Loai nhan vien: "+loaiNV);
        System.out.println("Muc luong nhan vien: "+mucluong);
        System.out.println("So san pham cua nhan vien: "+sosp);
        System.out.println("Tien thuong nhan vien: "+thuong);
    }
}
