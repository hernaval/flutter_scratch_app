import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratch_app/screens/widgets/home_app_bar.dart';
import 'package:scratch_app/screens/widgets/job_list.dart';
import 'package:scratch_app/screens/widgets/search_card.dart';
import 'package:scratch_app/screens/widgets/tag_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
        ),
        child: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(label: "", icon: Icon(Icons.home, size: 20,)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.cases_outlined, size: 20,)),
            BottomNavigationBarItem(label: "", icon: Text("")),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.chat_outlined, size: 20,)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.person_outline, size: 20,)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          // background
          Row(
            children: [
              // white container
              Expanded(
                flex: 2,
                child: Container(),
              ),
              // grey container
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              )
            ],
          ),
          // main content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SearchCard(),
              TagList(),
              JobList()
            ],
          )
        ],
      ),
    );
  }
}
