import 'dart:io';

void main() {
  print("Enter no of rows :");
  int? row = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < row; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k < 2 * row - (2 * i + 1); k++) {
      stdout.write("*");
    }
    print("");
  }
}
