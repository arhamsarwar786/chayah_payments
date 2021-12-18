// ignore_for_file: file_names

// import 'dart:html';

import 'package:sizer/sizer.dart';

import '../main_all.dart';
import 'package:flutter/material.dart';

class NewVoucher3 extends StatefulWidget {
  const NewVoucher3({Key? key}) : super(key: key);

  @override
  _NewVoucher3State createState() => _NewVoucher3State();
}

class _NewVoucher3State extends State<NewVoucher3> {
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
                    icon: Image.asset("images/arrow_back.png")),
                Container(
                  margin: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "New Voucher",
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  ),
                )
              ]),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: Color(0xffDDDD00),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: [
                            const CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Image(
                                  image: AssetImage("images/09a43117a741ab13db3f8a64f996c606.png"),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Column(
                                children: const [
                                  Text(
                                    "Fill Details",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 50,
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
                        height: 200,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(children: [
                          const CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Image(
                                image: AssetImage("images/09a43117a741ab13db3f8a64f996c606.png"),
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Column(
                              children: const [
                                Text(
                                  "Voucher & send email",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: 40,
                        width: 50,
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
                        height: 200,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: [
                            const CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Image(
                                  image: AssetImage("images/09a43117a741ab13db3f8a64f996c606.png"),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              // height: 20,
                              // width: 80,

                              child: Column(
                                children: const [
                                  Text(
                                    "Success",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
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
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Your credit has been",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: MaterialButton(
                          child: const Text(
                            "GO HOME",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>MainAll()));
                          },
                          color: const Color(0xffDDDD00),
                          padding: const EdgeInsets.fromLTRB(9, 9, 9, 9),
                          splashColor: Colors.grey,
                          elevation: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
