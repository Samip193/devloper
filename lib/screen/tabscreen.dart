import 'package:devloper/TabScreen/Account.dart';
import 'package:devloper/TabScreen/Project.dart';
import 'package:devloper/TabScreen/Team.dart';
import 'package:devloper/TabScreen/home.dart';
import 'package:devloper/constant/mycolor.dart';
import 'package:flutter/material.dart';

import '../constant/Topbar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProjectScreen(),
    AccountScreen(),
    TeamScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor:MyColor.bottom_bg_color ,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/home.png'),
                ),
                activeIcon:ImageIcon(
                  AssetImage('images/active_home.png'),
                ),
                label: 'Home',
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/project.png'),
                ),
                label: 'Project',
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/account.png'),
              ),
              activeIcon:ImageIcon(
                AssetImage('images/active_acccount.png'),
              ),
              label: 'Account',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/team.png'),
                ),
                label: 'Team',
                backgroundColor: Colors.green
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );



  }
}
