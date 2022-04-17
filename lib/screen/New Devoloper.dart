import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/Topbar.dart';
import '../constant/mycolor.dart';

class NewDeveloper extends StatefulWidget {
  const NewDeveloper({Key? key}) : super(key: key);

  @override
  State<NewDeveloper> createState() => _NewDeveloperState();
}

class _NewDeveloperState extends State<NewDeveloper> {
  final DevoloperName = TextEditingController();
  final Amount = TextEditingController();
  final Role = TextEditingController();
  String? dropdownvalue;

  // List of items in our dropdown menu
  var items = [
    'Api devoloper',
    'Frontend Devoloper',
    'backend Devoloper',
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool H = h < 700;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Devoloper",
          style: TextStyle(fontFamily: 'poppins_medium'),
        ),
        backgroundColor: MyColor.app_bar_Color,
        actions: [
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){setState(() {
              if(DevoloperName.text.isNotEmpty&&Amount.text.isNotEmpty&&dropdownvalue!.isNotEmpty){
                FirebaseFirestore.instance.collection('devoloper').doc().set(
                    {
                      "devoloperName":DevoloperName.text,
                      "Amount":Amount.text,
                      "Role":dropdownvalue,
                    }
                );
              }else{
                showSnackBar("Enter All fields",context,Colors.red);
              }
              showSnackBar("Devolper Added",context,Colors.green);
              Navigator.pushNamed(context, '/home');
            });
            }, icon:Icon(Icons.check,size: 30,)),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
        child: Column(
          children: [
            Text_Filed(
              hintText: 'Developer Name',
              img: 'images/text_file.png',
              Ipadding: w * 0.075,
              Tpadding: w * 0.018,
              controller: DevoloperName,
            ),

            SizedBox(height: 10,),
            Text_Filed(
              hintText: 'Amount',
              img: 'images/rupee.png',
              Ipadding: w * 0.075,
              Tpadding: w * 0.025,
              controller: Amount,
            ),

            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: w*0.09,right: w*0.05),
              width: w*0.9,
              decoration: BoxDecoration(
                color: MyColor.txtFiled_clr,
                borderRadius: BorderRadius.circular(h),
                border: Border.all(color: MyColor.White,width: w*0.012),

              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  elevation: 2,
                  hint: Text('Select Role'),
                  

                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon:  ImageIcon(AssetImage('images/down.png'),size: h*0.02),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
