void info(String gender, {required String firstName, required int age}) {
  print("Gender : $gender \t $firstName \t Age :$age");
}

void main() {
  String firstName = "Saurabh";
  info("Male", firstName: firstName, age: 22);
}
// required is a keyword which requires compulsary data passing throgh an argument to a funtion.