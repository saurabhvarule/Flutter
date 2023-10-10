// method overriding

class Parent {
  void property() {
    print("Gold,Cars,Home");
  }

  void career() {
    print("Doctor");
  }
}

class Child extends Parent {}

void main() {
  Child obj = new Child();
  obj.property();
  obj.career();
}

// output : Gold,Cars, Home
//           Doctor

// the above code shows how class child inherited from parent class we write nothing in child class still we made an objects of it and calling methods which are of parent's , which is showing normal inheritance.

// now we will make a simple change by writng same method career in child class which will show how overriding happens.

// this is program1 jump to program2 to see the change 