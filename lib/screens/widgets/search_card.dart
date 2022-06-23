import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      margin:EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 40
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage("assets/images/search_bg.png"),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text("Fast Search", style: TextStyle(
              color: Colors.white,
              fontSize: 26
            ),),
            SizedBox(height: 5,),
            Text("You can search quickly for \n the job you want",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              height: 1.8
            ),),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                Image.asset("assets/icons/search.png", width: 20,),
                SizedBox(width: 10),
                Text("Search", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
