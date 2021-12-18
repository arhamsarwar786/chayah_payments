// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'New Easipay3.dart';

class NewEasipay2 extends StatefulWidget {
  const NewEasipay2({Key? key}) : super(key: key);

  @override
  _NewEasipay2State createState() => _NewEasipay2State();
}

class _NewEasipay2State extends State<NewEasipay2> {
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
                    "Easipay",
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xffDDDD00),
                          radius: 20,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.done,
                              color: Color(0xffDDDD00),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Enter Meter",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xffDDDD00),
                          radius: 20,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.done,
                              color: Color(0xffDDDD00),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Confirms meter",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xffDDDD00),
                          radius: 20,
                          // child: CircleAvatar(
                          //   radius: 15,
                          //   backgroundColor: Colors.black,
                          //   child: Icon(
                          //     Icons.done,
                          //     color: Color(0xffDDDD00),
                          //   ),
                          // ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Print or send via email",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xffDDDD00),
                          radius: 20,
                          // child: Icon(
                          //   Icons.done_outline,
                          //   color: Colors.black,
                          // )
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Success",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 12),
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        child: const Text(
                          "Meter Number:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: const Text(
                          "Consumer Name:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: Text(
                          "Consumer Account:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: Text(
                          "Minimum Vendor Amount:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: Text(
                          "Consumer Address:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: Text(
                          "Consumer Twon:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: Text(
                          "Vending District:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: Text(
                          "Status:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        child: const Text(
                          "786542178",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        child: Text(
                          "JHON:",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        child: Text(
                          "67546789",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        child: const Text(
                          "10",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        child: const Text(
                          "SEC 255 LOT 20 SILE SY HOHOLA PO BOX 20",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        child: const Text(
                          "PT MORESBY",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        child: const Text(
                          "NATIONAL CAPIAL",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        child: const Text(
                          "ACTIVE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: const TextField(
                    cursorColor: Color(0xffDDDD00),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffDDDD00), width: 1.0),
                      ),
                      hintText: "10",
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
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> NewEasipay3()));
                      
                    },
                    color: const Color(0xffDDDD00),
                    padding: const EdgeInsets.fromLTRB(9, 9, 9, 9),
                    splashColor: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
