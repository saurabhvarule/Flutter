import 'dart:io';

void main() {
  int? age;
  String? name;

  print("enter your age :");
  age = int.parse(stdin.readLineSync()!);

  print("enter your name :");
  name = stdin.readLineSync();

  print("enter your salary :");
  double sal = double.parse(stdin.readLineSync()!);

  stdout.writeln("Name :$name Age :$age Salary : $sal");
}
