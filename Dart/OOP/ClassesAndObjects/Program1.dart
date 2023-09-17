class Company {
  String name = "Google";
  int empCount = 5000;

  void info() {
    print(name);
    print(empCount);
  }
}
void main() {
  Company obj1 = new Company();
  obj1.info();
}
