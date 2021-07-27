import 'package:flutter/material.dart';

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TabBar(
              controller: _tabController,
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.work)),
                Tab(icon: Icon(Icons.school)),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        Center(
          child: Text("Home"),
        ),
        Center(
          child: Text("Work"),
        ),
        Center(
          child: Text("School"),
        ),
      ]),
    );
  }
}
