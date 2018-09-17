/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import static java.lang.Math.abs;

/**
 *
 * @author Me
 */
public class SQRT {
    public static void main(String[] args) {
//        double a=26;
        for(double a=3.0; a<=26.0; a++){
        double x=1.0;
        double e= 10E-15;
        while(abs(x-(a/x))>e){
            x=(1/2.0)*(x+(a/x));
        }
        System.out.println("ham: "+x);
        System.out.println("sqrt: "+Math.sqrt(a));
        }
    }
}
