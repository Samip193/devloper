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
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: w*0.0275,),
          child: Container(
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: h*0.08,),
                Image.asset("images/lg.png",scale: h*0.002,),
                SizedBox(height: h*0.02,),
                Container(
                  height: h*0.001,
                  width: w*0.45,
                  color: MyColor.borderColor,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: w*0.15,vertical: h*0.01),
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
                    height: h*0.7
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text_Filed(hintText: 'Project Name',img: 'images/text_file.png',Ipadding:  w*0.075,Tpadding: w*0.018),
                      Text_Filed(hintText: 'Client Name',img: 'images/client.png',Ipadding:  w*0.065),
                      Text_Filed(hintText: 'Project Amount',img: 'images/rupee.png',Ipadding:  w*0.075,Tpadding: w*0.025),
                      Text_Filed(hintText: 'Project Duration',img: 'images/timer.png',Ipadding:  w*0.05),

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
                SizedBox(height: h*0.01,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 22.0),
                  child: CustomRating(Image: CustonImage,count: CustonImage.length),
                ),
                SizedBox(height: h*0.01,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage('images/board.png')),
                      Text('Developer',style: TextStyle(fontSize: h*0.028,color: MyColor.hintColor,fontFamily: 'poppins_regular')),
                      SizedBox(width: w * 0.36,),
                      InkWell(
                          onTap:(){
                            Navigator.pushNamed(context, '/newdevoloper');
                          },child: Icon(Icons.add,size: h*0.035,))
                    ],
                  ),
                ),
                SizedBox(height: h*0.01,),
                ConstrainedBox(
                  constraints:  BoxConstraints.tightFor(width: w*0.9),
                  child: TextField(

                    decoration: InputDecoration(
                        hintText: 'No Any Developer Found',
                        fillColor: MyColor.txtFiled_clr,
                        filled: true,
                        hintStyle: TextStyle(color: MyColor.hintColor,fontFamily: 'poppins_regular'),
                        contentPadding:  EdgeInsets.only(left: w*0.04,top: h*0.05),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: MyColor.White, width: 5.0),
                            borderRadius: BorderRadius.circular(h)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: MyColor.White, width: 5.0),
                            borderRadius: BorderRadius.circular(h)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(h)
                        )
                    ),
                  ),
                ),
                SizedBox(height: h*0.01,),
                MaterialButton(
                  elevation: 6,
                  onPressed: (){
                    //Navigator.pushNamed(context, '/tab');
                  },
                  color: MyColor.btnColor,
                  shape:RoundedRectangleBorder(
                      side: BorderSide(color: MyColor.White,width: w*0.01),
                      borderRadius: BorderRadius.circular(h)
                  ) ,
                  minWidth: w*0.72,
                  height: h*0.07,
                  child: ConstrainedBox(
                    constraints:  BoxConstraints.tightFor(width: w*0.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Start Project',style: TextStyle(color: MyColor.White,fontFamily: 'poppins_regular'),),
                        Icon(Icons.login_sharp,size: h*0.025,color: MyColor.White,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
              ],
            ),
          ),),
      ),
    );
  }
}
