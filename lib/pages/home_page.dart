import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:scratch_app/misc/colors.dart';
import 'package:scratch_app/widgets/chart_activity_status.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
  
  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome", style: TextStyle(
                        fontSize: 14,
                        color: black
                      ),),
                      SizedBox(height: 5,),
                      Text("Sophemen", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: black
                      ),),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: black.withOpacity(0.03),
                      borderRadius: BorderRadius.circular(12)

                    ),
                    child: Center(
                      child: Icon(LineIcons.bell),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        colors: [secondary, primary]
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                            width: (size.width),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("BMI  (Body Mass Index", style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold, color: white),),
                                Text("BMI  (Body Mass Index", style: TextStyle(fontSize: 13,
                                    fontWeight: FontWeight.w400, color: white),),
                                Container(
                                  width: 95,
                                    height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          colors: [fourthColor, thirdColor]
                                      )
                                  ),
                                  child: Center(
                                    child: Text("View more", style: TextStyle(fontSize: 13, color: white))
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [fourthColor, thirdColor]
                            )
                        ),
                        child: Center(
                          child: Text("20,3", style: TextStyle(fontSize: 13, color: white),),
                        ),
                      )
                    ],
                  ),
                ), //
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: secondary.withOpacity(0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Today target", style: TextStyle(fontSize: 17, color: black, fontWeight: FontWeight.w600),),
                      Container(
                        width: 70,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [secondary, primary]
                            )
                        ),
                        child: Center(
                            child: Text("Check", style: TextStyle(fontSize: 13, color: white))
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text("Activity Status", style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: black
              ),),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: secondary.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: LineChart(activityData()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Heart Rate", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
