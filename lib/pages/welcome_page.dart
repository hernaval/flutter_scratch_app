import 'package:flutter/material.dart';
import 'package:scratch_app/misc/colors.dart';
import 'package:scratch_app/widgets/app_text.dart';
import 'package:scratch_app/widgets/responsive_button.dart';

import '../widgets/app_large_text.dart';

class WelcomePage extends StatefulWidget {
   const WelcomePage({Key? key}) : super(key: key);

   @override
   _WelcomePageState createState() => _WelcomePageState();
 }

 class _WelcomePageState extends State<WelcomePage> {
  List<String> images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: PageView.builder(
          scrollDirection: Axis.vertical,
           itemCount: images.length,
           itemBuilder: (_, index) {
         return Container(
            width: double.maxFinite,
           height: double.maxFinite,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("images/${images[index]}"),
               fit: BoxFit.cover
             ),
           ),
           child: Container(
             margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                        AppLargeText(text: "Trips"),
                        AppText(text: "Montain", size: 30),
                        SizedBox(height: 20),
                        Container(
                          width: 250,
                          child: AppText(text: "Lorem ipsum dolor sit amet, "
                              "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut"
                              " labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco "
                              "laboris nisi ut aliquip ex ea commodo consequat", size: 12, color: AppColors.textColor2),
                        ),
                        SizedBox(height: 20),
                        ResponsiveButton(width: 100)
                   ],
                 ),
                 Column(
                   children: List.generate(images.length, (indexDots) {
                     return Container(
                       margin: EdgeInsets.only(bottom: 2),
                       width: 8,
                       height: index ==indexDots ? 25 : 8,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: index ==indexDots ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3)
                       ),
                     );
                   }),
                 )
               ],
             ),
           ),
         );
       })
     );
   }
 }
