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
public class cau2 {
    public static void main(String[] args) {
        int count=0;
        int num=1;
        while(count<=5){
            if(num%5==4 && num%4==3 && num%3==2){ 
                System.out.println(num);
                count++;
            }
            num++;
        }
    }
}
