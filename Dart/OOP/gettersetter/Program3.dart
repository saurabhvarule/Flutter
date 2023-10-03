class Player {
  int _jerNo = 18;
  String _name = "Virat";

  void disp() {
    print(_jerNo);
    print(_name);
  }

/* way1 : 
  int getJerNo() {
    return _jerNo;
  }

  String getName() {
    return _name;
  }
  */

/* way2 :
  int getJerNo() => _jerNo;
  String getName() => _name;
*/

// way 3 :
  get getJerNo => _jerNo;
  get getName => _name;
}

void main() {
  Player obj1 = new Player();
  print(obj1.getJerNo);
  print(obj1.getName);
  obj1.disp();
}


// the above code explains how getter methods can be used to get values from a class.
// we have implente getter methods in three ways in which 3rd way is the easiest .