import "package:flutter/material.dart";

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  int count = 0;
  void countPalindrome() {
    count = 0;
    List<int> numbersList = [1, 225, -777, 121, 111, 234, 999];
    for (int i = 0; i < numbersList.length; i++) {
      int temp = numbersList[i].abs();
      int reverseNum = 0;
      while (temp != 0) {
        reverseNum = reverseNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }
      if (reverseNum == numbersList[i].abs()) {
        count++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                countPalindrome();
                setState(() {});
              },
              child: const Text("Check Palindrome"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("$count Numbers are Palindrome ")
          ],
        ),
      ),
    );
  }
}
