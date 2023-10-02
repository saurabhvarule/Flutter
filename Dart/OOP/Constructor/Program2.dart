class Demo {
// 1.
/*  Demo() {
    print("No argument Constructor");
  }

// 2.
  Demo(int x) {
    print("Parameterized constructor");
  }


// 3.
  Demo(int x, [int y = 20]) {
    print("optional parameter constructor");
  }
*/
// 4.
  Demo(int x, {int y = 20}) {
    print("Default parameter constructor");
  }
}

void main() {
  Demo obj = new Demo(10);
}
