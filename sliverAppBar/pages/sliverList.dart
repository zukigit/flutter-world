import 'package:flutter/material.dart';

class mySliverList extends StatelessWidget {
  const mySliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          color: index.isEven ? Colors.blueAccent : Colors.redAccent,
          child: Center(
            child: Text(
              "No. $index",
              textScaleFactor: 3,
            ),
          ),
        );
      }, childCount: 20),
    );
  }
}
