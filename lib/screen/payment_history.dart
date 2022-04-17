import 'package:devloper/screen/paymant_details.dart';
import 'package:flutter/material.dart';

import '../constant/mycolor.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {

  final List<Color> clrlist = [
    MyColor.colorCyan,
    MyColor.colorPink,
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment History",
          style: TextStyle(fontFamily: 'poppins_medium'),
        ),
        backgroundColor: MyColor.app_bar_Color,
        elevation: 0.0,

      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: w*0.0275,vertical: h*0.02),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: h*0.055,
                  width: w*0.13,
                  decoration: BoxDecoration(
                    color: MyColor.filterClr,
                    borderRadius: BorderRadius.circular(h*0.01),

                  ),
                  child: ImageIcon(AssetImage('images/filter.png'),size: h*0.03),
                ),
                Container(
                  height: h*0.055,
                  width: w*0.8,
                  decoration: BoxDecoration(
                    color: MyColor.filterClr,
                    borderRadius: BorderRadius.circular(h*0.01),

                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: w*0.0275),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Totla Amount',style: TextStyle(color: MyColor.colorGreen,fontSize: h*0.025),),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right: w*0.0275),
                              child: Container(
                                height: h*0.035 ,
                                width: w*0.002,
                                decoration: BoxDecoration(
                                  color: MyColor.colorGreen,
                                ),
                              ),
                            ),
                            Text('80.6 K',style: TextStyle(color: MyColor.colorGreen,fontSize: h*0.025),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                height: h*0.79,
              ),
              child: ListView.builder(
                itemCount: clrlist.length,
                  itemBuilder: (context,index){
                return Padding(
                  padding:  EdgeInsets.only(top: h*0.02),
                  child: TransactionDetail(
                    transaction: 'ASKcdhb3221',
                    transferAmount: '10 K',
                    transferVia: 'Paytm UPI',
                    givenBy: 'Parth makawana',
                    date: '02/05/2021',
                    time:'21:45' ,
                    color: clrlist[index],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}


