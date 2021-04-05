import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';

class MyBorderedInputField extends StatelessWidget {
  TextEditingController controller;
  String title;
  TextInputType keyboardType;
  int maxLength;
  int minLine;
  MyBorderedInputField(
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
          contentPadding: EdgeInsets.zero,
          fillColor: APP_WHITE,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: APP_PURPLE,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: APP_GREY, width: 2.0),
          ),
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
