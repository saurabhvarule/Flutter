import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: new Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: <Widget>[
          Text("This is Saurabh"),
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black45,
              ),
              Column(
                children: <Widget>[
                  Text("Saurabh Namdev varule"),
                  Text("Computer Engineer Graduate Fresher")
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
