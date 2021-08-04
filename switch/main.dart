import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Switch")),
      body: Column(
        children: [switchWidget(), switchListTile()],
      ),
    ));
  }
}

class switchWidget extends StatefulWidget {
  const switchWidget({Key? key}) : super(key: key);

  @override
  _switchWidgetState createState() => _switchWidgetState();
}

class _switchWidgetState extends State<switchWidget> {
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("light"),
      leading: Icon(
        Icons.lightbulb,
        color: _light ? Colors.amber : Colors.brown,
      ),
      trailing: Switch(
        value: _light,
        onChanged: (bool value) {
          setState(() {
            _light = value;
          });
        },
      ),
    );
  }
}

class switchListTile extends StatefulWidget {
  const switchListTile({Key? key}) : super(key: key);

  @override
  _switchListTileState createState() => _switchListTileState();
}

class _switchListTileState extends State<switchListTile> {
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _light,
      title: const Text("home light"),
      secondary: Icon(Icons.lightbulb,
          color: _light ? Colors.amber : Colors.brown[500]),
      onChanged: (bool value) {
        setState(() {
          _light = value;
        });
      },
    );
  }
}
