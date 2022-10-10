import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItems extends StatelessWidget {
  String image;
  String text;
  CustomItems({
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 18.h, left: 15.w),
          child: Container(
            height: 70.h,
            width: 55.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.w),
          child: SizedBox(
            width: 80.w,
              child: Text(
            text,
            style: TextStyle(fontSize: 18.sp),
          )),
        ),
      ],
    );
  }
}
