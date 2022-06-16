import 'package:flutter/material.dart';
import 'package:scratch_app/misc/colors.dart';
import 'package:scratch_app/widgets/app_large_text.dart';
import 'package:scratch_app/widgets/app_text.dart';
import 'package:scratch_app/widgets/responsive_button.dart';

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
            Positioned(
              top: 250,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 32),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: "Domsta", color: Colors.black54,),
                        AppLargeText(text: "\$ 250", color: AppColors.textColor1,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: AppColors.mainColor,),
                        SizedBox(width: 10,),
                        AppText(text: "USA, California",color: AppColors.textColor1,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star, color: AppColors.starColor);
                          })
                          ,
                        ),
                        AppText(text: "(4.0", color: AppColors.textColor2,)
                      ],
                    ),
                    SizedBox(height: 25,),
                    AppLargeText(text: "People", color: Colors.black.withOpacity(0.8), size: 20,),
                    SizedBox(height: 5,),
                    AppText(text: "Number of people in your group", color: AppColors.mainTextColor,),
                    SizedBox(height: 10,),
                    Wrap(
                      children: List.generate(5, (index) => InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index==0 ? Colors.black : AppColors.buttonBackground
                          ),
                          child: Center(child: AppText(text: "$index", color: index == 0 ? Colors.white : AppColors.mainTextColor )),
                        ),
                      )),
                    ),
                    SizedBox(height: 20,),
                    AppLargeText(text: "Description", color: Colors.black.withOpacity(0.8), size: 20,),
                    SizedBox(height: 5,),
                    AppText(text: "Number of people in your group", color: AppColors.mainTextColor,),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.black
                              )
                          ),
                          child: Center( child: Icon(Icons.favorite_outline),),
                        ),
                        ResponsiveButton(isResponsive: true)
                      ],
                    )
                  ],
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
