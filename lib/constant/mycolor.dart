import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyColor{

  static const Color btnColor = Color(0xFF0D112E);
  static const Color app_bar_Color = Color(0xFF0D112E);
  static const Color borderColor = Color(0xFF0D112E);
  static const Color txtColor = Color(0xFF0D112E);
  static const Color red = Color(0xFFFF0808);
  static const Color colorCyan = Color(0xFFEBFFEB);
  static const Color colorGreen = Color(0xFF00B600);
  static const Color txtGreen = Color(0xFF00B600);
  static const Color colorPink = Color(0xFFFFEBEB);
  static const Color bgColor = Color(0xFFF1F1F1);
  static const Color bgColorWhite = Color(0xFFFFFFFF);
  static const Color White = Color(0xFFFFFFFF);
  static const Color shedowColor = Color(0xFFEBEBEB);
  static const Color hintColor = Color(0xFF434343);
  static const Color search_hintColor = Color(0xFF8D8D8D);
  static const Color gray = Color(0xFF707070);
  static const Color text_light = Color(0xFFA8A2A2);
  static const Color txtFiled_clr = Color(0xFFE7E7E7);
  static const Color bottom_bg_color = Color(0xFFEFF6EF);

}
class MyStyle{

  static  TextStyle cancelbooking_text = TextStyle(
      color: MyColor.hintColor,
      fontFamily: 'poppins_regular');

}

class OverallDetails extends StatefulWidget {
  var length;


  OverallDetails(this.length,  {Key? key}) : super(key: key);

  @override
  State<OverallDetails> createState() => _OverallDetailsState();
}

class _OverallDetailsState extends State<OverallDetails> {
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
                            Text(widget.length.toString(),style: TextStyle(fontSize: h*0.07,color: MyColor.txtColor,fontFamily: 'poppins_semi_bold')),
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
                          Text(widget.length.toString(),style: TextStyle(fontSize: h*0.07,color: MyColor.txtColor,fontFamily: 'poppins_semi_bold')),
                          Text('Clients',style: TextStyle(fontSize: h*0.02,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
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
                          Text('Intern',style: TextStyle(fontSize: h*0.02,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
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

class ProfitCard extends StatelessWidget {
  const ProfitCard({Key? key}) : super(key: key);

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
                      SizedBox(
                          height:20,
                          width: 20,
                          child: Image.asset('images/android.png',scale: 1,)),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Crash investigation',maxLines: 2,style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                    Text('Application',maxLines: 2,style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                  ],
                ),
                ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: w*0.22
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h*0.07,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('Profit:',style: TextStyle(fontSize: h*0.018,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                    Text(' 4 K',style: TextStyle(fontSize: h*0.022,color: MyColor.txtGreen,fontFamily: 'poppins_regular'))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('Gain:',style: TextStyle(textBaseline: TextBaseline.ideographic,fontSize: h*0.018,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
                    Text(' 1 K',style: TextStyle(textBaseline: TextBaseline.ideographic,fontSize: h*0.022,color: MyColor.txtGreen,fontFamily: 'poppins_regular'))
                  ],
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}



class Indecetor extends StatefulWidget {
  var data;

  int index;

  Indecetor(this.data, int this.index, {Key? key}) : super(key: key);

  @override
  State<Indecetor> createState() => _IndecetorState();
}

class _IndecetorState extends State<Indecetor> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.data[widget.index]['projectname'],style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
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
                            child: Text(widget.data[widget.index]['projectamount'],style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
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
      ),
    );
  }
}


class ProgressIndecetor extends StatefulWidget {
  var data;

  var index;


   ProgressIndecetor(this.data,  this.index,  {Key? key}) : super(key: key);

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
      margin: EdgeInsets.only(top: 10,bottom: 10),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.data[widget.index]['projectname'],style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
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
                          child: Text(widget.data[widget.index]['projectamount'],style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                        )
                      ],
                    )
                )
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

class linearPercentIndicatir extends StatelessWidget {
  final String progress;
  final String percentage;
  final Color? indicator_clr;
  final double percent;
   linearPercentIndicatir({required this.progress,required this.percentage,required this.percent, this.indicator_clr});

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(progress,style: TextStyle(fontSize: h*0.017,color: MyColor.txtColor,fontFamily: 'poppins_regular'),),
            Text(percentage,style: TextStyle(fontSize: h*0.017,color: MyColor.txtColor,fontFamily: 'poppins_regular'),),

          ],
        ),
        Padding(
          padding:  EdgeInsets.only(top: h*0.01),
          child: LinearPercentIndicator(
            width: w*0.820,
            animation: true,
            lineHeight: h*0.005,
            padding: EdgeInsets.symmetric(),
            animationDuration: 2500,
            percent: percent,
            barRadius: Radius.circular(h),
            progressColor: indicator_clr??Colors.green,
          ),
        ),
      ],
    );
  }
}

class DeveloperPaymentDetail extends StatelessWidget {
   DeveloperPaymentDetail({required this.progress, required this.percentage, this.indicator_clr, required this.percent, required this.Name, required this.Role}) ;

final String progress;
final String percentage;
final Color? indicator_clr;
final double percent;
final String Name;
final String Role;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(h*0.012)
      ),
      elevation: 5,
      child: Container(
        height: h*0.21,
        width: w*0.90,
        padding: EdgeInsets.symmetric(horizontal: w*0.0275,vertical: h*0.01),
        decoration: BoxDecoration(
          color: MyColor.White,
          borderRadius: BorderRadius.circular(h*0.012),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ImageIcon(AssetImage('images/edit.png'),size: h*0.03),
              ],
            ),
            Row(
              children: [
                ImageIcon(AssetImage('images/use.png'),color: MyColor.text_light,size: h*0.03),
                Text('Developer Name',style: TextStyle(color: MyColor.text_light,fontSize: h*0.018,fontFamily: 'poppins_regular'),),
              ],
            ),
            Text(Name,style: TextStyle(fontSize: h*0.024,fontFamily: 'poppins_medium',color: MyColor.txtColor),),
            Text(Role,style: TextStyle(fontSize: h*0.016,fontFamily: 'poppins_medium',color: MyColor.gray),),
            SizedBox(height: h*0.01,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(progress,style: TextStyle(fontSize: h*0.018,fontFamily: 'poppins_medium',color: MyColor.text_light),),
                    Text(percentage,style: TextStyle(fontSize: h*0.018,fontFamily: 'poppins_medium',color: MyColor.text_light),),

                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(top: h*0.01),
                  child: LinearPercentIndicator(
                    width: w*0.840,
                    animation: true,
                    lineHeight: h*0.005,
                    padding: EdgeInsets.symmetric(),
                    animationDuration: 2500,
                    percent: percent,
                    barRadius: Radius.circular(h),
                    progressColor: indicator_clr??Colors.green,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}





