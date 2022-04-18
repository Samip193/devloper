import 'package:flutter/material.dart';


class aboutproject extends StatelessWidget {
  const aboutproject(this.title, this.data);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: h*0.01,),
          Text(
            data,
            style:  TextStyle(fontSize: h*0.0225),
          ),
        ],
      ),
    );
  }
}