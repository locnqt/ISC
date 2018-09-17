/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kethua;

/**
 *
 * @author Me
 */
public class nhanvien {
    String MaNV;
    String HotenNV;
    long mucluong;
    long thuong;
    String loaiNV;

    public nhanvien(String MaNV, String HotenNV, long mucluong, long thuong, String loaiNV) {
        this.MaNV = MaNV;
        this.HotenNV = HotenNV;
        this.mucluong = mucluong;
        this.thuong = thuong;
        this.loaiNV = loaiNV;
    }

    

    nhanvien() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getMaNV() {
        return MaNV;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public String getHotenNV() {
        return HotenNV;
    }

    public void setHotenNV(String HotenNV) {
        this.HotenNV = HotenNV;
    }

    public long getMucluong() {
        return mucluong;
    }

    public void setMucluong(long mucluong) {
        this.mucluong = mucluong;
    }

    public long getThuong() {
        return thuong;
    }

    public void setThuong(long thuong) {
        this.thuong = thuong;
    }

    public String getLoaiNV() {
        return loaiNV;
    }

    public void setLoaiNV(String loaiNV) {
        this.loaiNV = loaiNV;
    }
    
}
