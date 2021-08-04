import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Slider"),
          ),
          body: sliderWidget()),
    );
  }
}

class sliderWidget extends StatefulWidget {
  const sliderWidget({Key? key}) : super(key: key);

  @override
  _sliderWidgetState createState() => _sliderWidgetState();
}

class _sliderWidgetState extends State<sliderWidget> {
  double _currentVal = 0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentVal,
      min: 0,
      max: 100,
      divisions: 100,
      label: _currentVal.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentVal = value;
        });
      },
    );
  }
}
