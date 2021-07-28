import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: myHome());
  }
}

class myHome extends StatelessWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My Home')),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            print("Love you so much");
          },
          style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 60)),
          child: Text("press me"),
        )));
  }
}
