/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.util.Scanner;

/**
 *
 * @author Me
 */
public class SoDao {
    public static void main(String[] args) {
//        System.out.println("nhap so nguyen duong: ");
//        Scanner sc = new Scanner(System.in);
//        int num = sc.nextInt();
        int num =12030;
        int renum=0;
        while(num>0){
            renum= renum*10+num%10;
            num=num/10;
        }
        System.out.println("so dao: "+renum);
    }
}
