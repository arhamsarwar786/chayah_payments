import 'dart:ui';

import 'package:chayah_payments/UI/TopYourBalance/payment_credit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE4E4E4),
      appBar: AppBar(
      automaticallyImplyLeading: false,
        bottom: PreferredSize(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                child: Row(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("images/arrow_back.png")),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.2),
                    child: Text(
                      "With Credit Card",
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  ),
                ]),
              ),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: const Color(0xffDDDD00),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 3.h, right: 3.h, top: 4.h),
          child: Column(
            children: [
              text("Steps", 16.sp, FontWeight.w900),
              Container(
                margin: EdgeInsets.only(top: 5.h),
                child: text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                    10.sp,
                    FontWeight.normal),
              ),
              Container(
                margin: EdgeInsets.only(top: 3.h,bottom: 4.h),
                child: text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                    10.sp,
                    FontWeight.normal),
              ),
              
               MaterialButton(
                 elevation: 6,
                 height: size.height*0.06,
                      minWidth: MediaQuery.of(context).size.width,
                      color: Color(0xffDDDD00),
                      onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>PaymentCreditCard()));
                      },
                      child:text("NEXT", 16.sp, FontWeight.w900)
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget text(
    text,
    fontsize,
    fontWeight,
  ) {
    return Text(
      text,
      textAlign: TextAlign.center,
      
      style: TextStyle(
        color: Colors.black,
        fontWeight: fontWeight,
        fontSize: fontsize,
        height: 0.16.h,
      ),
    );
  }
}
