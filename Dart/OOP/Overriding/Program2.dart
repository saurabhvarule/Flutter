// method overriding

class Parent {
  void property() {
    print("Gold,Cars,Home");
  }

  void career() {
    print("Doctor");
  }
}

class Child extends Parent {
  void career() {
    print("Engineer");
  }
}

void main() {
  Child obj = new Child();
  obj.property();
  obj.career();
}

// now we made a change by writing career method in child class now output will be as chihld class.3

// output : Gold, Cars, Home
//          Engineer