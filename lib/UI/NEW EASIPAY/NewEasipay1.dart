// ignore_for_file: file_names
import 'package:sizer/sizer.dart';
import '../NEW%20EASIPAY/New%20Easypay2.dart';
import 'package:flutter/material.dart';

class NewEasipay extends StatefulWidget {
  const NewEasipay({Key? key}) : super(key: key);

  @override
  _NewEasipayState createState() => _NewEasipayState();
}

class _NewEasipayState extends State<NewEasipay> {
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
                          // child: CircleAvatar(
                          //   radius: 15,
                          //   backgroundColor: Colors.black,
                          //   child: Icon(
                          //     Icons.done,
                          //     color: Color(0xffDDDD00),
                          //   ),
                          // ),
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
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0xffDDDD00),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffDDDD00), width: 1.0),
                      ),
                      hintText: "Meter Number",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0xffDDDD00),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffDDDD00), width: 1.0),
                      ),
                      hintText: "Confirm Meter",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0xffDDDD00),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffDDDD00), width: 1.0),
                      ),
                      hintText: "Amount",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),

// Drop Dwon code ........................
                SizedBox(
                  height: 10,
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
                              "Choice payment method",
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
                                      "Cash",
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
                                      "Cheque",
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
                                      "EFTPOS",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
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
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> NewEasipay2()));
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
