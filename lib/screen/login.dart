import 'package:devloper/TabScreen/home.dart';
import 'package:devloper/constant/Topbar.dart';
import 'package:devloper/constant/mycolor.dart';
import 'package:devloper/screen/tabscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Scaffold(
      backgroundColor: MyColor.bgColorWhite,
      body: SingleChildScrollView(
        child: Container(
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: h * 0.1,
              ),
              Container(
                height: h * 0.3,
                width: w * 0.64,
                decoration: BoxDecoration(
                    color: MyColor.White,
                    border: Border.all(color: MyColor.borderColor),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: MyColor.shedowColor,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 3))
                    ]),
                child: Image.asset(
                  "images/lg.png",
                  scale: h * 0.0015,
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Text(
                'Admin Panel',
                style: TextStyle(
                    fontSize: h * 0.047, fontFamily: 'poppins_semi_bold'),
              ),
              SizedBox(
                height: h * 0.005,
              ),
              Container(
                height: h * 0.001,
                width: w * 0.45,
                color: MyColor.colorGreen,
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Text_Filed(hintText: 'Email Id',img: 'images/mail.png',controller:Email ,Ipadding:  w*0.03,Tpadding: w*0.0),

              SizedBox(height: h * 0.035),
              Text_Filed(hintText: 'Password',img: 'images/user.png',controller:pass ,Ipadding:  w*0.052,Tpadding: w*0.015),
              SizedBox(
                height: h * 0.02,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: w * 0.77),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                          color: Color(0xFF868686),
                          fontSize: h * 0.018,
                          fontFamily: 'poppins_medium'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.06,
              ),
              MaterialButton(
                elevation: 6,
                onPressed: () {
                  if (Email.text.isNotEmpty && pass.text.isNotEmpty != null) {
                    login();
                  } else {
                    showSnackBar(
                        "Error please Add all Fields", context, Colors.red);
                  }
                },
                color: MyColor.btnColor,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: MyColor.White, width: w * 0.01),
                    borderRadius: BorderRadius.circular(h)
                ),
                minWidth: w * 0.72,
                height: h * 0.07,
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: w * 0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            color: MyColor.White, fontFamily: 'poppins_regular'),
                      ),
                      Icon(
                        Icons.login_sharp,
                        size: h * 0.025,
                        color: MyColor.White,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  login() {
    String email = Email.text;
    String password = pass.text;

    print("  $email  >>>> $password");

    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("User logged in")));
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (ctx) => TabScreen()), (route) => false);
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User login failed " + e.toString())));
    });
  }

  void showSnackBar(String content, BuildContext context, snackcolor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: snackcolor,
        content: Text(content),
        duration: Duration(milliseconds: 1500),
      ),
    );
  }
}
