import java.util.*;
public class GradeSheet {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Entr your name: ");
        String Name = sc.next();
        System.out.println("Entr your SCHOOL: ");
        String School = sc.next();
        System.out.println("Entr your Marks in 5 subjects: ");
        int sub1 = sc.nextInt();
        int sub2 = sc.nextInt();
        int sub3 = sc.nextInt();
        int sub4 = sc.nextInt();
        int sub5 = sc.nextInt();

        System.out.println("\n\nGradeCard......\n");
        System.out.println("Name: " + Name);
        System.out.println("School: " + School);
        System.out.println("Total Marks: " + (sub1+sub2+sub3+sub4+sub5));
        System.out.println("Percentage: " + ((sub1+sub2+sub3+sub4+sub5)/5));
        if(((sub1+sub2+sub3+sub4+sub5)/5) >= 90){
            System.out.println("Grade: A");
        }
        else if(((sub1+sub2+sub3+sub4+sub5)/5) >= 80 && ((sub1+sub2+sub3+sub4+sub5)/5) < 90){
            System.out.println("Grade: B");
        }
        else if(((sub1+sub2+sub3+sub4+sub5)/5) >= 70 && ((sub1+sub2+sub3+sub4+sub5)/5) < 80){
            System.out.println("Grade: C");
        }
        else {
            System.out.println("Grade: D");
        }
    }
}