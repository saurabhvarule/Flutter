void info(int age, {String? firstName, String? lastName}) {
  print("$firstName \t$lastName Age : $age");
}

void main() {
  info(22, lastName: "Mangate", firstName: "Vedika");
  info(lastName: "Jagdale", firstName: "Aditi", 22);
  info(lastName: "Tole", 22, firstName: "Shraddha");
}


/*
this code explains that we can pass the arguments in any sequence we just have to manage proper syntax for it .
 */