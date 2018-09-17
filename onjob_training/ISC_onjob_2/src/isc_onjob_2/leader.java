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
public class leader extends person{
    double salary;
    double bonus;

    public leader(String name, String id, isc_onjob_2.date date, password pass, double salary, double bonus) {
        super(name, id, date, pass);
        this.name = name;
        this.id = id;
        this.date = date;
        this.pass = pass;
        this.salary = salary;
        this.bonus = bonus;
//        this.income = (salary+bonus);
    }

    public double getSalary() {
        return salary;
    }

    public double getBonus() {
        return bonus;
    }
    
    public double getIncome(){
        return (salary+bonus);
    }
}
