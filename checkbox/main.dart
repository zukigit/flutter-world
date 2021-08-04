import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Check Box")),
            body: Center(child: buildWidget())));
  }
}

class buildWidget extends StatefulWidget {
  const buildWidget({Key? key}) : super(key: key);

  @override
  _buildWidgetState createState() => _buildWidgetState();
}

class _buildWidgetState extends State<buildWidget> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: _isChecked,
        activeColor: Colors.redAccent,
        onChanged: (bool? value) {
          setState(() {
            _isChecked = value!;
          });
        });
  }
}
