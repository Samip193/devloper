import 'package:flutter/material.dart';

import 'mycolor.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
      height: h*0.29,
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Project ID : 161654651',style: TextStyle(fontSize: h*0.017,color: MyColor.txtColor,fontFamily: 'poppins_regular'),),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: w*0.2
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('images/android.png',scale: 1,),
                      Image.asset('images/apple.png',scale: 1,),
                      Image.asset('images/network.png',scale: 1,),

                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Veggi 365',style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: w*0.22
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h*0.04,
                          width: w*0.004,
                          color: MyColor.gray,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: w*0.01),
                          child: Text('1.5 L',style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                        )
                      ],
                    )
                )
              ],
            ),
            linearPercentIndicatir(progress: 'Payment Progress',percentage: '80%',percent: 0.8),
            linearPercentIndicatir(progress: 'Current profit Progress: -70 K',percentage: '-40%',percent: 0.4,indicator_clr: MyColor.red),
            linearPercentIndicatir(progress: 'Total profit: 4.5 K',percentage: '50%',percent: 0.5),
          ],
        ),
      ),
    );
  }
}


class TextModel extends StatelessWidget {
  TextModel({required this.amount, required this.txt, this.clr}) ;

  final String amount;
  final String txt;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Column(
      children: [
        Text(amount,style: TextStyle(fontSize: h*0.04,color:clr ?? MyColor.txtColor,fontFamily: 'poppins_medium')),
        Text(txt,style: TextStyle(fontSize: h*0.02,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
      ],
    );
  }
}