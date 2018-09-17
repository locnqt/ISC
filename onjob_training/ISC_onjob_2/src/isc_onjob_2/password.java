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
public class password {
    String text;
    boolean encrypted;

    public password(String text, boolean encrypted) {
        this.text = text;
        this.encrypted = encrypted;
//        isVaild();
//        if(isVaild()) System.out.println("password OK!");
    }

    public void encrypt(){
        if(encrypted==false){
            String enpass="";
            char a;
            for(int i=0;i<text.length();i++){
               a= (char) (text.charAt(i) + 1);
               enpass = enpass+a;
            } 
            text=enpass;
            System.out.println(text);
            encrypted=true;
        }
    }
    public void decrypt(){
        if(encrypted==true){
            String enpass="";
            char a;
            for(int i=0;i<text.length();i++){
               a= (char) (text.charAt(i) - 1);
               enpass = enpass+a;
            } 
            text=enpass;
            System.out.println(text);
            encrypted=false;
        }
    }
    public boolean isVaild(){
        if(text.length()<8){
            System.out.println("Password should be at least eight characters long");
            return false;
        }
//        char c;
        boolean upcase = false;
        boolean lowcase = false;
        boolean digit = false;
        //abcEdddHk
        for(int i=0; i<text.length(); i++){
//            c = text.charAt(i);
            if(Character.isUpperCase(text.charAt(i))){
                upcase = true;
                break;
            }
        }
        if(!upcase){ System.out.println("password should contain at least one uppercase letter"); return false;}
        for(int i=0; i<text.length(); i++){
//            c = text.charAt(i);
            if(Character.isLowerCase(text.charAt(i))){
                lowcase = true;
                break;
            }
        }
        if(!lowcase){ System.out.println("password should contain at least one lowercase letter"); return false;}
        for(int i=0; i<text.length(); i++){
//            c = text.charAt(i);
            if(Character.isDigit(text.charAt(i))){
                digit = true;
                break;
            }
        }
        if(!digit){ System.out.println("password should have at least one digits"); return false;}
        return true;
    }
}
