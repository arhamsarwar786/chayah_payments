// import 'dart:js';

import 'package:chayah_payments/UI/TopYourBalance/BspConferPayment.dart';
import 'package:chayah_payments/UI/TopYourBalance/BspFillDetail.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BspIntroduction extends StatelessWidget {
  const BspIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: Text(
                      "BSP",
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  ),
                ]),
              ),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: const Color(0xffDDDD00),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
           
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    bottom: 2.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width / 5,
                        child: Column(
                          children: [
                              Container(
                            decoration: BoxDecoration(
                              border:Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Image(
                                  image: AssetImage("images/09a43117a741ab13db3f8a64f996c606.png"),
                                ),),),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "introduction",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 9.sp),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.09,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Divider(
                              height: 10,
                              color: Colors.grey,
                              thickness: 2,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        child: Column(children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "fill detail",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 9.sp),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.09,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Divider(
                              height: 10,
                              color: Colors.grey,
                              thickness: 2,
                            )
                          ],
                        ),
                      ),
                      Container(
                        
                        width: size.width / 5,
                        child: Column(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 20,
                              child: Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Confirm payment",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 9.sp),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                text("BSP BANK INSTRUCTIONS", 12.sp, FontWeight.normal,
                    Colors.black),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 2.h),
                  child: text("Acount Name: Detl Ltd", 10.sp, FontWeight.normal,
                      Colors.black54),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 1.h),
                  child: text("Acount Number:25414264212", 10.sp,
                      FontWeight.normal, Colors.black54),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: text("STEPS", 12.sp, FontWeight.w500, Colors.black),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 2.h),
                  child: text(
                      "1.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      12.sp,
                      FontWeight.w500,
                      Colors.black),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 2.h, bottom: 4.h),
                  child: text(
                      "2.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      12.sp,
                      FontWeight.w500,
                      Colors.black),
                ),
                MaterialButton(
                  elevation: 6,
                  height: size.height * 0.06,
                  minWidth: MediaQuery.of(context).size.width,
                  color: Color(0xffDDDD00),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> BspFillDetail()));

                  },
                  child: text("NEXT", 16.sp, FontWeight.w900, Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget text(text, fontsize, fontWeight, color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontsize,
        height: 0.16.h,
      ),
    );
  }
}
