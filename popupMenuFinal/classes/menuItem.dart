import 'package:flutter/material.dart';

class menuItem {
  String itemValue;
  IconData itemIcon;

  menuItem(this.itemIcon, this.itemValue);

  void onSelected(menuItem) {
    print(menuItem.itemValue);
  }
}

List<menuItem> firstMenu = [
  menuItem(Icons.settings, "Setting"),
  menuItem(Icons.share, "Share")
];

List<menuItem> secMenu = [menuItem(Icons.logout, "Logout")];
