import 'package:flutter/material.dart';
import 'package:scratch_app/home_page.dart';

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
      home: const WelcomePage(),
      routes: {
        '/home': (context) => HomePage()
      },
    );
  }
}
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sideImg.png"),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.7,
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("06:22 AM", style: TextStyle(
                      fontSize: 30,
                      fontFamily: "avenir",
                      fontWeight: FontWeight.w500
                    ),),
                    Expanded(child: Container()),
                    Container(
                      height: 20,
                        width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cloud.png")
                        )
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("34 C", style: TextStyle(
                      fontSize: 30,
                      fontFamily: "avenir",
                      fontWeight: FontWeight.w600
                    ),),

                  ],
                ),
                Text("Aug 1, 2022 | Wednesday", style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),),
                Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                              width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/logo.png"),
                                fit: BoxFit.contain
                              )
                            ),
                          ),
                          Text("e-Wallet", style: TextStyle(
                            fontSize: 50,
                            fontFamily: "ubuntu",
                            fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 10,),
                          Text("Open an account for Digital e-Wallet app", style: TextStyle(
                            color: Colors.grey
                          ),)
                        ],
                      ),
                    )
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffffac30),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign up", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Text("Create an account", style: TextStyle(
                    fontSize: 16
                  ),),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}


