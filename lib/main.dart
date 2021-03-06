import 'package:devloper/screen/New%20Devoloper.dart';
import 'package:devloper/screen/crash_investigation.dart';
import 'package:devloper/screen/Crashinvestigation.dart';
import 'package:devloper/screen/newproject.dart';
import 'package:devloper/screen/paymant_details.dart';
import 'package:devloper/screen/payment.dart';
import 'package:devloper/screen/payment_history.dart';
import 'package:devloper/screen/tabscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TabScreen/Project.dart';
import 'TabScreen/home.dart';
import 'screen/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
        '/new': (context) => const NewScreen(),
        '/Crashinvestigation': (context) => const Crashinvestigation(),
        '/adddevoloper': (context) => const NewDeveloper(),
        '/allproject': (context) => const ProjectScreen(),
        '/paymentdetail': (context) => const PaymentDetails(),
        '/payment': (context) => const PaymentScreen(),
        '/history': (context) => const PaymentHistory(),

      },
    );
  }
}
