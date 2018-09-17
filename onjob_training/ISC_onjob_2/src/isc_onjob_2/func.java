/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isc_onjob_2;

/**
 *
 * @author Me
 */
public interface func {

    public static boolean checkID(person p) {
        if (p.id.length() != 6) {
            System.out.println("ID should be XXXX–L");
            return false;
        }
        boolean digit = true;
        for (int i = 0; i < 4; i++) {
            if (!Character.isDigit(p.id.charAt(i))) {
                digit = false;
                break;
            }
        }
        if (!digit) {
            System.out.println("ID should be XXXX–L with X is 0-9");
            return false;
        }
        if (p.id.charAt(4) != '-') {
            System.out.println("ID should be XXXX–L");
            return false;
        }
        if (p.id.charAt(5) < 65 || p.id.charAt(5) > 68) {
            System.out.println("ID should be XXXX–L with L is A-D");
            return false;
        }
        return true;
    }

    public static boolean isHire(worker w) {
        if ((w.hireDate.year - w.date.year) < 18) {
            return false;
        } else {
            return true;
        }
    }

    public static boolean wsalary(worker w) {
        if (w.salary <= 100) {
            System.out.println("Salary must be greater than 100$");
            return false;
        }
        return true;
    }

    public static boolean lsalary(leader l) {
        if (l.salary <= 200) {
            System.out.println("Salary must be greater than 200$");
            return false;
        }
        if (l.bonus <= 0) {
            System.out.println("Bonus must be greater than zero");
            return false;
        }
        return true;
    }
}
