import '../otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                child: Row(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 24.sp,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "RESET PASSWORD",
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  )
                ]),
              ),
              preferredSize: Size.fromHeight(40.0)),
          backgroundColor: Color(0xffDDDD00),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 3.h),
                    child: Text(
                      "Reset password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1.h),
                    child: Text(
                      "Please enter your mobile number",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h, right: 6.h, top: 3.h),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "125465885",
                        label: Text("Mobile Number"),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0.sp,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      right: 6.h,
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "125465885",
                        label: Text("New Password"),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0.sp,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      right: 6.h,
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "125465885",
                        label: Text("Current Password"),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 6.h,
                    margin: EdgeInsets.only(top: 5.0.h, left: 6.h, right: 6.h),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Color(0xffDDDD00),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Otp()));
                      },
                      child: Text(
                        "Enter",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
