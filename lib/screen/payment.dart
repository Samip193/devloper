import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Text('data'),
          Text('data'),
        ],
      ),
    );
  }
}
