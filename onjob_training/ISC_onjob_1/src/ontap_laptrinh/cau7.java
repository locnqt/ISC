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
public class cau7 {
    public static void main(String[] args) {
        int[] arr = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
//        StringBuilder s = new StringBuilder();
        String[] st = new String[arr.length];
        for(int i=0; i<arr.length; i++){
            if(arr[i]%3==0 && arr[i]%5==0) st[i] = "a@b";
            else if(arr[i]%3==0) st[i] = "a";
            else if(arr[i]%5==0) st[i] = "b";
            else st[i] = " ";
        }
        for(int i=0; i<st.length; i++){
            System.out.print(st[i]+", ");
        }
//        System.out.println("Chuoi: "+s);
    }
}
