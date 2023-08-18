// dynamic

void main() {
  dynamic x = 10;
  dynamic y = 20;

  print(x);
  print(y);

  print(x.runtimeType);
  print(y.runtimeType);

  x = 30.5;
  y = 40.5;

  print(x.runtimeType);
  print(y.runtimeType);

  x = "saurabh";
  print(x.runtimeType);
}


// if we use var it consists or allows only that datatype.
// using dynamic can allow you to change the data as above code shows.