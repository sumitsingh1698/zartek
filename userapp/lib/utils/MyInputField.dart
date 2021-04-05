import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';

class MyInputField extends StatelessWidget {
  TextEditingController controller;
  String title;
  TextInputType keyboardType;
  int maxLength;
  int minLine;
  MyInputField(
      {this.controller,
      this.title = '',
      this.keyboardType = TextInputType.text,
      this.maxLength,
      this.minLine = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLength: maxLength,
        minLines: minLine,
        maxLines: minLine,
        // focusNode: focusNode,
        decoration: InputDecoration(
          hintText: "$title",
          filled: true,
          contentPadding: EdgeInsets.only(left: 10.0, bottom: 0.0, top: 0.0),
          fillColor: APP_WHITE,
        ),

        // keyboardType: keyboardType,
        // maxLines: maxLine,
        // onChanged: (val) {
        //   submitVal(val);
        // },
        // style: TextStyle(color: APP_BLACK, fontSize: 9.0.sp),
      ),
    );
  }
}
