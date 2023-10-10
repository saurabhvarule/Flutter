class Parent {
  int x = 10;
  Parent() {
    print("Parent Constructor");
  }
  // call method while given a super() call form child class
  call() {
    print("in call method");
    disp();
  }

  void disp() {
    print("class Parent $x");
  }
}

class Child extends Parent {
  int x = 20;
  Child() {
    print("Child Constructor");
  }
  void info() {
    print("class Child $x");
    super(); // to call super() we should write call method
  }
}

void main() {
  Child obj = new Child();
  print(obj.x);

  obj.info(); // 20
  obj.disp(); // expected value x = 10, but output is 20;
}
