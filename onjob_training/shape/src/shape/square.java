/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shape;

import java.awt.Graphics;

import javax.swing.JComponent;
import javax.swing.JFrame;

class Myshape extends JComponent {

  public void paint(Graphics g) {
    g.drawRect (10, 10, 200, 200);  
  }
}

public class DrawRect {
  public static void main(String[] a) {
    JFrame window = new JFrame();
    window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    window.setBounds(30, 30, 300, 300);
    window.getContentPane().add(new Myshape());
    window.setVisible(true);
  }
}
public class square extends Shape {
    private final double width, length; //sides

    public square() {
        this(1,1);
    }
    public square(double width, double length) {
        this.width = width;
        this.length = length;
    }

    @Override
    public double area() {
        // A = w * l
        return width * length;
    }

    @Override
    public double perimeter() {
        // P = 2(w + l)
        return 2 * (width + length);
    }

}