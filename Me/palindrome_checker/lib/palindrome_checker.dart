import 'package:flutter/material.dart';

class PalindromeChecker {
  bool isPalindrome(int number) {
    String original = number.toString();
    String reversed = original.split('').reversed.join('');
    return original == reversed;
  }
}

class PalindromeCheckerScreen extends StatefulWidget {
  @override
  _PalindromeCheckerScreenState createState() =>
      _PalindromeCheckerScreenState();
}

class _PalindromeCheckerScreenState extends State<PalindromeCheckerScreen> {
  final TextEditingController _numberController = TextEditingController();
  bool _isPalindrome = false;

  void _checkPalindrome() {
    int number = int.tryParse(_numberController.text) ?? 0;
    PalindromeChecker checker = PalindromeChecker();
    setState(() {
      _isPalindrome = checker.isPalindrome(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Palindrome Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter a number'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _checkPalindrome,
              child: Text('Check Palindrome'),
            ),
            SizedBox(height: 16.0),
            Text(
              _isPalindrome ? 'It is a palindrome!' : 'It is not a palindrome.',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
