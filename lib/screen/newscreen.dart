import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/mycolor.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: w*0.0275),
        child: Container(
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/lg.png",scale: h*0.002,),
              Container(
                height: h*0.001,
                width: w*0.45,
                color: MyColor.borderColor,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: w*0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/file.png'),
                    Text('Start New Project',style: TextStyle(fontSize: h*0.028,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  height: h*0.4
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text_Filed(hintText: 'Project Name',img: 'images/text_file.png',Ipadding:  w*0.075,Tpadding: w*0.018),
                    Text_Filed(hintText: 'Client Name',img: 'images/client.png',Ipadding:  w*0.065),
                    Text_Filed(hintText: 'Project Amount',img: 'images/rupee.png',Ipadding:  w*0.075,Tpadding: w*0.025),
                    Text_Filed(hintText: 'Project Duration',img: 'images/timer.png',Ipadding:  w*0.05),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: w*0.055),
                child: Row(
                  children: [
                    Container(
                      child: ImageIcon(AssetImage('images/input.png'),size: h*0.045),
                    ),
                    Text('Requirement',style: TextStyle(fontSize: h*0.028,color: MyColor.hintColor,fontFamily: 'poppins_regular'))
                  ],
                ),
              ),
              CustomRating(Image: CustonImage,count: CustonImage.length),
              Column(
                children: [
                  Row(
                    children: [
                      ImageIcon(AssetImage('images/board.png'))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
