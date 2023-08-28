// for loop (entry control)

void main() {
  for (int i = 0; i < 10; i++) {
    print("The value of i is $i");
  }
  for (int i = 10; i > 0;) {
    print("The value of i is $i");
    i--;
  }
}


/*
for loop prototype-- >>

  initialization        condition     increment / decrement  
for(int i=0;              i<10;       i++) {
            ///////////////
            ///////////////
            //////Body/////
}
*/