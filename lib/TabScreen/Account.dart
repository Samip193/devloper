import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/account_constant.dart';
import '../constant/mycolor.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  bool _enable = false;


  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopBar(title: 'TST Admin Panel',),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: h*0.14,
                width: w,
                color: MyColor.app_bar_Color,

              ),
              CustomSwitch(
                value: _enable,
                onChanged: (bool val){
                  setState(() {
                    _enable = val;
                  });
                },
              ),
              MAin_Account(balance: '80 K'),
              My_Account(balance: '40 K',)
            ],
          ),
          SizedBox(height: h*0.12,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: w*0.035),
            child: Row(
              children: [
                Icon(Icons.add,color: MyColor.txtColor),
                Text('New',style: TextStyle(fontSize: h*0.018,color: MyColor.txtColor,fontFamily: 'poppins_regular')),
              ],
            ),
          ),
          SearchBar(),
          Padding(
            padding:  EdgeInsets.only(top:h*0.01),
            child: Indecetor(),
          )

        ],
      ),
    );
  }
}
