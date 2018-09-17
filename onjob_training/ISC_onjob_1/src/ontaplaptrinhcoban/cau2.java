/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ontaplaptrinhcoban;

/**
 *
 * @author Me
 */
public class cau2 {
    public static void main(String[] args) {
        String[] arr = {"21/12/2000","12/2/2001","12/10/2001","12/03/2001","12/11/2001","12/05/2001","12/06/2001","12/07/2001","12/08/2001","12/09/2001"};
        String[] months = {" January "," February "," March "," April "," May "," June "," July "," August "," September "," October "," November "," December "};
        String temp="";
        int m;
        for (int i=0; i<arr.length; i++) {
            String[] output = arr[i].split("\\/");
//            temp=arr[i];
            System.out.println(arr[i]);
            m = Integer.parseInt(output[1]);
            System.out.println(output[0]+months[m-1]+output[2]);
//            switch(month){
//                case "12": temp=arr[i].replace("/12/", " December "); break;
//                case "11": temp=arr[i].replace("/11/", " November "); break;
//                case "10": temp=arr[i].replace("/10/", " October "); break;
//                case "09": temp=arr[i].replace("/09/", " September "); break;
//                case "08": temp=arr[i].replace("/08/", " August "); break;
//                case "07": temp=arr[i].replace("/07/", " July "); break;
//                case "06": temp=arr[i].replace("/06/", " June "); break;
//                case "05": temp=arr[i].replace("/05/", " May "); break;
//                case "04": temp=arr[i].replace("/04/", " April "); break;
//                case "03": temp=arr[i].replace("/03/", " March "); break;
//                case "02": temp=arr[i].replace("/02/", " February "); break;
//                case "01": temp=arr[i].replace("/01/", " January "); break;
//            }
//            System.out.println(temp);
        }
    }
}
