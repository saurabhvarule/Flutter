import 'dart:io';

class Employee {
  String? empName;
  int? id;
  double? sal;

  void info() {
    print("Employee :$empName  ID : $id  and Salary : $sal");
  }
}

void main() {
  Employee emp1 = new Employee();
  emp1.info();
  print("enter name");
  emp1.empName = stdin.readLineSync();

  print("enter id ");
  emp1.id = int.parse(stdin.readLineSync()!);

  print("enter salary ");
  emp1.sal = double.parse(stdin.readLineSync()!);

  emp1.info();
}
