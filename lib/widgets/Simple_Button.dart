import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleButton extends StatelessWidget {
  String lable;
  Color bcolor;
  Color tcolor; 
  Color borderColor;
  
  SimpleButton({
    required this.lable,
    required this.bcolor,
    required this.tcolor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          lable,
          style: TextStyle(color: tcolor, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      decoration: BoxDecoration(
      color: bcolor,
        border: Border.all(width: 1.w, color: borderColor),
    ),
    );
  }
}
