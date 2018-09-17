/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cau1;

/**
 *
 * @author locnq
 */
public class Nguoi {
    private String name;
    private String born;

    public Nguoi() {
    }
    public Nguoi(String name, String born) {
        this.name = name;
        this.born = born;
    }
    public void showPerson(){
        System.out.println("Tên "+name+" sinh nam "+born);
    }
}
