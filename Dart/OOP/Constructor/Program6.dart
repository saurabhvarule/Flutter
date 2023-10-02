class Player {
  final int? jerNo;
  final String? pName;

  const Player(this.jerNo, this.pName);

  void info() {
    print(jerNo);
    print(pName);
  }
}

void main() {
  Player obj = new Player(18, "Virat");
  obj.info();
  //obj.jerNo = 7; -->> error
}
