import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo.png")
                        )
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("e-Wallet", style: TextStyle(
                      color: Colors.black,
                      fontFamily: "ubuntu",
                      fontSize: 25
                    ),)
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("Account overview", style: TextStyle(
                color: Colors.black,
                fontFamily: "avenir",
                fontSize: 21
            ),),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xfff1f3f6)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("20,600", style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700
                      ),),
                      SizedBox(width: 50,),
                      Text("Current Balance", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),),
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffac30),
                    ),
                    child: Icon(Icons.add, size: 40,),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Send Money", style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    fontFamily: "avenir"),),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/scanqr.png")
                      )
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    margin: EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffac30),
                    ),
                    child: Icon(Icons.add, size: 40,),
                  ),
                  customAvatar("avatar1", "Mike"),
                  customAvatar("avatar2", "John"),
                  customAvatar("avatar2", "Nicolas"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Services", style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  fontFamily: "avenir"
                ),),
                Container(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.dialpad),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(crossAxisCount: 4, childAspectRatio: 0.7,children: [
                serviceWidget("sendMoney", "Send \n Money"),
                serviceWidget("receiveMoney", "Receive \n Money"),
                serviceWidget("phone", "Mobile \n Recharge"),
                serviceWidget("Electricity", "Electricity \n Invoice"),
                serviceWidget("tag", "Cashback \n Offer"),
                serviceWidget("movie", "Movie \n Ticket"),
                serviceWidget("flight", "Flight \n Ticket "),
                serviceWidget("more", "More \n"),
              ],),
            )
          ],
        ),
      ),
    );
  }

  Container customAvatar(String img, String name) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 150,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xfff1f3f6)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/images/$img.png")
              ),
              border: Border.all(
                color: Colors.black,
                width: 2
              )
            ),
          ),
          Text(name, style: TextStyle(
            fontSize: 16,
            fontFamily: "avenir",
            fontWeight: FontWeight.w700
          ),)
        ],
      ),
    );
  }

  Column serviceWidget(String img, String name) {
    return Column(
        children: [
          Expanded(child: InkWell(
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xfff1f3f6)
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/$img.png")
                    )
                  ),
                ),
              ),
            ),
          )
          ),
          SizedBox(height: 5,),
          Text(name, style: TextStyle(fontFamily: "avenir",
          fontSize: 14,), textAlign: TextAlign.center,)
        ],
    );
  }

}

