/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isc_onjob_2;

import static isc_onjob_2.func.*;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author locnq
 */
public class myfile {

    static List<person> listperson = new ArrayList();
//    static ArrayList<worker> listworker = new ArrayList();
//    static ArrayList<leader> listleader = new ArrayList();

    public static void openData(String path) {

        try {
            FileInputStream fis = new FileInputStream(path);
            InputStreamReader isr = new InputStreamReader(fis);
//            FileReader fr = new FileReader(path);
            BufferedReader bfr = new BufferedReader(isr);
            String line = bfr.readLine();
            while (line != null) {
                String[] arr = line.split(",");
                if (arr.length == 8) {
                    System.out.print(line);
                    if (arr[5].trim().equals("worker")) {
                        worker w = new worker(arr[1], arr[0], new date(arr[2].trim()), new password(arr[3], arr[4].trim().equals("true")), Integer.parseInt(arr[6].trim()), new date(arr[7].trim()));
                        if (w.isBirthday() && w.pass.isVaild() && checkID(w) && isHire(w) && wsalary(w)) {
                            listperson.add(w);
                        }
                    } else if (arr[5].trim().equals("leader")) {
                        leader l = new leader(arr[1], arr[0], new date(arr[2].trim()), new password(arr[3], arr[4].trim().equals("true")), Integer.parseInt(arr[6].trim()), Integer.parseInt(arr[7].trim()));
                        if (l.isBirthday() && l.pass.isVaild() && checkID(l) && lsalary(l)) {
                            listperson.add(l);
                        }
                    }
                }
                System.out.println("");
                line = bfr.readLine();
            }
//            listperson.addAll(listworker);
//            listperson.addAll(listleader);
            System.out.println("");
            System.out.println("list: " + listperson.size());
            fis.close();
            isr.close();
//            fr.close();
            bfr.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void printList(String path) {
        openData(path);
        String dateInString = new SimpleDateFormat("yyyy").format(new Date());
        int now = Integer.parseInt(dateInString);
        System.out.println("Danh sach nahn vien >20 tuoi va thu nhap >1000$ trong nam " + now);
        for (int i = 0; i < listperson.size(); i++) {
            if ((now - listperson.get(i).date.year) > 20 && listperson.get(i).getIncome() > 1000) {
                System.out.println(listperson.get(i).name + " sinh nam " + listperson.get(i).date.year + " có thu nhap: " + listperson.get(i).getIncome());
            }
        }
    }
}
