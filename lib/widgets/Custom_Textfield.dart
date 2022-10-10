import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String lable;
  String hintText;
  bool Obscure;
  CustomTextfield({
    required this.lable,
    required this.hintText,
    required this.Obscure,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
        ),
        label: Text(lable),
        hintText: hintText,
      ),
      obscureText: Obscure,
    );
  }
}
