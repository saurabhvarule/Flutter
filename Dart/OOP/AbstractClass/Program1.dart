// in this code we are explaining the concept of abstract class in dart :

/*
class Demo {
  void fun1() {
    print("in fun1");
  }

  void fun2(); -->> this will throw an error
}

Error :  The non-abstract class 'Demo' is missing implementations for these members:
 - Demo.fun2
Try to either
 - provide an implementation,
 - inherit an implementation from a superclass or mixin,
 - mark the class as abstract, or
 - provide a 'noSuchMethod' implementation.
*/

// if we dont want to write concrete method we should declaire the class as abstract
// here's an example :

abstract class Demo {
  Demo() {
    print("Demo Constructor ");
  }
  void fun1() {
    print("in fun1");
  }

  void fun2();
}
// once we define class as abstract we can not be able to make its object,we must make its child to provide body to abstract methods.
// child class of Demo

class DemoChild extends Demo {
  DemoChild() {
    print("DemoChild Constructor");
  }
  // we must provide body to abstract methods in child class otherwise it will throw an error .
  void fun2() {
    print("in fun2");
  }
}

void main() {
  Demo obj = new DemoChild();
  obj.fun1();
  obj.fun2();
}
