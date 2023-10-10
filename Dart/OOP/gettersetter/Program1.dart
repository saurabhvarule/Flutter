class Demo1 {
  int _x = 10;
  int y = 20;

  Demo() {
    print("In constructor");
  }

  void info() {
    print(_x);
    print(y);
  }
}

class Demo2 extends Demo1 {
  void m1() {
    print(_x); //-->> accessing _x in child class Demo2
  }
}

void main() {
  Demo1 obj1 = new Demo1();
  print(obj1._x);
  print(obj1.y);
  obj1.info();

  Demo2 obj2 = new Demo2();
  obj2.m1();
}

// private variables are initialized as '_' by deafault they are public
// the scope og private variables are limited within file in dart.
