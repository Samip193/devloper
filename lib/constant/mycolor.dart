import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyColor{

  static const Color btnColor = Color(0xFF0D112E);
  static const Color app_bar_Color = Color(0xFF0D112E);
  static const Color borderColor = Color(0xFF0D112E);
  static const Color txtColor = Color(0xFF0D112E);
  static const Color colorCyan = Color(0xFFEBFFEB);
  static const Color colorGreen = Color(0xFF00B600);
  static const Color colorPink = Color(0xFFFFEBEB);
  static const Color bgColor = Color(0xFFF1F1F1);
  static const Color bgColorWhite = Color(0xFFFFFFFF);
  static const Color White = Color(0xFFFFFFFF);
  static const Color shedowColor = Color(0xFFEBEBEB);
  static const Color hintColor = Color(0xFF434343);
  static const Color search_hintColor = Color(0xFF8D8D8D);
  static const Color gray = Color(0xFF707070);
}
class MyStyle{

  static  TextStyle cancelbooking_text = TextStyle(
      color: MyColor.hintColor,
      fontFamily: 'poppins_regular');

}

class OverallDetails extends StatelessWidget {
  const OverallDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(h*0.012)
      ),
      elevation: 5,
      child: Container(
        height: h*0.32,
        width: w*0.90,
        decoration: BoxDecoration(
          color: MyColor.White,
          borderRadius: BorderRadius.circular(h*0.012),

        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    width:w*0.4,

                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color:MyColor.borderColor),
                        )
                    ),
                    child:
                    Center(
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: h*0.01),
                        child: Column(
                          children: [
                            Text('10',style: TextStyle(fontSize: h*0.07,color: MyColor.txtColor,fontFamily: 'poppins_semi_bold')),
                            Text('Projects',style: TextStyle(fontSize: h*0.02,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width:w*0.4,
                    decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(color:MyColor.borderColor),
                          bottom: BorderSide(color:MyColor.borderColor),
                        )
                    ),
                    child:
                    Center(
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: h*0.01),
                        child: Column(
                          children: [
                            Text('20',style: TextStyle(fontSize: h*0.07,color: MyColor.txtColor,fontFamily: 'poppins_semi_bold')),
                            Text('Devloper',style: TextStyle(fontSize: h*0.02,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    width:w*0.4,

                    child:
                    Center(
                      child: Column(
                        children: [
                          Text('10',style: TextStyle(fontSize: h*0.07,color: MyColor.txtColor,fontFamily: 'poppins_semi_bold')),
                          Text('Projects',style: TextStyle(fontSize: h*0.02,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width:w*0.4,
                    decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(color:MyColor.borderColor),
                        )
                    ),
                    child:
                    Center(
                      child: Column(
                        children: [
                          Text('20',style: TextStyle(fontSize: h*0.07,color: MyColor.txtColor,fontFamily: 'poppins_semi_bold')),
                          Text('Devloper',style: TextStyle(fontSize: h*0.02,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SearchBar extends StatefulWidget {

  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  double valueHolder = 00;
  double pricevalueHolder = 00;
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
      margin:  EdgeInsets.only(left: w*0.02750, right:  w*0.02750, top: h*0.0120, bottom: h*0.0120),
      padding:  EdgeInsets.only(left: w*0.055, right: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(h),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: w*0.0275),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Project Name',
                  hintStyle: TextStyle(color: MyColor.search_hintColor,fontFamily: 'poppins_regular'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {

              });

            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: h*0.066,
              width: w*0.17,
              decoration:  BoxDecoration(
                  color: MyColor.colorGreen,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(h),
                    bottomRight: Radius.circular(h),
                  )),
              child: Image.asset('images/search.png',scale: 1.2,),

            ),
          ),
        ],
      ),
    );
  }

}

class ProgressIndecetor extends StatefulWidget {
  const ProgressIndecetor({Key? key}) : super(key: key);

  @override
  State<ProgressIndecetor> createState() => _ProgressIndecetorState();
}

class _ProgressIndecetorState extends State<ProgressIndecetor> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Work Progress',style: TextStyle(fontSize: h*0.017,color: MyColor.txtColor,fontFamily: 'poppins_regular'),),
                    Text('80%',style: TextStyle(fontSize: h*0.017,color: MyColor.txtColor,fontFamily: 'poppins_regular'),),

                  ],
                ),
                LinearPercentIndicator(
                  width: w*0.820,
                  animation: true,
                  lineHeight: h*0.005,
                  animationDuration: 2500,
                  percent: 0.8,
                  barRadius: Radius.circular(h),
                  progressColor: Colors.green,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Progress',style: TextStyle(fontSize: h*0.017,color: MyColor.txtColor,fontFamily: 'poppins_regular'),),
                    Text('40%',style: TextStyle(fontSize: h*0.017,color: MyColor.txtColor,fontFamily: 'poppins_regular'),),

                  ],
                ),
                LinearPercentIndicator(
                  width: w*0.820,
                  animation: true,
                  lineHeight: h*0.005,
                  animationDuration: 2500,
                  percent: 0.4,
                  barRadius: Radius.circular(h),
                  progressColor: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}




