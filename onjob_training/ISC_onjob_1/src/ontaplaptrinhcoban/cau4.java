/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ontaplaptrinhcoban;
import java.util.Random;

/**
 *
 * @author Me
 */
public class cau4 {
    public static void main(String[] args) {
        String[] Article = {"the","an","a","one","some","any"}; //6
        String[] Noun = {"boy","girl","man","dog","car","town"}; //6
        String[] Verb = {"drove","jumped","ridden","walked","kicked","hit"}; //6
        String[] Preposition = {"to","from","over","on","under"}; //5
        Random rn = new Random();
        int num1 = 0;
        int num2 = 0;
        int num3 = 0;
        int num4 = 0;
        int preposition = 0;
        //random.nextInt(max - min + 1) + min
        for(int i=0; i<10; i++){
            num1 = rn.nextInt(5 - 0 + 1) + 0;
            num2 = rn.nextInt(5 - 0 + 1) + 0;
            num3 = rn.nextInt(5 - 0 + 1) + 0;
            num4 = rn.nextInt(5 - 0 + 1) + 0;
            preposition = rn.nextInt(4 - 0 + 1) + 0;
//            System.out.println(num);
            System.out.println(Article[num1]+" - "+Noun[num2]+" - "+Verb[num3]+" - "+Preposition[preposition]+" - "+Article[num4]);
        }
    }
}
