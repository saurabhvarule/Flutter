class Demo {
  int? x;

  Demo(this.x);

  // if we want multiple constructors in one class we should written like the below code :
  // prototype = class name  +  '.' + whatever the name we want example : Demo.temp(),Demo.para() etc .
  Demo.temp() {
    print("Another Demo constructor ");
  }

  void disp() {
    print("normal method");
  }
/*
  void disp(int x) {
    print("parameterized method");
  }
-->> error disp is already declared int this scope.
*/
}

void main() {
  Demo obj = new Demo(10);
  obj.disp();
  //obj.disp(10);

  Demo temp = new Demo.temp();
  temp.disp();
}


// The above code shows the concept of method overloading but as it written in dart it throws an error saying method is already declared in this scope i.e overloading cant be possible in dart because dart says everything is object , and same objects are not aloowed in the same class.