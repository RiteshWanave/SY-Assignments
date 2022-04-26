import java.util.Scanner;
import Arithmetic.Add.*;
import Arithmetic.Sub.*;
import Arithmetic.Mul.*;
import Arithmetic.Div.*;
import Arithmetic.Sqrt.*;
import Arithmetic.Sq.*;

public class main {
    public static void main(String[] args) {
        Boolean exit = false;
        Scanner sc = new Scanner(System.in);
        while (!exit) {
            System.out.println("Enter 1 for addition\nEnter 2 for subtraction\nEnter 3 for multiplication\nEnter 4 for division\nEnter 5 for square\nEnter 6 for square root\nEnter 7 for exit");
            int test = sc.nextInt();
            switch (test) {
                case 1:
                    System.out.println("Enter two numbers to add");
                    int a = sc.nextInt();
                    int b = sc.nextInt();
                    Add add = new Add();
                    add.add(a, b);
                    break;

                case 2:
                    System.out.println("Enter two numbers to subtract");
                    int c = sc.nextInt();
                    int d = sc.nextInt();
                    Sub sub = new Sub();
                    sub.sub(c, d);
                    break;
                
                case 3:
                    System.out.println("Enter two numbers to multiply");
                    int e = sc.nextInt();
                    int f = sc.nextInt();
                    Mul mul = new Mul();
                    mul.mul(e, f);
                    break;

                case 4:
                    System.out.println("Enter two numbers to divide");
                    int g = sc.nextInt();
                    int h = sc.nextInt();
                    Div div = new Div();
                    div.div(g, h);
                    break;

                case 5:
                    System.out.println("Enter a number to square");
                    int i = sc.nextInt();
                    Square sq = new Square();
                    sq.square(i);
                    break;

                case 6:
                    System.out.println("Enter a number to square root");
                    int j = sc.nextInt();
                    Squareroot sqrt = new Squareroot();
                    sqrt.squareroot(j);
                    break;

                case 7:
                    exit = true;
                    break;
            }
        }
    }
}