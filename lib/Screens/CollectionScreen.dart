import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yelp_flutter/widgets/Simple_Button.dart';

class CollectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collection',style: TextStyle(fontSize: 17),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Create', style: TextStyle(fontSize: 17),),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: ElevatedButton(
              onPressed: () {},
              child: Row( 
                children: [
                  Text(
                    'Featured Collection',
                    style: TextStyle(color: Colors.black, fontSize: 22.sp),
                  ),
                  Icon(Icons.arrow_drop_down_rounded, color: Colors.black),
                ],
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 400.h,
            width: 400.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) => SizedBox(
                width: 330.w,
                height: 400.h,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: SizedBox(
                          height: 200.h,
                          width: 450.w,
                          child: Image.asset(
                            'assets/images/collection1.jpeg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 90.w, left: 20.w),
                        child: Text(
                          'Top 100 place to eat for 2018',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 90.w, left: 20.w),
                        child: Text(
                          'Lorem ipsum dolor sit amet,incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h,),
            child: SizedBox(
              width: 250.w,
              child: Text('Sign Up or login to start creating and', style: TextStyle(fontSize: 12),),
            ),
          ),
          Text('following Collection',style: TextStyle(fontSize: 12)),
          SizedBox(height: 15.h,),
          Padding(
            padding: EdgeInsets.only(left:8.w , right: 8.w),
            child: SizedBox(
              height: 60.h,
              child: SimpleButton(lable: 'SignUp', bcolor: Colors.blue, tcolor: Colors.white, borderColor: Colors.blue)),
          ),
          SizedBox(height: 15.h,),
          SizedBox(
            height: 60.h,
            child: SimpleButton(lable: 'Login', bcolor: Colors.white, tcolor: Colors.black, borderColor: Colors.white)),
        ],
      ),
    );
  }
}
