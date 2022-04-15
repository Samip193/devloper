import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/crash_component.dart';
import '../constant/mycolor.dart';

class CrashInvestigation extends StatefulWidget {
  const CrashInvestigation({Key? key}) : super(key: key);

  @override
  State<CrashInvestigation> createState() => _CrashInvestigationState();
}

class _CrashInvestigationState extends State<CrashInvestigation> {
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         Container(
           height: h*0.047,
           width: w*0.1,
           decoration: BoxDecoration(
             color: MyColor.red,
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
        ],
      ),
      body: Column(
        children: [
          TopBar(title: 'TST Admin Panel',onTouch: tmpFunction,showMenu: true),
          SizedBox(height: h*0.03,),
          ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: h*0.32,width: w),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: w*0.0475),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextModel(amount:'1.5 L',txt: 'Amount', ),
                      Container(
                        height: h*0.07,
                        width: w*0.004,
                        color: MyColor.gray,
                      ),
                      TextModel(amount:'80 K',txt: 'Recived', ),
                      Container(
                        height: h*0.07,
                        width: w*0.004,
                        color: MyColor.gray,
                      ),
                      TextModel(amount:'35 K',txt: 'Paid', ),
                    ],
                  ),
                ),
                Container(
                  height: h*0.002,
                  width: w*0.88,
                  color: MyColor.gray,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: w*0.195),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextModel(amount:'70 K',txt: 'Profit',clr: MyColor.txtGreen, ),

                      Container(
                        height: h*0.07,
                        width: w*0.004,
                        color: MyColor.gray,
                      ),
                      TextModel(amount:'5',txt: 'Developer', ),
                    ],
                  ),
                ),
                Container(
                  height: h*0.002,
                  width: w*0.88,
                  color: MyColor.gray,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: w*0.0475),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextModel(amount:'0',txt: 'Hiren', ),
                      Container(
                        height: h*0.07,
                        width: w*0.004,
                        color: MyColor.gray,
                      ),
                      TextModel(amount:'15.2 K',txt: 'Daxesh',clr: MyColor.red, ),
                      Container(
                        height: h*0.07,
                        width: w*0.004,
                        color: MyColor.gray,
                      ),
                      TextModel(amount:'4 K',txt: 'Parth',clr: MyColor.txtGreen, ),
                    ],
                  ),
                ),
              ],
            ) ,
          ),
          SizedBox(height: h*0.03,),
          ProgressCard(),

        ],
      ),
    );
  }
}

