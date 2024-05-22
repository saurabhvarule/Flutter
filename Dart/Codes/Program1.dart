int sum(int size) {
  List<int> sumArr = List.generate(100, (index) => 0);
  for (int i = 0; i < size; i++) {
    sumArr[i] = i + 1;
  }
  
  for (int i = 1; i < size; i++) {
    sumArr[i] = sumArr[i] + sumArr[i - 1];
  }
  return sumArr[size - 1];
}

void main() {
  print(sum(10));
}
