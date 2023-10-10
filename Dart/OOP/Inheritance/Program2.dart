class Parent {
  int x = 10;
  String str1 = "Alphabet";
  get getStr1 => str1;
  get getX => x;

  void disp() {
    print(x);
    print(str1);
  }
}

class Child extends Parent {
  int y = 20;
  String str2 = "Google";

  get getY => y;
  get getStr2 => str2;

  void info() {
    print(y);
    print(str2);
  }
}

void main() {
  Parent obj1 = new Parent();
  obj1.disp();
  print(obj1.getX);
  print(obj1.getStr1);

  Child obj2 = new Child();
  //obj1.info();      // error , parent cant access child methods
  obj2.disp(); // calling parent method on child object
  obj2.info();

  print(obj2.getX);
  print(obj2.getY);
  print(obj2.getStr1);
  print(obj2.getStr2);
}
