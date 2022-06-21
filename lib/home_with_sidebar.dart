import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratch_app/home_page.dart';

class HomeWithSidebar extends StatelessWidget {
  const HomeWithSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWithSidebarWidget(),
    );
  }
}

class HomeWithSidebarWidget extends StatefulWidget {
  const HomeWithSidebarWidget({Key? key}) : super(key: key);

  @override
  _HomeWithSidebarWidgetState createState() => _HomeWithSidebarWidgetState();
}

class _HomeWithSidebarWidgetState extends State<HomeWithSidebarWidget> with  TickerProviderStateMixin {
  bool sidebarActive= true;
  late AnimationController rotationController;

  @override
  void initState() {
    super.initState();
    rotationController = AnimationController(vsync: this, duration: Duration(microseconds: 200));

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f3f6),
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width*0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xfff1f3f6),
                              image: DecorationImage(
                                image: AssetImage("assets/images/avatar4.png")
                              )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hernaval Ranarivola ",style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w700
                              ),),
                              Text("Fianarantsoa ",style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                color: Colors.grey
                              ),),

                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              navigatorTile("Home", true),
              navigatorTile("Profile", false),
              navigatorTile("Account", false),
              navigatorTile("Home", false),
              navigatorTile("Transactions", false),
              navigatorTile("Stats", false),
            ],
          )
          ),

          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(20),
            child: Text("V2.0.1", style: TextStyle(
              color: Colors.grey
            ),),
          ),
          // Container(
          //   padding: EdgeInsets.all(20),
          //   child: Row(
          //     children: [
          //       Icon(Icons.power_settings_new, size: 30,),
          //       Text("Logout", style: TextStyle(
          //         fontSize: 20,
          //         fontWeight: FontWeight.w700
          //       ),)
          //     ],
          //   ),
          // ),
          AnimatedPositioned(
            duration: Duration(microseconds: 200),
            left: (sidebarActive) ?  MediaQuery.of(context).size.width*0.6 : 0,
            top: (sidebarActive) ?  MediaQuery.of(context).size.height*0.2 : 0,
            child: RotationTransition(
              turns: sidebarActive ? Tween(begin: -0.05, end: 0.0).animate(rotationController) :
              Tween(begin: 0.0, end: -0.05).animate(rotationController),
              child: AnimatedContainer(
                height: (sidebarActive) ? MediaQuery.of(context).size.height*0.7
                    : MediaQuery.of(context).size.height ,
                width: (sidebarActive) ? MediaQuery.of(context).size.width*0.8
                    : MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white
                ), duration: Duration(microseconds: 200),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: HomePage(),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 20,
            child: (sidebarActive) ?
            IconButton(
              padding: EdgeInsets.all(30),
                onPressed: toogleSidebar ,
                icon: Icon(Icons.close, color: Colors.black, size: 30,)
            ) :
                InkWell(
                  onTap: toogleSidebar,
                  child: Container(
                    margin: EdgeInsets.all(17),
                    height: 30,
                      width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/menu.png")
                      )
                    ),
                  ),
                )
          )
        ],
      ),

    );
  }

  void toogleSidebar() {

    setState(() {
      sidebarActive = !sidebarActive;
    });
  }

  Row navigatorTile(String name, bool isSelected) {
    return Row(
      children: [
        isSelected ? Container(
          width: 5,
          height: 60,
            color: Color(0xffffac30),
        ) : Container(
          width: 5,
          height: 60,
        ),
        SizedBox(width: 10, height: 60,),
        Text(name, style: TextStyle(
          fontSize: 16,
          fontWeight: (isSelected) ? FontWeight.w700 : FontWeight.w400
        ),)
      ],
    );
  }
}
