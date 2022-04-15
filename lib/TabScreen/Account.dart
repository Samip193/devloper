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
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  void tmpFunction() {
    _scaffoldState.currentState?.openDrawer();
    print('Function Called.....');
  }


  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Scaffold(
      key: _scaffoldState,
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopBar(title: 'TST Admin Panel',onTouch: tmpFunction,showMenu: true),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: h*0.14,
                width: w,
                color: MyColor.app_bar_Color,

              ),
              Positioned(
                right: w*0.07,
                child: Container(
                  height: h*0.05,
                  width: w*0.19,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(_enable?'Completed':'Open',style: TextStyle(fontSize: h*0.016,color: MyColor.White,fontFamily: 'poppins_regular')),
                      CustomSwitch(
                        value: _enable,
                        onChanged: (bool val){
                          setState(() {
                            _enable = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              MAin_Account(balance: '80 K'),
              My_Account(balance: _enable ? '-4.5 K' : '4.5 K',clr: _enable ? MyColor.colorPink : MyColor.colorCyan,)
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
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/cration');
            },
            child: Padding(
              padding:  EdgeInsets.only(top:h*0.01),
              child:_enable ? ProfitCard()  : Indecetor(),
            ),
          )

        ],
      ),
    );
  }
}
