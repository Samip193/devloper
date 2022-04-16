import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/mycolor.dart';

class NewDevoloper extends StatefulWidget {
  const NewDevoloper({Key? key}) : super(key: key);

  @override
  State<NewDevoloper> createState() => _NewDevoloperState();
}

class _NewDevoloperState extends State<NewDevoloper> {
  final DevoloperName = TextEditingController();
  final Amount = TextEditingController();
  final Role = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Devoloper",
          style: TextStyle(fontFamily: 'poppins_medium'),
        ),
        backgroundColor: MyColor.app_bar_Color,
        actions: [
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.check,size: 30,)),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: DevoloperName,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: w * 0.02),
                    child: Image.asset(
                      "images/files.png",
                      scale: 30,
                    ),
                  ),
                  hintText: 'Email Id',
                  hintStyle: TextStyle(
                      color: MyColor.hintColor,
                      fontFamily: 'poppins_regular'),
                  contentPadding: EdgeInsets.only(left: w * 0.0275),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(h))),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: Amount,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: w * 0.02),
                    child: Image.asset(
                      "images/rupee.png",
                      scale: 30,
                    ),
                  ),
                  hintText:'Amount',
                  hintStyle: TextStyle(
                      color: MyColor.hintColor,
                      fontFamily: 'poppins_regular'),
                  contentPadding: EdgeInsets.only(left: w * 0.0275),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(h))),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: DevoloperName,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: w * 0.02),
                    child: Image.asset(
                      "images/mail.png",
                      scale: 1,
                    ),
                  ),
                  hintText: 'Email Id',
                  hintStyle: TextStyle(
                      color: MyColor.hintColor,
                      fontFamily: 'poppins_regular'),
                  contentPadding: EdgeInsets.only(left: w * 0.0275),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(h))),
            ),
          ],
        ),
      ),
    );
  }
}
