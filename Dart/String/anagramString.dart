import 'dart:io';

String sort(String str) {
  List letters = str.split('');
  for (int i = 1; i < str.length; i++) {
    int? j;
    String val = str[i];
    for (j = i - 1;
        j! >= 0 && val.codeUnitAt(0) < letters[j].codeUnitAt(0);
        j--) {
      letters[j + 1] = letters[j];
    }
    letters[j + 1] = val;
  }

  return letters.join();
}

bool isAnagram(String str1, String str2) {
  if (str1.length != str2.length) {
    return false;
  }
  str1 = sort(str1);
//  print(str1);
  str2 = sort(str2);
//  print(str2);
  for (int i = 0; i < str1.length; i++) {
    if (str1[i] != str2[i]) {
      return false;
    }
  }
  return true;
}

bool isAnagramUsingSet(String str1, String str2) {
  if (str1.length == str2.length) {
    Set<String> s1 = str1.split('').toSet();
    Set<String> s2 = str2.split('').toSet();
    if (s1.containsAll(s2))
      return true;
    else
      return false;
  }
  return false;
}

void main() {
  print("Enter string1: ");
  String? str1 = stdin.readLineSync()!;
  print("Enter string2 :");
  String? str2 = stdin.readLineSync()!;
  print(isAnagramUsingSet(str1, str2));
}
