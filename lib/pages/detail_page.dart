import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
                top: 0,
                child: Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: AssetImage("images/mountain.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                )
            ),
            Positioned(
                left: 20,
                top: 20,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white,))
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
