// operators in dart
// 1. Unary Operator :
void main() {
  int x = 10;
  print(x++); // 10
  print(++x); // 12
  print(x); // 12

  int ans = ++x + ++x;
  print(ans); // 27;

  ans = --x + --x;
  print(ans); // 25

  ans = ++x + x++;
  print(ans); // 26

  ans = --x + x--;
  print(ans); // 26
}
