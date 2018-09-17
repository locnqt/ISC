/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ontap_laptrinh;

/**
 *
 * @author Me
 */
public class cau8 {
    public static void main(String[] args) {
        boolean flag = true;
        int[] arr1={1,2,3,4,5};
        int[] arr2={1,2,3,4,5};
//        int[] arr2={1,5,4,3,2};
//        int[] arr2={1,5,4};
//        int[] arr2={1,2,3,4,8};
        if(arr1.length != arr2.length){ System.out.println("2 mang rieng biet"); flag = false;}
        else{
            for(int i=0; i<arr1.length; i++){
                if(arr1[i]!=arr2[i]){ 
                    System.out.println("2 mang rieng biet");
                    flag=false;
                    break;
                }
            }
        }
        if(flag==true) System.out.println("2 mang trung nhau");
    }
    //cach 2: so sanh 2 cap 1-1, 51-51 trong cung 1 for => 10 cap cung dc
}
