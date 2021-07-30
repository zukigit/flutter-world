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
          PopupMenuButton<menuItem>(
              onSelected: (item) => onPressFunction(context, item),
              itemBuilder: (BuildContext context) => [
                    ...menuItems.map(buildItem).toList(),
                    PopupMenuDivider(),
                    ...menuItems2.map(buildItem).toList()
                  ])
        ],
      ),
    );
  }
}

PopupMenuItem<menuItem> buildItem(menuItem item) => PopupMenuItem<menuItem>(
      value: item,
      child: Row(
        children: [
          Icon(
            item.menuIcon,
            color: Colors.black,
          ),
          SizedBox(width: 10),
          Text(item.menuVal)
        ],
      ),
    );

void onPressFunction(BuildContext, menuItem item) {
  print(item.menuVal);
}
