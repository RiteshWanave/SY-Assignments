public class EmployeeTest {
    public static void main(String[] args) {
        Employee joe = new Employee("Joe", "Rogan", 1000);
        Employee tod = new Employee("Tod", "Howard", 2000);
        System.out.println(joe.getFirstName() + "'s monthly salary is " + joe.getMonthlySalary());
        System.out.println(tod.getFirstName() + "'s monthly salary is " + tod.getMonthlySalary());
        joe.setMonthlySalary(joe.getMonthlySalary() * 1.15);
        tod.setMonthlySalary(tod.getMonthlySalary() * 1.15);
        System.out.println("Salary after 15% boost");
        System.out.println(joe.getFirstName() + "'s monthly salary is " + joe.getMonthlySalary());
        System.out.println(tod.getFirstName() + "'s monthly salary is " + tod.getMonthlySalary());
    }
}
