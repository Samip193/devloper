import 'package:flutter/material.dart';

import 'mycolor.dart';


class TeamDetails extends StatelessWidget {
  TeamDetails({required this.devloperName,required this.devloperAmount,required this.devloperRole});
  final String devloperName;
  final String devloperAmount;
  final String devloperRole;

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
      margin: EdgeInsets.only(top: h*0.01,bottom: h*0.015),
      height: h*0.24,
      width: w*0.90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(h*0.015),
        boxShadow: [
          BoxShadow(
            color: MyColor.shedowColor,
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(2, 5), // changes position of shadow
          ),
        ],
        // border: Border.all(color: Colors.blueAccent)
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: w*0.0375,vertical: h*0.015   ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DevoloperName : $devloperName',style: TextStyle(fontSize: h*0.020,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                Text('DevoloperAmount : $devloperAmount',style: TextStyle(fontSize: h*0.020,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                Text('DevoloperRole : $devloperRole',style: TextStyle(fontSize: h*0.022,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
              ],
            ),
            linearPercentIndicatir(progress: 'Work Progress',percentage: '80%',percent: 0.8),
            linearPercentIndicatir(progress: 'Payment Progress',percentage: '40%',percent: 0.4),
          ],
        ),
      ),
    );
  }
}