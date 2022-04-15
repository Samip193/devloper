import 'package:devloper/screen/crash_investigation.dart';
import 'package:devloper/screen/tabscreen.dart';
import 'package:flutter/material.dart';

import 'TabScreen/home.dart';
import 'screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/tab': (context) => const TabScreen(),
        '/home': (context) => const HomeScreen(),
        '/cration': (context) => const CrashInvestigation(),
      },
    );
  }
}


