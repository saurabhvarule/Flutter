class Demo {

  int? x = 10;
  int? y = 20;
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

// 4.
  Demo(int x, {int y = 20}) {
    print("Default parameter constructor");
  }

*/

// 5.
  Demo({this.y, this.x}) {
    print("Named parameter");
  }

  void info() {
    print(x);
    print(y);
  }
}

void main() {
  Demo obj = new Demo(y: 20, x: 10);
  obj.info();
}
