import 'package:flutter/material.dart';

import 'mycolor.dart';

List<String> CustonImage =[
  "images/android.png",
  "images/apple.png",
  "images/network.png"
];

class TopBar extends StatefulWidget {
  TopBar({this.title,this.onTouch, required this.showMenu}) ;

  String? title;
  final VoidCallback? onTouch;
  final bool showMenu;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      showMenu;
    });
  }
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
      height: h*0.12,
      width: w,
      color: MyColor.app_bar_Color,
      child: Padding(
        padding:  EdgeInsets.only(left: w*0.0375,right: w*0.0375,top: h*0.014),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            showMenu==true ?
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back,color: MyColor.White,)
            ) : GestureDetector(
                onTap: widget.onTouch,
                child: Image.asset("images/menu.png",scale: 1.3,)
            ),
            Padding(
              padding:  EdgeInsets.only(right: w*0.2),
              child: Text(widget.title!,style: TextStyle(fontSize: h*0.03,color: MyColor.White,fontFamily: 'poppins_medium'),),
            ),
            Icon(Icons.account_circle,color: MyColor.White,size: h*0.05,),

          ],
        ),
      ),
    );
  }
}

class InfoBar extends StatefulWidget {
  const InfoBar({this.title});

  final String? title;
  

  @override
  State<InfoBar> createState() => _InfoBarState();
}

class _InfoBarState extends State<InfoBar> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return Container(
      height: h*0.12,
      width: w,
      color: MyColor.app_bar_Color,
      child: Padding(
        padding:  EdgeInsets.only(left: w*0.0375,right: w*0.0375,top: h*0.014),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back,color: MyColor.White,)
            ) ,
            Padding(
              padding:  EdgeInsets.only(right: w*0.2),
              child: Text(widget.title!,style: TextStyle(fontSize: h*0.03,color: MyColor.White,fontFamily: 'poppins_medium'),),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/Crashinvestigation');
                },
                child: Container(
                  height: h*0.035,
                  decoration: BoxDecoration(

                    shape: BoxShape.circle
                  ),
                    child: Image.asset('images/info.png')
                )
            ),

          ],
        ),
      ),
    );
  }
}

//Text txtFiled
class Text_Filed extends StatelessWidget {
   Text_Filed({  this.img, required this.hintText, this.Ipadding, this.Tpadding, this.controller});

   final String? img;
   final String hintText;
   final double? Ipadding;
   final double? Tpadding;
    var controller;

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return ConstrainedBox(
      constraints:  BoxConstraints.tightFor(width: w*0.9),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(

            prefixIcon:Padding(
              padding:  EdgeInsets.only(left:Ipadding ?? w*0.045,right:Tpadding ?? w*0.01),
              child: img==null ? null : Image.asset(img!,scale: 1,),
            ),
            hintText: hintText,
            fillColor: MyColor.txtFiled_clr,
            filled: true,
            hintStyle: TextStyle(color: MyColor.hintColor,fontFamily: 'poppins_regular'),
            contentPadding:  EdgeInsets.only(top: h*0.05),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyColor.White, width: w*0.012),
                borderRadius: BorderRadius.circular(h)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyColor.White, width: w*0.012),
                borderRadius: BorderRadius.circular(h)
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(h)
            )
        ),
      ),
    );
  }
}





class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
        begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
        end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
        parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: w*0.109,
            height: h*0.016,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(h),
              color: _circleAnimation!.value == Alignment.centerLeft
                  ? MyColor.colorGreen
                  : MyColor.colorGreen,
            ),
            child: Container(
              alignment:
              widget.value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width:  w*0.075,
                height: h*0.016,
                decoration: BoxDecoration(
                  color: MyColor.White,
                  borderRadius: BorderRadius.circular(h),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


class CustomRating extends StatefulWidget {
  CustomRating({ required this.count, required this.Image,this.index}) ;
  final int count;
  final List<String> Image;
  final index;


  @override
  State<CustomRating> createState() => _CustomRatingState();
}

class _CustomRatingState extends State<CustomRating> {
  int? value;

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool H =h<700;

    return  SizedBox(
      height: h*0.0250,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {

          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: w*0.065,
                child: Radio(
                  activeColor: MyColor.red,
                  value: index,
                  groupValue: value,
                  onChanged: (ind) => setState(() => value = index),
                  // title: Text("Number $index"),
                ),
              ),
              Container(
                height: h*0.3,
                width: w*0.06,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.Image[index]),
                    fit: BoxFit.fill
                  )
                ),
              ),



              SizedBox(width: w*0.012,),
            ],
          );
        },
        itemCount:widget.count,
      ),
    );




  }
}