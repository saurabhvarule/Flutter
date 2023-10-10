// type 1 :
void fun() {
  print("No argument function ");
}

// type 2 :
void gun(int x) {
  print("Argument funtion, value x = $x");
}

// type 3 :
void info(String name, [int age = 23]) {
  print("Name : $name, Age: $age");
}

// type 4 :
int retVal(int x) {
  print("Argument function with return value");
  return x + x;
}

void main() {
  fun();
  gun(10);
  info("Saurabh");
  int temp = retVal(20);
  print("call to retFun with value 20 which returns value : $temp");
}


// the above code explains about the types of functions 