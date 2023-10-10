class Parent {
  Parent() {
    print("Parent Constructor");
  }
}

class Child1 extends Parent {
  Child1() {
    print("Child1 Constructor");
  }
}

class Child2 extends Parent {
  Child2() {
    print("Child2 Constructor");
  }
}

void main() {
  Child1 obj1 = new Child1();
  Child2 obj2 = new Child2();
}
