import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/mycolor.dart';

class NewDeveloper extends StatefulWidget {
  const NewDeveloper({Key? key}) : super(key: key);

  @override
  State<NewDeveloper> createState() => _NewDeveloperState();
}

class _NewDeveloperState extends State<NewDeveloper> {
  final DevoloperName = TextEditingController();
  final Amount = TextEditingController();
  final Role = TextEditingController();
  final List<String> roll = [
    '1', '2', '3', '4', '5', '6'
  ];
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
            Text_Filed(
              hintText: 'Developer Name',
              img: 'images/text_file.png',
              Ipadding: w * 0.075,
              Tpadding: w * 0.018,
              controller: DevoloperName,
            ),

            SizedBox(height: 10,),
            Text_Filed(
              hintText: 'Amount',
              img: 'images/rupee.png',
              Ipadding: w * 0.075,
              Tpadding: w * 0.025,
              controller: Amount,
            ),

            SizedBox(height: 10,),
            Text_Filed(
              hintText: 'Amount',
              Ipadding: w * 0.075,
              Tpadding: w * 0.025,
              controller: DevoloperName,
            ),
          ],
        ),
      ),
    );
  }
}
