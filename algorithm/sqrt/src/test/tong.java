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
public class tong {
    //tong cac số max trong mỗi hàng trên ma trận 2 chiều (nxn) nhập theo xoắn ốc từ bé đến lớn

    public static void main(String[] args) {
        System.out.println("ma tran n");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int sum = n;
        int maxsum=sum;
        for (int i = 1; i <n; i++) {
            sum += 2 * (n - i);
            maxsum+=sum;
        }
        System.out.println("sum: "+maxsum);
    }
}
