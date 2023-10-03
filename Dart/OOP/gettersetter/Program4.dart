class Employee {
  int? _empId;
  String? empName;
  double? _sal;

// constructor :
  Employee(this._empId, this.empName, this._sal);

// getter mehtods :
  get getEmpId => _empId;
  get getEmpName => empName;
  get getSal => _sal;

// setter methods :

// way 1 : (normal way) -> setter methods
/*  void setEmpId(int empId) {
    this._empId = empId;
  }


  void setEmpName(String empName) {
    this.empName = empName;
  }

  void setSal(double sal) {
    this._sal = sal;
  }
*/

/* way 2 using set keyword :
  set setEmpName(empName) {
    this.empName = empName;
  }

  set setEmpId(empId) {
    _empId = empId;
  }

  set setSal(sal) {
    _sal = sal;
  }
*/

// way3 using set keyword and arrow function
  set setEmpId(int empId) => _empId = empId;
  set setEmpName(empName) => this.empName = empName;
  set setSal(sal) => _sal = sal;
  void empInfo() {
    print("$_empId  $empName  $_sal");
  }
}

void main() {
  Employee obj = new Employee(1, "Vedika", 4.5);
  obj.empInfo();
  print(obj.getEmpName);
  print(obj.getEmpId);
  print(obj.getSal);

  obj.setEmpId = 2;
  obj.setEmpName = "Aditi";
  obj.setSal = 6.5;

  obj.empInfo();

  print(obj.getEmpName);
  print(obj.getEmpId);
  print(obj.getSal);
}
