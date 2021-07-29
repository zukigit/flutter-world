import 'package:flutter/material.dart';

class menuItem {
  String menuVal;
  IconData menuIcon;

  menuItem(this.menuVal, this.menuIcon);
}

final List<menuItem> menuItems = [
  new menuItem("setting", Icons.settings),
  new menuItem("share", Icons.share)
];
