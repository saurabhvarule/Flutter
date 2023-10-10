class ICC {
  ICC() {
    print("ICC COnstructor");
  }
}

class BCCI extends ICC {
  BCCI() {
    print("BCCI Constructor");
  }
}

class IPL extends BCCI {
  IPL() {
    print("IPL Constrcutor");
  }
}

void main() {
  IPL obj = new IPL();
}
