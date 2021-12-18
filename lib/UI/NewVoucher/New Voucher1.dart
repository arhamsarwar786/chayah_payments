// ignore_for_file: file_names

import 'package:sizer/sizer.dart';

import '../NEW%20EASIPAY/New%20Easypay2.dart';
import '../NewVoucher/New%20Voucher2.dart';
import 'package:flutter/material.dart';

class NewVoucher1 extends StatefulWidget {
  const NewVoucher1({Key? key}) : super(key: key);

  @override
  _NewVoucher1State createState() => _NewVoucher1State();
}

class _NewVoucher1State extends State<NewVoucher1> {
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
        body: SingleChildScrollView(
          child: Column(children: [
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
                        backgroundColor: Colors.black54,
                        child: Text(
                          "2",
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
                        child: Column(
                          children: const [
                            Text(
                              "Voucher & send email",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
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
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                alignment: Alignment.center,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      elevation: 0,
                      isExpanded: true,
                      dropdownColor: const Color(0xffFFFFFF),
                      hint: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "Choice Operator",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      iconEnabledColor: Colors.black,
                      alignment: Alignment.center,
                      icon: Container(
                        // padding: EdgeInsets.only(right: 14.1),
                        alignment: Alignment.centerLeft,
                        child: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                      onChanged: (var newValue) {
                        setState(() {
                          newValue == 1;
                        });
                        if (newValue == 1.toString()) {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>))

                        }
                      },
                      items: [
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border: Border(
                                top: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                left: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Image.asset(
                                    "images/7793a28024502c815bcbba2fa190c0c6.png",
                                  ),
                                ),
                                const Text(
                                  "B-Mobile",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Container(
                            height: 47,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border: Border(
                                top: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                left: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.4,
                                  // height: size.height * 0.05,
                                  child: Image.asset("images/Te.png"),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    "Telikom",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 3,
                          child: Container(
                            height: 47,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 15,
                                  // width: 100,
                                  child: Image.asset("images/33517befa61d7a1e9cc1b3922c612945.png"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Digicel",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            // Second Drop Dwon .......................................

            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                alignment: Alignment.center,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      elevation: 0,
                      isExpanded: true,
                      dropdownColor: const Color(0xffFFFFFF),
                      hint: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "Amount",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      iconEnabledColor: Colors.black,
                      alignment: Alignment.center,
                      icon: Container(
                        // padding: EdgeInsets.only(right: 14.1),
                        alignment: Alignment.centerLeft,
                        child: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                      onChanged: (var newValue) {
                        setState(() {
                          newValue == 1;
                        });
                        if (newValue == 1.toString()) {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>))

                        }
                      },
                      items: [
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "K: null",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "K: 3",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "k: 5",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "k: 10",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // third Drop Dwon.......................

            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                alignment: Alignment.center,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      elevation: 0,
                      isExpanded: true,
                      dropdownColor: const Color(0xffFFFFFF),
                      hint: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "Quantity",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      iconEnabledColor: Colors.black,
                      alignment: Alignment.center,
                      icon: Container(
                        // padding: EdgeInsets.only(right: 14.1),
                        alignment: Alignment.centerLeft,
                        child: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                      onChanged: (var newValue) {
                        setState(() {
                          newValue == 1;
                        });
                        if (newValue == 1.toString()) {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>))

                        }
                      },
                      items: [
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "1",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "2",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "3",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "4",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "5",
                                ),
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: Container(
                            height: 47,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "6",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
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
                  "ENTER",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>NewVoucher2()));
                },
                color: const Color(0xffDDDD00),
                padding: const EdgeInsets.fromLTRB(9, 9, 9, 9),
                splashColor: Colors.grey,
              ),
            ),
          ]),
        ));
  }
}
