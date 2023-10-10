class Parent {
  String str = "surname";
  int x = 10;

  void ParentDisp() {
    print(x);
    print(str);
  }
}

class Child extends Parent {}

void main() {
  Child obj = new Child();
  obj.ParentDisp();
  print(obj.x);
  print(obj.str);
}


// the above code shows simple inheritance where class child inherating from class parent using keyword 'extends' .

