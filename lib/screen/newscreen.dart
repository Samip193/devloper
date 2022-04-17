import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/mycolor.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  final projectname = TextEditingController();
  final clientname = TextEditingController();
  final projectamount = TextEditingController();
  final projectduration = TextEditingController();
  final devolopername = TextEditingController();

  bool android = false;
  bool apple = false;
  bool web = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: w * 0.0275,
          ),
          child: Container(
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: h * 0.08,
                ),
                Image.asset(
                  "images/lg.png",
                  scale: h * 0.002,
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  height: h * 0.001,
                  width: w * 0.45,
                  color: MyColor.borderColor,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: w * 0.15, vertical: h * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/file.png'),
                      Text('Start New Project',
                          style: TextStyle(
                              fontSize: h * 0.028,
                              color: MyColor.txtColor,
                              fontFamily: 'poppins_medium')),
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: h * 0.7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text_Filed(
                        hintText: 'Project Name',
                        img: 'images/text_file.png',
                        Ipadding: w * 0.075,
                        Tpadding: w * 0.018,
                        controller: projectname,
                      ),
                      Text_Filed(
                        hintText: 'Client Name',
                        img: 'images/client.png',
                        Ipadding: w * 0.065,
                        controller: clientname,
                      ),
                      Text_Filed(
                        hintText: 'Project Amount',
                        img: 'images/rupee.png',
                        Ipadding: w * 0.075,
                        Tpadding: w * 0.025,
                        controller: projectamount,
                      ),
                      Text_Filed(
                        hintText: 'Project Duration',
                        img: 'images/timer.png',
                        Ipadding: w * 0.05,
                        controller: projectduration,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.055),
                        child: Row(
                          children: [
                            Container(
                              child: ImageIcon(AssetImage('images/input.png'),
                                  size: h * 0.045),
                            ),
                            Text('Requirement',
                                style: TextStyle(
                                    fontSize: h * 0.028,
                                    color: MyColor.hintColor,
                                    fontFamily: 'poppins_regular'))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      android = !android;
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: android == true
                                            ? Colors.black
                                            : Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100.0))),
                                  ),
                                ),
                                SizedBox(width: w * 0.04),
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('images/android.png')),
                              ],
                            ),
                            SizedBox(width: w * 0.1),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      apple = !apple;
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: apple == true
                                            ? Colors.black
                                            : Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100.0))),
                                  ),
                                ),
                                SizedBox(width: w * 0.04),
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('images/apple.png')),
                              ],
                            ),
                            SizedBox(width: w * 0.1),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      web = !web;
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: web == true
                                            ? Colors.black
                                            : Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100.0))),
                                  ),
                                ),
                                SizedBox(width: w * 0.04),
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('images/web.png')),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22.0),
                        child: Row(
                          children: [
                            ImageIcon(AssetImage('images/board.png')),
                            Text('Developer',
                                style: TextStyle(
                                    fontSize: h * 0.028,
                                    color: MyColor.hintColor,
                                    fontFamily: 'poppins_regular')),
                            SizedBox(
                              width: w * 0.36,
                            ),
                            Icon(
                              Icons.add,
                              size: h * 0.035,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: w * 0.9),
                        child: TextField(
                          controller: devolopername,
                          decoration: InputDecoration(
                              hintText: 'No Any Developer Found',
                              fillColor: MyColor.txtFiled_clr,
                              filled: true,
                              hintStyle: TextStyle(
                                  color: MyColor.hintColor,
                                  fontFamily: 'poppins_regular'),
                              contentPadding: EdgeInsets.only(
                                  left: w * 0.04, top: h * 0.05),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: MyColor.White, width: 5.0),
                                  borderRadius: BorderRadius.circular(h)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: MyColor.White, width: 5.0),
                                  borderRadius: BorderRadius.circular(h)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(h))),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      MaterialButton(
                        elevation: 6,
                        onPressed: () {
                          setState(() {
                            FirebaseFirestore.instance
                                .collection('projectdata')
                                .doc()
                                .set({
                              "projectname":projectname.text,
                              "Clientname":clientname.text,
                              "Projectamount":projectamount.text,
                              "projectduration":projectduration.text,
                              "forandroid":android,
                              "forapple":apple,
                              "forweb":web,
                              "Devoloper":devolopername.text,
                            });
                          });
                          Navigator.pushNamed(context, '/tab');
                        },
                        color: MyColor.btnColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: MyColor.White, width: w * 0.01),
                            borderRadius: BorderRadius.circular(h)),
                        minWidth: w * 0.72,
                        height: h * 0.07,
                        child: ConstrainedBox(
                          constraints: BoxConstraints.tightFor(width: w * 0.3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Start Project',
                                style: TextStyle(
                                    color: MyColor.White,
                                    fontFamily: 'poppins_regular'),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
