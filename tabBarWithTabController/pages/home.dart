import 'package:flutter/material.dart';
import 'package:sliverappbar/pages/sliverList.dart';
import 'package:sliverappbar/pages/sliverappbar.dart';

class myHome extends StatelessWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[mySliver(), mySliverList()],
      ),
    );
  }
}
