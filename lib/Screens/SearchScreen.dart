import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yelp_flutter/widgets/Custom_Items.dart';
import 'package:yelp_flutter/widgets/Custom_SearchBar.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/first.jpeg',
                  color: Colors.grey.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55.h, left: 25.w, bottom: 18.h),
                  child: SizedBox(
                    width: 275,
                    child: Text(
                      'Let\'s make your next meal incredibale',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 38.sp,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 180.h, left: 30.w, right: 120.w),
                  child: SizedBox(
                    height: 70.h,
                    width: 230.w,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.search),
                          Text('Unique Resturents',
                              style: TextStyle(color: Colors.white, fontSize: 15),),
                        ],
                      ),
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 295.h),
                  child: CustomSearchBar(
                      icon: Icon(Icons.search),
                      hintText: 'Search for nearby resturents and shops'),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              children: [
                CustomItems(image: 'assets/images/item1.jpeg', text: 'Resturants'),
                 CustomItems(image: 'assets/images/item1.jpeg', text: 'Cofee & Tea Shop', ),
                  CustomItems(image: 'assets/images/item1.jpeg', text: 'Resturants'),
                   CustomItems(image: 'assets/images/item1.jpeg', text: 'Resturants'),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              children: [
                CustomItems(image: 'assets/images/item1.jpeg', text: 'Resturants'),
                 CustomItems(image: 'assets/images/item1.jpeg', text: 'Cofee & Tea Shop', ),
                  CustomItems(image: 'assets/images/item1.jpeg', text: 'Resturants'),
                   CustomItems(image: 'assets/images/item1.jpeg', text: 'Resturants'),
              ],
            ),
            SizedBox(height: 40.h,),
            Divider(),
          ],
        ),
      ),

    );
  }
}
