import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/decorations.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/constant/styles.dart';
import 'package:userapp/utils/myBorderedInputField.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: APP_BACKGROUND_COLOR,
          child: Column(
            children: [
              // ADDS BLOCK
              Container(
                height: 87,
                // child: Text(
                //   ADS_SPACE,
                // ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                color: APP_WHITE,
                child: Row(
                  children: [
                    Text(
                      ADD_REQUEST,
                      style: AppStyles.titleStyle(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),

                  decoration: AppDecoration.orderBoxDecoration(),
                  // height: 100,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        eachRowUI(ORDER_STATUS, MyBorderedInputField()),
                        eachRowUI(ORDER_STATUS, MyBorderedInputField()),
                        eachRowUI(ORDER_STATUS, MyBorderedInputField()),
                        eachRowUI(ORDER_STATUS, MyBorderedInputField()),
                        eachRowUI(CHOOSE_YOUR_PREFERED_LISTING,
                            MyBorderedInputField()),
                        eachRowUI(
                            PREFERED_DATE_TAKING_PHOTO, MyBorderedInputField()),
                        eachRowUI(
                            PREFERED_TIME_TAKING_PHOTO, MyBorderedInputField()),
                      ],
                    ),
                  ),
                ),
                // child: ListView.builder(
                //   // padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                //   // itemBuilder: (context, idx) {
                //   //   return getOrderTab(idx);
                //   // },
                //   itemCount: 10,
                // ),
              ),

              Container(
                height: 60,
                // child: Text(
                //   ADS_SPACE,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  eachRowUI(String title, Widget widget) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.textStyle(color: APP_BLACK),
          ),
          SizedBox(
            height: 10,
          ),
          widget
        ],
      ),
    );
  }
}
