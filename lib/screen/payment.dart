import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/mycolor.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(fontFamily: 'poppins_medium',color: MyColor.txtColor),
        ),
        leading: BackButton(
          color: MyColor.txtColor,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,

      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: w*0.0275),
        child: Column(
          children: [
            SizedBox(height: h*0.15,),
            Text('Pay To',style: TextStyle(color: MyColor.gray,fontSize: h*0.022,fontFamily: 'poppins_medium'),),
            Text('Dharam kachhadiya',style: TextStyle(color: MyColor.txtColor,fontSize: h*0.03,fontFamily: 'poppins_medium'),),
            SizedBox(height: h*0.03,),
            Text('Pay From',style: TextStyle(color: MyColor.gray,fontSize: h*0.022,fontFamily: 'poppins_medium'),),
            Text('Parth makawana',style: TextStyle(color: MyColor.txtColor,fontSize: h*0.03,fontFamily: 'poppins_medium'),),
            SizedBox(height: h*0.05,),
            Text_Filed(
              hintText: 'Amount',
              img: 'images/rupee.png',
              Ipadding: w * 0.075,
              Tpadding: w * 0.025,
              //controller: ,
            ),
            SizedBox(height: h*0.02,),
            Padding(
              padding:  EdgeInsets.only(left:w*0.0575),
              child: Row(
                children: [
                  ImageIcon(AssetImage('images/crop.png'),color: MyColor.text_light,size: h*0.03,),
                  Text('Transaction No : ',style: TextStyle(color: MyColor.text_light,fontSize: h*0.018,fontFamily: 'poppins_regular'),),
                  Text('transaction',style: TextStyle(color: MyColor.text_light,fontSize: h*0.018,fontFamily: 'poppins_regular'),),
                ],
              ),
            ),
            SizedBox(height: h*0.15,),
            MaterialButton(
              elevation: 6,
              onPressed: () {
                Navigator.pushNamed(context, '/history');
              },
              color: MyColor.btnColor,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: MyColor.White, width: w * 0.01),
                  borderRadius: BorderRadius.circular(h)),
              minWidth: w * 0.72,
              height: h * 0.07,
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: w * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Save',
                      style: TextStyle(
                          color: MyColor.White,
                          fontFamily: 'poppins_regular'),
                    ),
                    ImageIcon(AssetImage('images/check.png'),color: MyColor.White,size: h*0.03,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
