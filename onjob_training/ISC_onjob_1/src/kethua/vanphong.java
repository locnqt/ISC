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
public class vanphong extends nhanvien{
    Scanner sc = new Scanner(System.in);
//    nhanvien nv = new nhanvien();
    int thanglamviec;
//    nhanvien nv = new nhanvien();

    public vanphong() {
    }
    public vanphong(String MaNV, String HotenNV, String loainv, long mucluong, int thanglamviec) {
//        super(MaNV, HotenNV, mucluong, thuong);
        this.MaNV = MaNV;
        this.HotenNV = HotenNV;
        this.loaiNV = loainv;
        this.mucluong = mucluong;
        this.thanglamviec = thanglamviec;
        if(thanglamviec<6) this.thuong = 100000;
        else this.thuong = 200000 + mucluong/10*thanglamviec/6;
//        this.thuong = thuong;
    }
//    public vanphong(String MaNV, String HotenNV, long mucluong, long thuong) {
//        super(MaNV, HotenNV, mucluong, thuong);
//    }
//    public void inputvanphong(){
//        sc.nextLine();
//        System.out.println("Nhap ma nhan vien: ");
//        MaNV = sc.nextLine();
//        System.out.println("Nhap ho ten nhan vien: ");
//        HotenNV = sc.nextLine();
//        System.out.println("Nhap muc luong nhan vien: ");
//        mucluong = sc.nextInt();
//        System.out.println("Nhap so thang lam viec cua nhan vien: ");
//        thanglamviec = sc.nextInt();
//    }
    public void showvanphong(){
//        if(thanglamviec<6) thuong = 100000;
//        else thuong = 200000 + mucluong/10*thanglamviec/6;
        System.out.println("Ma nhan vien: "+MaNV);
        System.out.println("Ho ten nhan vien: "+HotenNV);
        System.out.println("Loai nhan vien: "+loaiNV);
        System.out.println("Muc luong nhan vien: "+mucluong);
        System.out.println("So thang lam viec cua nhan vien: "+thanglamviec);
        System.out.println("Tien thuong nhan vien: "+thuong);
    }
}
