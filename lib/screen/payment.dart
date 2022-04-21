import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devloper/screen/payment_history.dart';
import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/mycolor.dart';

class PaymentScreen extends StatefulWidget {
  var data;

  var index;

   PaymentScreen(this.data, this.index, {Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final amount = TextEditingController();
  var tranjectionid = Random().nextInt(999999).toString().padLeft(6, '0');
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
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: w*0.0275),
          child: Column(
            children: [
              SizedBox(height: h*0.15,),
              Text('Pay To',style: TextStyle(color: MyColor.gray,fontSize: h*0.022,fontFamily: 'poppins_medium'),),
              Text(widget.data[widget.index]['devoloperName'],style: TextStyle(color: MyColor.txtColor,fontSize: h*0.03,fontFamily: 'poppins_medium'),),
              SizedBox(height: h*0.03,),
              Text('Pay From',style: TextStyle(color: MyColor.gray,fontSize: h*0.022,fontFamily: 'poppins_medium'),),
              Text('Parth makawana',style: TextStyle(color: MyColor.txtColor,fontSize: h*0.03,fontFamily: 'poppins_medium'),),
              SizedBox(height: h*0.05,),
              Text_Filed(
                hintText: 'Amount',
                img: 'images/rupee.png',
                Ipadding: w * 0.075,
                Tpadding: w * 0.025,
                controller: amount,
              ),
              SizedBox(height: h*0.02,),
              Padding(
                padding:  EdgeInsets.only(left:w*0.0575),
                child: Row(
                  children: [
                    ImageIcon(AssetImage('images/crop.png'),color: MyColor.text_light,size: h*0.03,),
                    Text('Transaction No : ${tranjectionid}',style: TextStyle(color: MyColor.text_light,fontSize: h*0.018,fontFamily: 'poppins_regular'),),
                    ],
                ),
              ),
              SizedBox(height: h*0.15,),
              MaterialButton(
                elevation: 6,
                onPressed: () {
                  FirebaseFirestore.instance.collection("paymenthistory").doc().set({
                    "transactionnumber":tranjectionid,
                    "devolopername":widget.data[widget.index]['devoloperName'],
                    "moneyfrom":"Parth Makawana",
                    "Amount":amount.text,
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentHistory(widget.data,widget.index)),);
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
      ),
    );
  }
}
