import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yelp_flutter/Screens/Signup_Screen.dart';
import 'package:yelp_flutter/widgets/Custom_Button.dart';
import 'package:yelp_flutter/widgets/Simple_Button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top:80.h,right: 70.w),
            child: SizedBox(
                width: 250.w,
                child: Text(
                  'Login or Sign Up to Continue',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.sp,
                  ),
                )),
          ),
          Image.asset(
            'assets/images/Login_pic.jpeg',
            fit: BoxFit.cover,
            height: 300.h,
            width: double.infinity,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              SizedBox(
                width: 300,
                child: RichText(
                  text: TextSpan(
                      text: 'Lorem ipsum dolor sit amet',
                      style: TextStyle(fontSize: 14, color: Colors.grey), 
                      children: [
                        TextSpan(
                          text: ' Lorem',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text:
                              ' Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet',
                        ),
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
            width: 20.w,
          ),
          CustomButton(
            lable: 'Continue with Facebook',
            image: 'assets/images/ffb.png',
            bcolor: Colors.blue,
            tcolor: Colors.white,
            borderColor: Colors.blue,
          ),
          CustomButton(
            lable: 'Continue with Google',
            image: 'assets/images/google.png',
            bcolor: Colors.white,
            tcolor: Colors.black,
            borderColor: Colors.black,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 70.h,
                width: 150.w,
                child: SimpleButton(
                  lable: 'Login',
                  bcolor: Colors.white,
                  tcolor: Colors.black,
                  borderColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 70.h,
                width: 150.w,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => Signup()),
                    );
                  },
                  child: SimpleButton(
                    lable: 'I\'m new',
                    bcolor: Colors.red,
                    tcolor: Colors.white,
                    borderColor: Colors.red,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
