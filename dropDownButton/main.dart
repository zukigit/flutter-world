import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Drop Down Button")),
            body: Center(child: myStful())));
  }
}

class myStful extends StatefulWidget {
  const myStful({Key? key}) : super(key: key);

  @override
  _myStfulState createState() => _myStfulState();
}

class _myStfulState extends State<myStful> {
  String _value = "1";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _value,
      elevation: 10,
      underline: Container(height: 3, color: Colors.redAccent),
      onChanged: (String? newValue) {
        setState(() {
          _value = newValue!;
        });
      },
      items: <int>[1, 2, 3, 4, 5].map<DropdownMenuItem<String>>((int value) {
        return DropdownMenuItem<String>(
          value: value.toString(),
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }
}
