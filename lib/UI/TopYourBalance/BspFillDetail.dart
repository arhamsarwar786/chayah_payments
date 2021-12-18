import 'dart:ui';

import 'package:chayah_payments/UI/TopYourBalance/BspConferPayment.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BspFillDetail extends StatelessWidget {
  const BspFillDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xffE4E4E4),
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
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Image(
                                  image: AssetImage("images/09a43117a741ab13db3f8a64f996c606.png"),
                                ),
                              ),
                            ),
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
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: CircleAvatar(
                              foregroundColor: Colors.red,
                              backgroundColor: Colors.black,
                              child: Image(
                                image: AssetImage("images/09a43117a741ab13db3f8a64f996c606.png"),
                              ),
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
                                    "Confirm Payment",
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
                Container(
                  // color: Colors.red,
                  // height: size.height * 0.05,
                  padding: EdgeInsets.only(top: 2.h),
                  child: TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffDDDD00),
                        )),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black54,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        hintText: "Enter amount",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0.sp,
                        )),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  // height: size.height * 0.05,
                  margin: EdgeInsets.only(bottom: 5.h, top: 3.h),
                  child: TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hoverColor: Colors.black54,
                        focusColor: Colors.black54,
                        fillColor: Colors.black54,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffDDDD00),
                        )),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        hintText: "Enter Confirm amount",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0.sp,
                        )),
                  ),
                ),
                MaterialButton(
                  elevation: 6,
                  height: size.height * 0.06,
                  minWidth: MediaQuery.of(context).size.width,
                  color: Color(0xffDDDD00),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> BspConfermDetail()));
                  },
                  child: text("ENTER", 16.sp, FontWeight.w900, Colors.black),
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
