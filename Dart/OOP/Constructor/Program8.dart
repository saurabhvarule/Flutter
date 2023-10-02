class Demo {
  final int? x;

  const Demo(this.x);
}

void main() {
  Demo obj1 = const Demo(10);
  Demo obj2 = const Demo(10);

  print(obj1.hashCode);
  print(obj2.hashCode);
}
