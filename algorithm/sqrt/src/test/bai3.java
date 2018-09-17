/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

/**
 *
 * @author Me
 */
public class bai3 {
    public static void main(String[] args) {
        int[] arr = {-3,1,2,-7,4,6,-5,8,-9,10,-3};
        int max=Integer.MIN_VALUE;
        for(int i=0; i<arr.length; i++){
            for(int j=i; j<arr.length;j++){
                int s=0;
                for(int k=i; k<=j; k++){
                    s+=arr[k];
                    if(s>max){
                        max=s;
                    }
                }
            }
        }
        System.out.println("max: "+max);
        //cach 2
        int[] temp = new int[arr.length];
        temp[0]=arr[0];
        for(int i=1; i<arr.length; i++){
            temp[i]=Math.max(arr[i], arr[i]+temp[i-1]);
//            if(arr[i]>(arr[i]+temp[i-1])){
//                temp[i]=arr[i];
//            }
//            else{
//                temp[i]=arr[i]+temp[i-1];
//            }
        }
        max=Integer.MIN_VALUE;
        for(int i=0; i<temp.length; i++){
//            System.out.print(temp[i]+" ");
            if(temp[i]>max){
                max=temp[i];
            }
        }
        System.out.println("max: "+max);
        //cach 3 kadane
        int maxsum= arr[0], sum=0;
        for(int i=0; i< arr.length; i++){
            sum = Math.max(sum+arr[i], arr[i]);
            maxsum = Math.max(maxsum, sum);
        }
        System.out.println("max: "+maxsum);
    }
}
