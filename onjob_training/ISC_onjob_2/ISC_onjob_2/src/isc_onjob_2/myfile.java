/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isc_onjob_2;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author locnq
 */
public class myfile {

    public myfile() {
    }
    static ArrayList<person> listperson = new ArrayList();
//    static ArrayList<worker> listworker = new ArrayList();
//    static ArrayList<leader> listleader= new ArrayList();
    public static void openData(String path){
        
        try{
            FileInputStream fis = new FileInputStream(path);
            InputStreamReader isr = new InputStreamReader(fis);
            BufferedReader bfr = new BufferedReader(isr);
            String line = bfr.readLine();
            while(line != null){
                String []arr = line.split(",");
                if(arr.length == 8){
                    if(arr[5].trim().equals("worker")){
                        worker w = new worker(arr[1], arr[0], new date(arr[2].trim()), new password(arr[3], arr[4].trim().equals("true")), Integer.parseInt(arr[6].trim()), new date(arr[7].trim()));
                        listperson.add(w);
                    }
                    else if(arr[5].trim().equals("leader")){
                        leader l = new leader(arr[1], arr[0], new date(arr[2].trim()), new password(arr[3], arr[4].trim().equals("true")), Integer.parseInt(arr[6].trim()), Integer.parseInt(arr[7].trim()));
                        listperson.add(l);
                    }
                    System.out.println("index worker: "+listperson.size());
                    System.out.println("index leader: "+listperson.size());
                }
                line = bfr.readLine();
            }
            fis.close();
            isr.close();
            bfr.close();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }
    public static void printList(){
        //The method should take a reference to an array of Person. It prints the list of people who are greater than 20 years old and their incomes are greater than 1000$
        String dateInString =new SimpleDateFormat("yyyy").format(new Date());
        int now = Integer.parseInt(dateInString);
        for(int i=0; i<listperson.size(); i++){
            if((now - listperson.get(i).date.year)>20){
//                if(listperson.get(i).)
            }
        }
        
    }
}
