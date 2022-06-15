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
        body: Center(
          child: Stack(
            children: [
              Flex(direction: Axis.vertical,
                children: [
                  Expanded(
                    flex: 1,
                      child: Container(
                        color: Colors.black,
                      )
                  ),
                  Expanded(
                    flex: 3,
                      child: Container(
                        color: Colors.yellow,
                      )
                  )
                ],
              ),
              Positioned(
                top: 50,
                left: 20,
                right: 20,
                child: Container(
                  height: 400,
                  width: 300,
                  color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  bool isChecked = false;
  int val = 0;
  bool isLive= false;

  void change (value) {
    setState(() {
      val = value;
    });
  }

  void handleLive(value) {
    setState(()  {
      isLive = !isLive;
    });
  }

  Widget CustomRadio() {
    List <Widget> _buttonRadio = [];
    for(int i=0; i<4; i++) {
      _buttonRadio.add(
        RadioListTile(value: i, groupValue: val, onChanged: change, activeColor: Colors.redAccent, title: Text("Choix $i"), )
      );
    }
    return Column(
      children: _buttonRadio,
    );
  }

  Widget CustomCheckbox() {
    return Column(
      children: [
        CheckboxListTile(
          value: isLive,
          onChanged: handleLive,
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text("Judo live"),
          subtitle: const Text("Ippon, Waza-ari"),
        )
      ],
    );
  }

  Widget CustomTextfiled() {
    return const TextField(
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Your name please",
        icon: Icon(Icons.supervised_user_circle),
      ),
      keyboardType: TextInputType.text,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       CustomTextfiled() ,CustomRadio(), CustomCheckbox()
      ],
    );
  }
}




