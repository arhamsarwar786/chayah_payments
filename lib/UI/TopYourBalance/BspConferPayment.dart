import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../main_all.dart';

class BspConfermDetail extends StatelessWidget {
  const BspConfermDetail({Key? key}) : super(key: key);

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
                              ),
                            ),),
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
                              border:Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child:
                          CircleAvatar(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.black,
                            child: Image(
                                image: AssetImage("images/09a43117a741ab13db3f8a64f996c606.png"),
                              ),
                          ),),
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
                              Container(
                            decoration: BoxDecoration(
                              border:Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 20,
                              child: Image(
                                image: AssetImage("images/09a43117a741ab13db3f8a64f996c606.png"),
                              ),
                            ),),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Conferm payment",
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
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 2.h),
                  child: text(
                      "1.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      13.5.sp,
                      FontWeight.normal,
                      Colors.black),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 2.h, bottom: 4.h),
                  child: text(
                      "2.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      13.5.sp,
                      FontWeight.normal,
                      Colors.black),
                ),
            Container(
              margin: EdgeInsets.only(top: 4.h,bottom:3.h),
              child:    MaterialButton(
                  
                  elevation: 6,
                  height: size.height * 0.06,
                  minWidth: MediaQuery.of(context).size.width,
                  color: Color(0xffDDDD00),
                  onPressed: () {},
                  child: text("CONTACT US", 16.sp, FontWeight.w900, Colors.black),
                ),),
                MaterialButton(
                  elevation: 6,
                  height: size.height * 0.06,
                  minWidth: MediaQuery.of(context).size.width,
                  color: Color(0xffDDDD00),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>MainAll()));

                  },
                  child: text("HOME", 16.sp, FontWeight.w900, Colors.black),
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
