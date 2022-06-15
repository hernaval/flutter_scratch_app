import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value = "Flutter scratch app";
  List<BottomNavigationBarItem> _item = [];
  List article = List<String>.generate(25, (index) => "Article $index");



  void onClick() {
    setState(() {
      value = "Thanks for clicking";
    });
  }

  void onClickTwo() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bonjour les amis !")
              ],
            ),
          );
        }
    );
  }

  Future showAlert() async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("Are you bored"),
            children: [
              SimpleDialogOption(
                child: Text("OUI", style: TextStyle(color: Colors.blue),),
                onPressed: () {},
              )
            ],
          );
        }
        );
  }

  @override
  void initState() {
    super.initState();
    _item.add(BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey), label: "Home"));
    _item.add(BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.grey), label: "Home"));
    _item.add(BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.grey), label: "Home"));
    _item.add(BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle, color: Colors.grey), label: "Home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(value),
          actions: const [
            Icon(Icons.notification_add_sharp, size: 30),
            Icon(Icons.download, size: 30)
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: Text("Create a task"),
        ),
        // persistentFooterButtons: const [
        //   Icon(Icons.home, size: 25),
        //   Icon(Icons.favorite, size: 25),
        //   Icon(Icons.search, size: 25),
        // ],
        bottomNavigationBar: BottomNavigationBar(
          items: _item
        ),
        body: PageView.builder(
            itemBuilder: (BuildContext context, int index) =>
              PageWidget(entry: pages[index])
            ,
            itemCount: pages.length,
        )
    );
  }
}

class PageInfo {
  final String title;
  final String image;
  final String description;

  const PageInfo(this.title, this.image, this.description);

}

final List<PageInfo> pages= [
  PageInfo("Introduction", "images/1.png", "This is a sample introduction images"),
  PageInfo("Bacis", "images/2.jpg", "This is a sample thing you must know"),
  PageInfo("Deep", "images/3.jpg", "Go deeper with this section")
];

class PageWidget extends StatefulWidget {
  final PageInfo entry;
  const PageWidget({Key? key, required this.entry}) : super(key: key);
  @override
  _PageWidgetState createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: ListView(
        children: [
          Row(
            children: [
              Text(widget.entry.title, style: TextStyle(color: Colors.blue, fontSize: 25))
            ],
          ),
          SizedBox(height: 10),
          Image.asset(widget.entry.image, fit: BoxFit.cover,),
          SizedBox(height: 10),
          Text(widget.entry.description, style: TextStyle(color: Colors.blue, fontSize: 15))
        ],
    ),
    );
  }
}
