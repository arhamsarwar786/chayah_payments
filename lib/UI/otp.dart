import 'success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var OtpBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(width: 1.5, color: Colors.red));

           var selectedBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(width: 1.5, color: Colors.yellow));
    return Scaffold(
        backgroundColor: Color(0xffE4E4E4),
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
                          icon: Image.asset("images/arrow_back.png")),
                  Container(
                    margin: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "OTP CODE",
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  )
                ]),
              ),
              preferredSize: Size.fromHeight(40.0)),
          backgroundColor: Color(0xffDDDD00),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 4.h, right: 4.h),
              height: size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Otp Code",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 1.h,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Please enter your otp code",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.h),
                    child: Row(
                   
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: size.width * 0.15,
                          child: TextField(
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counterText: "",
                              border: OtpBorder,
                              enabledBorder: OtpBorder,
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * 0.15,
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counterText: "",
                              border: OtpBorder,
                              enabledBorder: OtpBorder,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: size.width * 0.15,
                          child: TextField(
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counterText: "",
                              border: OtpBorder,
                              enabledBorder: OtpBorder,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: size.width * 0.15,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: OtpBorder,
                              border: OtpBorder,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 6.h,
                    margin: EdgeInsets.only(
                      top: 5.0.h,
                    ),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Color(0xffDDDD00),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Success()));
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
