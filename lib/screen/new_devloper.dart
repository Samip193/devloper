import 'package:flutter/material.dart';

import '../constant/mycolor.dart';

class AddDeveloper extends StatefulWidget {
  const AddDeveloper({Key? key}) : super(key: key);

  @override
  State<AddDeveloper> createState() => _AddDeveloperState();
}

class _AddDeveloperState extends State<AddDeveloper> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Developer',
          style: TextStyle(fontFamily: 'poppins_medium'),
        ),
        actions: [
          ImageIcon(AssetImage('images/check.png')),
        ],
        backgroundColor: MyColor.app_bar_Color,
      ),

    );
  }
}

