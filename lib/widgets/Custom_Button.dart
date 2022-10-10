import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String lable;
  String image;
  Color bcolor;
  Color tcolor;
  Color borderColor;

  CustomButton({
    required this.lable,
    required this.image,
    required this.bcolor,
    required this.tcolor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
            color: bcolor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width:2.w)),
        child: Padding(
          padding: EdgeInsets.only(
            left: 40.w,
          ),
          child: Row(
            children: [
              Container(
                height: 50.h,
                width: 40.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        image,
                      ),
                    )),
              ),
              SizedBox(
                width: 35.w,
              ),
              Text(
                lable,
                style: TextStyle(
                  color: tcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
