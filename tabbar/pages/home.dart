import 'package:flutter/material.dart';

class myHome extends StatelessWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.school),
                ),
                Tab(
                  icon: Icon(Icons.work),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("Home")),
              Center(child: Text("School")),
              Center(child: Text("Work")),
            ],
          )),
    );
  }
}
