import 'dart:io';

void main() {
  print("Enter no of rows :");
  int? row = int.parse(stdin.readLineSync()!);

// first part
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < row - i + 1; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k < 2 * i + 1; k++) {
      stdout.write("*");
    }
    print("");
  }
// second part
  for (int i = 1; i < row; i++) {
    for (int j = 0; j < i + 2; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k < 2 * row - (2 * i + 1); k++) {
      stdout.write("*");
    }
    print("");
  }
}
