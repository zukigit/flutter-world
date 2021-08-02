import 'package:flutter/material.dart';
import 'package:popupmenutesting/classes/menuItem.dart';

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
        title: Text("my popupmenu button"),
        actions: [
          PopupMenuButton<menuItem>(
              onSelected: (item) => item.onSelected(item),
              itemBuilder: (BuildContext context) => [
                    ...firstMenu.map(buildItem).toList(),
                    PopupMenuDivider(),
                    ...secMenu.map(buildItem).toList()
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
            item.itemIcon,
            color: Colors.black,
          ),
          SizedBox(width: 10),
          Text(item.itemValue)
        ],
      ),
    );
