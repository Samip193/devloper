import 'package:flutter/material.dart';

import 'mycolor.dart';

class ProgressCard extends StatefulWidget {
  var data;

  var index;

   ProgressCard(this.data, this.index, {Key? key}) : super(key: key);

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override

  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
      height: h*0.35,
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
                Text('Project ID : ${widget.data[widget.index]['projectid']}',style: TextStyle(fontSize: h*0.017,color: MyColor.txtColor,fontFamily: 'poppins_regular'),),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: w*0.2
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height:20,
                          width: 20,child:widget.data[widget.index]['forandroid'] == true ? Image.asset('images/android.png',scale: 1,):SizedBox()),
                      SizedBox(
                          height:20,
                          width: 20,child:widget.data[widget.index]['forapple'] == true ? Image.asset('images/apple.png',scale: 1,):SizedBox()),
                      SizedBox(
                          height:20,
                          width: 20,child:widget.data[widget.index]['forweb'] == true ? Image.asset('images/network.png',scale: 1,):SizedBox()),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: h*0.005,),
            linearPercentIndicatir(progress: 'Work Progress',percentage: '80%',percent: 0.8),
            linearPercentIndicatir(progress: 'Payment Progress',percentage: '40%',percent: 0.4,),
            linearPercentIndicatir(progress: 'Developer 1',percentage: '40%',percent: 0.4),
            linearPercentIndicatir(progress: 'Developer 2',percentage: '40%',percent: 0.4),
            linearPercentIndicatir(progress: 'Developer 3',percentage: '40%',percent: 0.4),
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