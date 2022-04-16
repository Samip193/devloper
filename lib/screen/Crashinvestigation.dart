import 'dart:ui';

import 'package:flutter/material.dart';

import '../constant/mycolor.dart';

class Crashinvestigation extends StatelessWidget {
  const Crashinvestigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              aboutproject("Name", "Crash Investigation Application"),
              SizedBox(
                height: 15,
              ),
              aboutproject("Client Name", "xyz"),
              SizedBox(
                height: 15,
              ),
              aboutproject("Status", "Pendding"),
              SizedBox(
                height: 15,
              ),
              aboutproject("Project Amount", "1.5 L"),
              SizedBox(
                height: 15,
              ),
              aboutproject("Project Duration", "1 month + 1 week"),
              SizedBox(
                height: 15,
              ),
              aboutproject("Payment Recived", "80 K"),
              SizedBox(
                height: 15,
              ),
              aboutproject("Payment Remaining", "70 K"),
              SizedBox(
                height: 15,
              ),
              aboutproject("Profit", "70 K"),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Requirements",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(
                              "images/android.png",
                            )),
                        SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(
                              "images/apple.png",
                            )),
                        SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(
                              "images/web.png",
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Application Developer (2)",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "1. jcdhb hhdc h",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "1. jcdhb hhdc h",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              aboutproject("aboutproject",'1. jcdhb hhdc h'),
              SizedBox(
                height: 15,
              ),
              aboutproject("aboutproject",'1. jcdhb hhdc h'),
            ],
          ),
        ),
      ),
    );
  }

  Widget aboutproject(title, data) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: 5,),
          Text(
            data,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
