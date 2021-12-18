// ignore_for_file: file_names

// import 'dart:html';

import 'package:sizer/sizer.dart';

import '../NewVoucher/New%20Voucher3.dart';
import 'package:flutter/material.dart';

class NewVoucher2 extends StatefulWidget {
  const NewVoucher2({Key? key}) : super(key: key);

  @override
  _NewVoucher2State createState() => _NewVoucher2State();
}

class _NewVoucher2State extends State<NewVoucher2> {
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
                  height: 10,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Operator: B-Mobile",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Voucher No 1: 78654389",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: const TextField(
                          cursorColor: Color(0xffDDDD00),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffDDDD00), width: 1.0),
                            ),
                            hintText: "K3",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: const TextField(
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Color(0xffDDDD00),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffDDDD00), width: 1.0),
                            ),
                            hintText: "Email",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: MaterialButton(
                          child: const Text(
                            "PRINT VOUCHER",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          onPressed: () {},
                          color: const Color(0xffDDDD00),
                          padding: const EdgeInsets.fromLTRB(9, 9, 9, 9),
                          splashColor: Colors.grey,
                          elevation: 4,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: MaterialButton(
                          child: const Text(
                            "ENTER",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>NewVoucher3()));
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
