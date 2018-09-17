/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ontaplaptrinhcoban;

import java.util.Arrays;

/**
 *
 * @author Me
 */
public class cau3 {
    public static void main(String[] args) {
        String s = "To Be Or Not To Be";
        String[] arr = s.trim().split("\\W+");
        String reverse ="";
        for(int i=0; i<arr.length; i++){
//            Arrays.sort(arr);
            reverse = new StringBuffer(arr[i]).reverse().toString();
//            System.out.print(arr[i]+" ");
            System.out.print(reverse+" ");
        }
        System.out.println("");
    }
}
