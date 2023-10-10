// switch

void main() {
  int x = 4;
  do {
    print("1.C");
    print("2.Python");
    print("3.JAVA");
    print("4.DART");
    switch (x) {
      case 1:
        print("C = 1976");
      case 2:
        print("PYTHON = 1990");
      case 3:
        print("JAVA = 1996");
      case 4:
        print("DART = 2013");
      default:
        print("No match");
    }
  } while (false);
}
