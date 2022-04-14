import 'package:flutter/material.dart';

import 'mycolor.dart';

class TopBar extends StatefulWidget {
  String? title;
   TopBar({this.title}) ;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
      height: h*0.12,
      width: w,
      color: MyColor.app_bar_Color,
      child: Padding(
        padding:  EdgeInsets.only(left: w*0.0375,right: w*0.0375,top: h*0.014),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("images/menu.png",scale: 1.3,),
            Padding(
              padding:  EdgeInsets.only(right: w*0.2),
              child: Text(widget.title!,style: TextStyle(fontSize: h*0.03,color: MyColor.White,fontFamily: 'poppins_medium'),),
            ),
            Icon(Icons.account_circle,color: MyColor.White,size: h*0.05,),

          ],
        ),
      ),
    );
  }
}
