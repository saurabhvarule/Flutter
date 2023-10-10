/* type checking operator 
1.is
2.as
3.is!
*/
void main() {
  int x = 10;
  double y = 20.5;
  num z = 30.0;

  print(x is int);
  print(y is int);
  print(z is int);
  print(z is double);
  print(z is! double);
  print(z as double);
}
