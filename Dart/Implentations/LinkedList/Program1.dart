class Outer {
  int x = 10;

  /*class Inner {
    int x = 20;
  }*/ //-->> inner class declaration is not allowed
}

void main() {
  Outer obj1 = new Outer();
}
