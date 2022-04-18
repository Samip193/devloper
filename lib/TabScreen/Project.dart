import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devloper/constant/Topbar.dart';
import 'package:devloper/constant/mycolor.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
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
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopBar(title: 'All Project', onTouch: tmpFunction, showMenu: true),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              height: h*0.783,
            ),
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('projectdata').snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) return  Text('Loading...');
                  data = snapshot.data!.docs;
                  return  ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context,int index){
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: w*0.0475),
                    child: ProgressIndecetor(data,index),
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
