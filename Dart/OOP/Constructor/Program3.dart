class Demo {
  int x = 10;
  int y = 20;

  Demo(int x, int y) {
    print(this.hashCode);
    this.x = x;
    this.y = y;
  }

  void info() {
    print(x);
    print(y);
  }
}

void main() {
  Demo obj = new Demo(30, 40);
  obj.info();
  print(obj.hashCode);
  obj.info();
}


// the above code explains how hidden this reference works