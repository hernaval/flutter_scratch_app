import 'package:flutter/material.dart';
import 'package:scratch_app/pages/bar_item_page.dart';
import 'package:scratch_app/pages/detail_page.dart';
import 'package:scratch_app/pages/home_page.dart';
import 'package:scratch_app/pages/my_page.dart';
import 'package:scratch_app/pages/search_page.dart';
import 'package:scratch_app/pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  List pages = [
      DetailPage(),
      BarItemPage(),
      SearchPage(),
      MyPage()
  ];
  int currentIndex= 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          onTap: onTap,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "My",icon: Icon(Icons.person)),
          ],
        ),
        body: pages[currentIndex],
      )
    );
  }
}
