import 'dart:ui';

import 'package:flutter/material.dart';

import '../constant/Crashinvastigation_component.dart';
import '../constant/mycolor.dart';

class Crashinvestigation extends StatelessWidget {
  const Crashinvestigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crash Investigation Application',
            style: TextStyle(fontFamily: 'poppins_medium'),
          ),
          backgroundColor: MyColor.app_bar_Color,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w*0.0275, vertical: h*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              aboutproject("Name", "Crash Investigation Application"),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("Client Name", "xyz"),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("Status", "Pendding"),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("Project Amount", "1.5 L"),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("Project Duration", "1 month + 1 week"),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("Payment Recived", "80 K"),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("Payment Remaining", "70 K"),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("Profit", "70 K"),
              SizedBox(
                height: h*0.02,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Requirements",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(height: h*0.01,),
                    Row(
                      children: [
                        SizedBox(
                            height: h*0.030,
                            width: w*0.060,
                            child: Image.asset(
                              "images/android.png",
                            )),
                        SizedBox(
                            height: h*0.030,
                            width: w*0.060,
                            child: Image.asset(
                              "images/apple.png",
                            )),
                        SizedBox(
                            height: h*0.030,
                            width: w*0.060,
                            child: Image.asset(
                              "images/web.png",
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h*0.02,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Application Developer (2)",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(height: h*0.01,),
                    Text(
                      "1. jcdhb hhdc h",
                      style: TextStyle(fontSize: h*0.0225),
                    ),
                    SizedBox(height: h*0.01,),
                    Text(
                      "1. jcdhb hhdc h",
                      style: TextStyle(fontSize: h*0.0225),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("aboutproject",'1. jcdhb hhdc h'),
              SizedBox(
                height: h*0.02,
              ),
              aboutproject("aboutproject",'1. jcdhb hhdc h'),
            ],
          ),
        ),
      ),
    );
  }


}

