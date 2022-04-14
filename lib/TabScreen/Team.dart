import 'package:flutter/material.dart';

import '../constant/mycolor.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h,
            color: MyColor.hintColor,
          )
        ],
      ),
    );
  }
}
