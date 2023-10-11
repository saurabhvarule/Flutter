abstract class Parent {
  int x = 10;
  String str1 = "Aditi";

  void info() {
    print(x);
    print(str1);
  }

  // abstract method :
  void disp();
}

class Child extends Parent {
  int y = 20;
  String str2 = "Vedika";

  void disp() {
    print(x);
    print(str1);
  }

  void m1() {
    print(y);
    print(str2);
  }
}

void main() {
  Parent obj1 = new Child();
  Child obj2 = new Child();
  obj1.info(); // parent method
  obj1.disp(); // abstract from parent
  print(obj1.x);
  print(obj1.str1);
  obj2.m1();
}
