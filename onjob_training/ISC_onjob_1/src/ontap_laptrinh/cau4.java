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
public class cau4 {
    
    public static void main(String[] args) {
        int[] arr = {0,1,2,3,4,5,6,7,8,9,11};
        int tongsochan=0;
//        int tongsole=0;
        for(int i=0; i<arr.length; i++){
            if(arr[i]%2==0) tongsochan++;
//            else tongsole++;
        }
        System.out.println("Tong so chan trong mang: "+tongsochan);
        System.out.println("Tong so le trong mang: "+(arr.length-tongsochan));
    }
}
