import 'package:flutter/material.dart';
import 'package:popupmenu/data/menuItems.dart';

void main() => runApp(myApp());

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
      appBar: AppBar(
        title: Text("PopUpMenu"),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return menuItems.map((menuItem items) {
                return PopupMenuItem(
                    child: ListTile(
                  onTap: () {
                    print("${items.menuVal}");
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    items.menuIcon,
                    size: 20.0,
                  ),
                  title: Text(
                    items.menuVal,
                    style: TextStyle(color: Colors.red),
                  ),
                ));
              }).toList();
            },
          )
        ],
      ),
    );
  }
}
