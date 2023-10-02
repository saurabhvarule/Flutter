import 'dart:io';

void main() {
  const int? x = 10;
  final int? y;
  y = int.parse(stdin.readLineSync()!);
  print(x);
  print(y);
  //y = 30;   ->> error because y is final
}
