import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/mycolor.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  var data;
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
      body:
      Column(
        children: [
          TopBar(
              title: 'About Developers', onTouch: tmpFunction, showMenu: true),
          SizedBox(
            height: MediaQuery.of(context).size.height/1.6,
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('devoloper').snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) return  Text('Loading...');
                  data = snapshot.data!.docs;
                  return  ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10),
                        height: h*0.24,
                        width: w*0.90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(h*0.015),
                          boxShadow: [
                            BoxShadow(
                              color: MyColor.shedowColor,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(2, 5), // changes position of shadow
                            ),
                          ],
                          // border: Border.all(color: Colors.blueAccent)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: w*0.0375,vertical: h*0.015   ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('DevoloperName : ${data[index]['devoloperName']}',style: TextStyle(fontSize: h*0.020,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                                  Text('DevoloperAmount : ${data[index]['Amount']}',style: TextStyle(fontSize: h*0.020,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                                  Text('DevoloperRole : ${data[index]['Role']}',style: TextStyle(fontSize: h*0.022,color: MyColor.txtColor,fontFamily: 'poppins_medium')),
                                ],
                              ),
                              linearPercentIndicatir(progress: 'Work Progress',percentage: '80%',percent: 0.8),
                              linearPercentIndicatir(progress: 'Payment Progress',percentage: '40%',percent: 0.4),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
