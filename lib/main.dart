import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: [
              Home(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.home, size: 30)),
                Tab(icon: Icon(Icons.search, size: 30)),
                Tab(icon: Icon(Icons.add_box, size: 30)),
                Tab(icon: Icon(Icons.favorite_border, size: 30)),
                Tab(icon: Icon(Icons.perm_identity, size: 30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
