/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cau2;

import java.util.Collections;
import java.util.Scanner;

/**
 *
 * @author locnq
 */
public class test {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Nhap so luong so nguyen: ");
        int n = sc.nextInt();
        int[] arr = new int[n];
        for(int i=0; i<n; i++){
            System.out.print("Nhap arr["+i+"] :");
            arr[i] = sc.nextInt();
        }
        //sap xep arr
        int temp = arr[0];
//        for (int i = 0 ; i < arr.length - 1; i++) {
//            for (int j = i + 1; j < arr.length; j++) {
//                if (arr[i] > arr[j]) {
//                    temp = arr[j];
//                    arr[j] = arr[i];
//                    arr[i] = temp;
//                }
//            }
//        }
        //dem phan tu
        int count=0;
        int counttemp=0;
        int so=0;
        for(int i=0; i<arr.length; i++){
            temp = arr[i];
            for(int j=0; j<arr.length; j++){
                if(arr[j]==arr[i]){
                    counttemp++;
                }
            }
            if(count<counttemp){ 
                count=counttemp;
                counttemp=0;
                so=temp;
            }
            else{
                counttemp=0;
            }
            
        }
        //c2
        int[] dem = new int[n];
//        for(int i=0; i<dem.length; i++){
//            dem[i]=0;
//        }
        for(int i=0; i<arr.length; i++){
            for(int j=0; j<=i; j++){
                if(arr[i]==arr[j]) dem[i]++;
            }
        }
        int max=dem[0];
        for(int i=0; i<arr.length; i++){
            if(dem[i]>max) max=dem[i];
        }
        
        System.out.println("arr gom: ");
        for(int i=0; i<arr.length; i++){
            System.out.print(arr[i]+", ");
        }
        System.out.println("");
//        System.out.println("So nguyen "+so+" xuat hien("+count+" lan) nhieu nhat trong mang!");
        for(int i=0; i<arr.length; i++){
            if(dem[i]==max)
                System.out.println("So nguyen "+arr[i]+" xuat hien("+max+" lan) nhieu nhat trong mang!");
        }
    }
}
