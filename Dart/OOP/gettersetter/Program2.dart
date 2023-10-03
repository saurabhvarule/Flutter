import 'Program1.dart';

void main() {
  //print(_x); //-->> this will throw an error.
  Demo1 obj = new Demo1();
  obj.info(); // this method is from class Demo1 it is a member of class thats why it wont throw an error print the value of _x.
}

// as we saw in program1 we have initialized private variable x in program1 it can not be accessible in program2 because the scope of the private variable in dart are limited within file scope .