class Demo {
  int? x;
  static int y = 200;

  Demo(int x, int y) {
    print(this.x);
    print(x);
    this.x = x;
    //print(this.y);
  }
}

void main() {
  new Demo(10, 20);
}
