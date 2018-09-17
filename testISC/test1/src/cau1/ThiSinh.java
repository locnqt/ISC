/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cau1;

/**
 *
 * @author locnq
 */
public class ThiSinh extends Nguoi implements Comparable<ThiSinh>{
    private String mats;
    private float diemtoan;
    private float diemvan;
    private float diemanh;
    private float diemtb=0;
    private Nguoi nguoi;

    public ThiSinh(String mats, float diemtoan, float diemvan, float diemanh, String name, String born) {
        super(name, born);
        this.mats = mats;
        this.diemtoan = diemtoan;
        this.diemvan = diemvan;
        this.diemanh = diemanh;
        this.nguoi = new Nguoi(name, born);
    }

    
    public float diemTB(){
        this.diemtb = (diemtoan + diemvan + diemanh)/3;
        return diemtb;
    }
    public boolean ktDau(){
        diemTB();
        if(diemtb>=5){
            return true;
        }
        else{
            return false;
        }
    }
    public boolean ktThuong(){
        diemTB();
        if(diemtb<8.5 || diemtoan<7 || diemvan<7 || diemanh<7){
            return false;
        }
        else return true;
    }
    public void showAll(){
        diemTB();
        System.out.println("Ma Thi Sinh: "+mats);
        nguoi.showPerson();
        System.out.println("Diem Toan: "+diemtoan);
        System.out.println("Diem Van: "+diemvan);
        System.out.println("Diem Anh: "+diemanh);
        System.out.println("Diem trung binh: "+diemtb);
        if(ktDau()){
            System.out.println("Kết quả: Đậu");
        }
        else System.out.println("Kết quả: Rớt");
    }
    @Override
    public int compareTo(ThiSinh ts) {
		if (diemtb == ts.diemtb)
			return 0;
		else if (diemtb > ts.diemtb)
			return 1;
		else
			return -1;
	}
}
