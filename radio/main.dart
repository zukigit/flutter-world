import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Radio")),
      body: Center(child: radioWidget()),
    ));
  }
}

enum items { John, Paul }

class radioWidget extends StatefulWidget {
  const radioWidget({Key? key}) : super(key: key);

  @override
  _radioWidgetState createState() => _radioWidgetState();
}

class _radioWidgetState extends State<radioWidget> {
  items _selectedItem = items.John;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<items>(
            value: items.John,
            groupValue: _selectedItem,
            onChanged: (items? value) {
              print(value);
              setState(() {
                _selectedItem = value!;
              });
            },
          ),
          title: Text("John"),
        ),
        ListTile(
          leading: Radio<items>(
            value: items.Paul,
            groupValue: _selectedItem,
            onChanged: (items? value) {
              print(value);
              setState(() {
                _selectedItem = value!;
              });
            },
          ),
          title: Text("Curl"),
        )
      ],
    );
  }
}
