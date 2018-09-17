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
public class cau3 {
    public static void main(String[] args) {
        int[] arr = {9,1,8,3,6,10,5,12};
        int max=Integer.MIN_VALUE,max2=Integer.MIN_VALUE;
        for(int i=1; i<arr.length; i++){
            if(max<arr[i]){
                max2=max;
                max = arr[i];
//                if(max2==max) max2=arr[i];
//                else if(max2<arr[i] && arr[i]!=max)
//                max2=arr[i];
            }
            }
//            if(max2<arr[i] && arr[i]!=max){
//                max2=arr[i];
//            }
//        }
//        for(int i=0; i<arr.length; i++){
//            if(max2<arr[i] && arr[i]!=max){
//                max2=arr[i];
//            }
//        }
        System.out.println("so lon nhat: "+max);
        System.out.println("so lon thu 2: "+max2);
        // so lon thu 5 => arr max
//        Arrays.sort(arr);
//        System.out.println("so lon nhat: "+arr[arr.length-1]);
//        System.out.println("so lon thu 2: "+arr[arr.length-2]);
    }
}
