/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ontaplaptrinhcoban;

import java.util.Arrays;
import java.util.StringTokenizer;

/**
 *
 * @author Me
 */
public class cau1 {
    public static void main(String[] args) {
        String s = " hello  world . what a bad day! ";
        String[] arr = s.trim().split("\\W+");
//        for ( String ss : arr) {
//            System.out.println(ss);
//        }
        for(int i=0; i<arr.length; i++){
            Arrays.sort(arr);
            System.out.println(arr[i]);
        }
//        for(int i=0; i<arr.length; i++){
//            char[] a = arr[i].toCharArray();
//            Arrays.sort(a);
//            String sortedString = new String(a);
//            System.out.println(a);  
//        }
    }
}
