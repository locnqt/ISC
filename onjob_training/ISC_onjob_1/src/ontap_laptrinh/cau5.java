/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ontap_laptrinh;

import java.util.Arrays;

/**
 *
 * @author Me
 */
public class cau5 {
    public static void main(String[] args) {
        int[] arr = {1,8,-3,6,9,0};
        
        int max=Integer.MIN_VALUE;
        int min=Integer.MAX_VALUE;
        int vitrimax=0, vitrimin=0;
        int temp=0;
        for(int i=0; i<arr.length; i++){
            if(max<arr[i]){
                max = arr[i];
                vitrimax=i;
            }
            if(min>arr[i]){
                min=arr[i];
                vitrimin=i;
            }
        }
        temp=arr[vitrimax];
        arr[vitrimax]=arr[vitrimin];
        arr[vitrimin]=temp;
        for(int i=0; i<arr.length; i++){
            System.out.print(arr[i]+ ", " );
        }
        System.out.println("");
        
//        Arrays.sort(arr);
//        System.out.println("so lon nhat: "+arr[arr.length-1]);
//        System.out.println("so nho nhat: "+arr[0]);
//        
//        temp=arr[arr.length-1];
//        arr[arr.length-1]=arr[0];
//        arr[0]=temp;
//        System.out.println("Sau khi doi!!");
//        System.out.println("so lon nhat: "+arr[arr.length-1]);
//        System.out.println("so nho nhat: "+arr[0]);
    }
}
