import 'package:flutter/material.dart';

class mySliver extends StatelessWidget {
  const mySliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: true,
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        background: FlutterLogo(),
        title: Text("sliver app bar"),
      ),
    );
  }
}
