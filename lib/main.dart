import 'package:devloper/screen/New%20Devoloper.dart';
import 'package:devloper/screen/crash_investigation.dart';
import 'package:devloper/screen/Crashinvestigation.dart';
import 'package:devloper/screen/new_devloper.dart';
import 'package:devloper/screen/tabscreen.dart';
import 'package:firebase_core/firebase_core.dart';

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
        '/newdevoloper': (context) => const NewDeveloper(),
        '/adddevoloper': (context) => const AddDeveloper(),
        '/allproject': (context) => const ProjectScreen(),
      },
    );
  }
}
