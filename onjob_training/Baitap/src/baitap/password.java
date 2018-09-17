/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baitap;

/**
 *
 * @author ghost
 */
public class password {
    String text;
    boolean encrypted;
    password(String pass,boolean encryted){
        this.text=pass;
        this.encrypted=encrypted;
    }   
    public void decrpyted(password pass){
        if(pass.encrypted==true){
            String passdung="";
            for(int i=0;i<pass.text.length();i++){
               char a;
               a= (char) (pass.text.charAt(i) - 1);
               passdung = passdung+a;
            } 
            pass.text=passdung;
        }
    }
    public void encrypt(password pass){
        if(pass.encrypted==false){
            String passdung="";
            for(int i=0;i<pass.text.length();i++){
               char a;
               a= (char) (pass.text.charAt(i) + 1);
               passdung = passdung+a;
            } 
            pass.text=passdung;
            pass.encrypted=true;
        }
    }
    public boolean isvaild(password pass){
        if(pass.text.length()<8) return false;
        int tmpt =0,tmph=0,tmps =0;
        for(int i=0;i<pass.text.length();i++){
            int a = (int) pass.text.charAt(i);
            if(a>=65 && a<=90) tmph++;
            else if(a>=97&&a<=122) tmpt++;
            else if(a>=48 && a<=57) tmps++;
        }
        if(tmpt==0 || tmph ==0 || tmps ==0) return false;
        return true;
        
    }
}
