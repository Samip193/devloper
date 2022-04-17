import 'package:flutter/material.dart';
import '../constant/mycolor.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Details",
          style: TextStyle(fontFamily: 'poppins_medium'),
        ),
        backgroundColor: MyColor.app_bar_Color,
        elevation: 0.0,

      ),
      floatingActionButton:  GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/payment');
        },
        child: Container(
          height: h*0.047,
          width: w*0.1,
          decoration: BoxDecoration(
              color: MyColor.txtGreen,
              shape: BoxShape.circle,
              border: Border.all(color: MyColor.White,width: w*0.006),
              boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(0,3)
              )]
          ),
          child: Icon(Icons.add,color: MyColor.White,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: h*0.14,
                  width: w,
                  color: MyColor.app_bar_Color,

                ),
                Positioned(
                  left: w*0.04,
                  bottom: -h*0.084,
                    child: DeveloperPaymentDetail(Name: 'Dharam kachhadiya',Role: 'API Devepoer',progress:'Payment Progress' ,percentage: '83%',percent:0.83 ),
                ),
              ],
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: w*0.052),
              child: Column(
                children: [
                  SizedBox(height: h*0.1,),
                  Padding(
                    padding:  EdgeInsets.only(left: w*0.07),
                    child: Row(
                      children: [
                        Text('₹',style: TextStyle(color: MyColor.text_light,fontSize: h*0.018,fontWeight: FontWeight.bold),),
                        SizedBox(width: w*0.03,),
                        Text('Amount',style: TextStyle(color: MyColor.text_light,fontSize: h*0.016,fontFamily: 'poppins_regular'),),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: w*0.0775,vertical: h*0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomTextModel(amount:'25 K',txt: 'Given', ),
                        Container(
                          height: h*0.06,
                          width: w*0.003,
                          color: MyColor.text_light,
                        ),
                        CustomTextModel(amount:'5 K',txt: 'Remaining', ),
                        Container(
                          height: h*0.06,
                          width: w*0.003,
                          color: MyColor.text_light,
                        ),
                        CustomTextModel(amount:'30 K',txt: 'Total', ),
                      ],
                    ),
                  ),
                  TransactionDetail(
                    transaction: 'ASKcdhb3221',
                    transferAmount: '10 K',
                    transferVia: 'Paytm UPI',
                    givenBy: 'Parth makawana',
                    date: '02/05/2021',
                    time:'21:45' ,
                  ),
                  SizedBox(height: h*0.02,),
                  TransactionDetail(
                    transaction: 'ASKcdhb3221',
                    transferAmount: '10 K',
                    transferVia: 'Paytm UPI',
                    givenBy: 'Parth makawana',
                    date: '02/05/2021',
                    time:'21:45' ,
                  ),
                  SizedBox(height: h*0.02,),
                  TransactionDetail(
                    transaction: 'ASKcdhb3221',
                    transferAmount: '10 K',
                    transferVia: 'Paytm UPI',
                    givenBy: 'Parth makawana',
                    date: '02/05/2021',
                    time:'21:45' ,
                  ),
                  SizedBox(height: h*0.1,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextModel extends StatelessWidget {
  CustomTextModel({required this.amount, required this.txt, this.clr}) ;

  final String amount;
  final String txt;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Column(
      children: [
        Text(amount,style: TextStyle(fontSize: h*0.035,color:clr ?? MyColor.txtColor,fontFamily: 'poppins_medium')),
        Text(txt,style: TextStyle(fontSize: h*0.016,color: MyColor.text_light,fontFamily: 'poppins_regular')),
      ],
    );
  }
}

class TransactionDetail extends StatelessWidget {
   TransactionDetail({ required this.transaction, required this.transferAmount, required this.transferVia, required this.givenBy, required this.time, required this.date});
  final String transaction;
  final String transferAmount;
  final String transferVia;
  final String givenBy;
  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Column(

      children: [
        Container(
          width: w,
          height: h*0.05,
          decoration: BoxDecoration(
              color: MyColor.White,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding:  EdgeInsets.only(left:w*0.0275),
            child: Row(
              children: [
                ImageIcon(AssetImage('images/crop.png'),color: MyColor.text_light,size: h*0.02,),
                Text('Transaction No : ',style: TextStyle(color: MyColor.text_light,fontSize: h*0.016,fontFamily: 'poppins_regular'),),
                Text(transaction,style: TextStyle(color: MyColor.text_light,fontSize: h*0.016,fontFamily: 'poppins_regular'),),
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              width: w,
              height: h*0.135,
              decoration: BoxDecoration(
                  color: MyColor.White,
                  borderRadius: BorderRadius.circular(h*0.010)
              ),
            ),
            Positioned(child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: w*0.013),
              child: Image.asset('images/line.png',scale: 1,),
            ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: w*0.0275,vertical: h*0.01),
              child: Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        width: w*0.41
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Transfer amount',style: TextStyle(color: MyColor.text_light,fontSize: h*0.016,fontFamily: 'poppins_regular'),),
                            Text(transferAmount,style: TextStyle(fontSize: h*0.022,color:MyColor.txtColor,fontFamily: 'poppins_medium')),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Transaction via',style: TextStyle(color: MyColor.text_light,fontSize: h*0.016,fontFamily: 'poppins_regular'),),
                            Text(transferVia,style: TextStyle(fontSize: h*0.022,color:MyColor.txtColor,fontFamily: 'poppins_medium')),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: h*0.1,
                    width: w*0.003,
                    color: MyColor.text_light,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:w*0.015),
                    child: Container(
                      width: w*0.41,
                      height: h*0.11,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Given By',style: TextStyle(color: MyColor.text_light,fontSize: h*0.016,fontFamily: 'poppins_regular'),),
                              Text(givenBy,style: TextStyle(fontSize: h*0.022,color:MyColor.txtColor,fontFamily: 'poppins_medium')),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(date,style: TextStyle(color: MyColor.text_light,fontSize: h*0.016,fontFamily: 'poppins_regular'),),
                              SizedBox(width: w*0.01,),
                              Text(time,style: TextStyle(color: MyColor.text_light,fontSize: h*0.016,fontFamily: 'poppins_regular'),),
                              ImageIcon(AssetImage('images/calander.png'),color: MyColor.text_light,size: h*0.02)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
