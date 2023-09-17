class Demo {
  int x = 10;
  static int y = 20;

  void info() {
    print(x);
    print(y);
  }
}

void main() {
  new Demo().info();
  Demo obj1 = new Demo();
  Demo obj2 = new Demo();
  //obj1.y = 30;    // -->> error
  new Demo().info();
  print(obj1.runtimeType); // Demo
  obj1.x = 30;
  Demo.y = 40;
  obj1.info();
  obj2.info();
}
