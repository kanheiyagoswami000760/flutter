
class Employee {
  String employeeId = "";
  String employeeName = "";
  String department = "";

  
  void displayEmployeeInfo() {
    print("Employee ID : $employeeId");
    print("Name        : $employeeName");
    print("Department  : $department");
  }
}


class Salary extends Employee {
  double basicSalary = 0;
  double hra = 0;
  double da = 0;
  double bonus = 0;

  double grossSalary = 0;
  double tax = 0;
  double netSalary = 0;

  
  void calculateGrossSalary() {
    grossSalary = basicSalary + hra + da + bonus;
  }

  
  void calculateTax() {
    if (grossSalary > 80000) {
      tax = grossSalary * 0.20;
    } else if (grossSalary > 50000) {
      tax = grossSalary * 0.10;
    } else {
      tax = 0;
    }
  }

  
  void calculateNetSalary() {
    netSalary = grossSalary - tax;
  }

  
  void displaySalarySlip() {
    print("==========================================");
    print("         EMPLOYEE SALARY SLIP");
    print("==========================================");

    displayEmployeeInfo();

    print("\nBasic Salary : ₹$basicSalary");
    print("HRA          : ₹$hra");
    print("DA           : ₹$da");
    print("Bonus        : ₹$bonus");

    print("\nGross Salary : ₹$grossSalary");
    print("Tax          : ₹$tax");
    print("Net Salary   : ₹$netSalary");

    print("==========================================");
  }
}


class Manager extends Salary {
  double performanceIncentive = 0;

  
  @override
  void calculateGrossSalary() {
    grossSalary =
        basicSalary + hra + da + bonus + performanceIncentive;
  }


  @override
  void displaySalarySlip() {
    print("==========================================");
    print("          MANAGER SALARY SLIP");
    print("==========================================");

    displayEmployeeInfo();

    print("\nBasic Salary         : ₹$basicSalary");
    print("HRA                  : ₹$hra");
    print("DA                   : ₹$da");
    print("Bonus                : ₹$bonus");
    print("Performance Incentive: ₹$performanceIncentive");

    print("\nGross Salary : ₹$grossSalary");
    print("Tax          : ₹$tax");
    print("Net Salary   : ₹$netSalary");

    print("==========================================");
  }
}

void main() {
  
  Manager employee = Manager();

  
  employee.employeeId = "EMP101";
  employee.employeeName = "Rahul Sharma";
  employee.department = "IT";

  employee.basicSalary = 50000;
  employee.hra = 10000;
  employee.da = 5000;
  employee.bonus = 8000;
  employee.performanceIncentive = 5000;

  
  employee.calculateGrossSalary();
  employee.calculateTax();
  employee.calculateNetSalary();

  
  employee.displaySalarySlip();
}