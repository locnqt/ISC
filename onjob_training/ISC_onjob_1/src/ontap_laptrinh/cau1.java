/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ontap_laptrinh;

import java.util.Scanner;

/**
 *
 * @author Me
 */
public class cau1 {
    public static void main(String[] args) {
        
//        Scanner sc = new Scanner(System.in);
//        System.out.print("Nhap so nguyen: ");
//        int num = sc.nextInt();
        int num=64983;
        int temp=0;
        int sum=0;
        while(true){
            temp=num%10;
            sum+=temp;
            num = num/10;
            if(num==0) break;
        }
        System.out.println("Tong: "+sum);
    }
}
