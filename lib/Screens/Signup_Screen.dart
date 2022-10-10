import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yelp_flutter/widgets/Custom_Textfield.dart';

class Signup extends StatelessWidget {
   String dropdownvalue = 'Countries';

  // List of items in our dropdown menu
                          var item = [
                             'Countries',
                             'Pakistan',
                             'Canida',
                             'UK',
                             'USA',
                            ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              CustomTextfield(
                  lable: 'Firstname', hintText: 'Firstname', Obscure: false),
              SizedBox(
                height: 25.h,
              ),
              CustomTextfield(
                  lable: 'Lastname', hintText: 'Lastname', Obscure: false),
              SizedBox(
                height: 25.h,
              ),
              CustomTextfield(lable: 'Email', hintText: 'Email', Obscure: false),
              SizedBox(
                height: 25.h,
              ),
              CustomTextfield(
                  lable: 'Password', hintText: 'Password', Obscure: true),
              SizedBox(
                height: 25.h,
              ),
              CustomTextfield(
                  lable: 'Birthday', hintText: 'Birthday', Obscure: false),
                  SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 155.w,
                      child: CustomTextfield(
                          lable: 'Postcode',
                          hintText: 'Postcode',
                          Obscure: false),),
                          
                          SizedBox(width: 35.w,),
                              SizedBox(
                        height: 80.h,
                        width: 130,
                        child: DropdownButton(
                          isExpanded: true,
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: item.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                      ),
                 
                ],
              ),
      
              
            ],
          ),
        ),
      ),
    );
  }
}
