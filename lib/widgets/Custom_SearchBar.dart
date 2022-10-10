import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomSearchBar extends StatelessWidget {
  String hintText;
  Icon icon;
  CustomSearchBar({
    required this.icon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 83.h,
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w,),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top:6.2),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: icon ,
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 18.sp),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          elevation: 15,
        ),
      ),
    );
  }
}