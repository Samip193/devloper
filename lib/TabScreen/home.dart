import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devloper/constant/Topbar.dart';
import 'package:devloper/constant/mycolor.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  var data;

  void tmpFunction() {
    _scaffoldState.currentState?.openDrawer();
    print('Function Called.....');
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Scaffold(
      key: _scaffoldState,
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopBar(
                title: 'TST Admin Panel', onTouch: tmpFunction, showMenu: true),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: h * 0.14,
                  width: w,
                  color: MyColor.app_bar_Color,
                ),
                Positioned(
                    left: w * 0.05,
                    bottom: -h * 0.21,
                    child: StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection('projectdata')
                            .snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (!snapshot.hasData) return Text('Loading...');
                          data = snapshot.data!.docs;
                          return OverallDetails(data.length);
                        }))
              ],
            ),
            SizedBox(
              height: h * 0.22,
            ),
            SearchBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.3,
              child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('projectdata')
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) return Text('Loading...');
                    data = snapshot.data!.docs;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return ProgressIndecetor(data, 0);
                      },
                    );
                  }),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/allproject');
              },
              child: Text(
                'View All Project',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
