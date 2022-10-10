import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreScreen extends StatelessWidget {
  static const routeName = '/more';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More', style: TextStyle(fontSize: 18),),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(500.w, 70.h),
                  maximumSize: Size(500.w, 70.h),
                ),
                onPressed: () {},
                child: Text('SignUp or Login', style: TextStyle(fontSize: 15),),
              ),
              SizedBox(height: 20.h,),
              Divider(),
              ListTile(
                leading: Icon(Icons.reviews_outlined),
                title: Text('Add Review'),
              ),
              ListTile(
                leading: Icon(Icons.camera_alt_outlined),
                title: Text('Add Photo or Video'),
              ),
              ListTile(
                leading: Icon(Icons.check_circle_outlined),
                title: Text('Check-In'),
              ),


               Divider(),
              ListTile(
                leading: Icon(Icons.timeline),
                title: Text('Activity'),
              ),
              ListTile(
                leading: Icon(Icons.timelapse_rounded),
                title: Text('Recent View'),
              ),
              ListTile(
                leading: Icon(Icons.event_available_outlined),
                title: Text('Event'),
              ),
              ListTile(
                leading: Icon(Icons.mark_as_unread_sharp),
                title: Text('Talk'),
              ),

               Divider(),
              ListTile(
                leading: Icon(Icons.timeline),
                title: Text('Yelp Elite Squad'),
              ),
              ListTile(
                leading: Icon(Icons.business),
                title: Text('Add Bussiness'),
              ),
              ListTile(
                leading: Icon(Icons.yard_outlined),
                title: Text('Yelp for Bussiness'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.support),
                title: Text('Support Center'),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
