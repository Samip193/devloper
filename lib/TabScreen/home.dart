import 'package:devloper/constant/Topbar.dart';
import 'package:devloper/constant/mycolor.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: SingleChildScrollView(
        child: Column(
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
                  left: w*0.05,
                    bottom: -h*0.21,
                    child:OverallDetails(),
                )
              ],
            ),
            SizedBox(height: h*0.22,),
            SearchBar(),
            Padding(
              padding:  EdgeInsets.only(top:h*0.01),
              child: ProgressIndecetor(),
            )


          ],
        ),
      ),
      
    );
  }
}
