class Company {
  String? compName;
  String? location;
  Company(this.compName, this.location);

  void compInfo() {
    print(compName);
    print(location);
  }
}

class Employee extends Company {
  String? empName;
  int? empId;
  double? sal;
  Employee(this.empName, this.empId, this.sal, String compName, String location)
      : super(compName, location);
  void empInfo() {
    print(empName);
    print(empId);
    print(sal);
  }
}

void main() {
  Employee obj = new Employee("Vedika", 10, 4.5, "_VOIS", "Kharadi");
  obj.compInfo();
  obj.empInfo();
}
