import 'package:flutter/material.dart';

import 'Topbar.dart';
import 'mycolor.dart';

class MAin_Account extends StatelessWidget {
  final String balance;
   MAin_Account({required this.balance});

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Positioned(
      bottom: -h*0.123,
      left: w*0.17,
      child: Container(
        height: h*0.23,
        width: w*0.47,
        decoration: BoxDecoration(
          color: MyColor.White,
          border: Border.all(color: MyColor.borderColor,width: w*0.005),
          shape: BoxShape.circle,
            boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.09),
              blurRadius: 3,
              spreadRadius: 4,
            )]
          //borderRadius: BorderRadius.circular(h),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Main Account',style: TextStyle(fontSize: h*0.018,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                  Text('Balance',style: TextStyle(fontSize: h*0.018,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                ],
              ),
              Text(balance,style: TextStyle(fontSize: h*0.045,color: MyColor.txtColor,fontFamily: 'poppins_semi_bold')),

            ],

          ),
        ),
      ),
    );
  }
}

class My_Account extends StatelessWidget {
  final String balance;
  final Color? clr;
  const My_Account({required this.balance, this.clr}) ;

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Positioned(
      bottom: -h*0.127,
      left: w*0.51,
      child: Container(
        height: h*0.18,
        width: w*0.36,
        decoration: BoxDecoration(
          color:clr ?? MyColor.colorCyan,
          border: Border.all(color: MyColor.borderColor,width: w*0.005),
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.09),
            blurRadius: 3,
            spreadRadius: 4,
          )]
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Account',style: TextStyle(fontSize: h*0.016,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                  Text('Balance',style: TextStyle(fontSize: h*0.016,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                ],
              ),
              Text(balance,style: TextStyle(fontSize: h*0.04,color: MyColor.txtColor,fontFamily: 'poppins_semi_bold')),
            ],
          ),
        ),
      ),
    );
  }
}

