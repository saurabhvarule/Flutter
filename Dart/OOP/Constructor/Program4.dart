class Player {
  int? jerNo;
  String? pName;

// normal way to copy local values into class values usin this reference

/*  Player(int jerNo, String pName) {
    this.jerNo = jerNo;
    this.pName = pName;
  }
*/

// below one line code provides same funtionality as previous
  Player(this.jerNo, this.pName);

  void info() {
    print(jerNo);
    print(pName);
  }
}

void main() {
  Player obj = new Player(18, "Virat");
  obj.info();
}
