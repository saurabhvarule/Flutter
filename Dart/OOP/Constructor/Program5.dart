class Employee {
  int? empId;
  String? empName;
  double? sal;
/*
  Employee() {
    print("1.Default constructor");
  }
*/
  Employee(this.empId, this.empName, this.sal) {
    print("2.Parameterized Constructor");
  }

// dart doesent allowes same names thats why the below constructor type is written
  Employee.constr() {
    print("3.Named Constructor");
  }
}

void main() {
  Employee obj1 = new Employee(10, "Harshal", 22.5);
  Employee obj2 = new Employee.constr();
}
