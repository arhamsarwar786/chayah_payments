// ignore_for_file: file_names


import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'checkEasipay2.dart';

class CheckEasipay extends StatefulWidget {
  const CheckEasipay({Key? key}) : super(key: key);

  @override
  _CheckEasipayState createState() => _CheckEasipayState();
}

class _CheckEasipayState extends State<CheckEasipay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4E4E4),
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
                    "Check Easipay",
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  ),
                )
              ]),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: Color(0xffDDDD00),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 50,
                    color: Colors.black38,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.black26,
                    radius: 30,
                    child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: const [
                        Text(
                          "Enter Meter Number",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width / 3,
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Response",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: const TextField(
                cursorColor: Color(0xffDDDD00),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffDDDD00), width: 1.0),
                  ),
                  hintText: "Enter Meter",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckEasipay2()));
                },
                color: const Color(0xffDDDD00),
                padding: const EdgeInsets.fromLTRB(9, 9, 9, 9),
                splashColor: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
