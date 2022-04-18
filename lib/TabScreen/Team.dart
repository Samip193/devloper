import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../constant/Topbar.dart';
import '../constant/team_component.dart';

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
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('devoloper').snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) return  Text('Loading...');
                  data = snapshot.data!.docs;
                  return  ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding:  EdgeInsets.symmetric(horizontal: w*0.0475),
                        child: TeamDetails(devloperName:'${data[index]['devoloperName']}' ,devloperAmount:'${data[index]['Amount']}' ,devloperRole: '${data[index]['Role']}',),
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

