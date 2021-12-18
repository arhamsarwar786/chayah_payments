// ignore_for_file: file_names

import 'package:sizer/sizer.dart';

import '../main_all.dart';
import 'package:flutter/material.dart';

class NewEasipay4 extends StatefulWidget {
  const NewEasipay4({Key? key}) : super(key: key);

  @override
  _NewEasipay4State createState() => _NewEasipay4State();
}

class _NewEasipay4State extends State<NewEasipay4> {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 150,
                width: 150,
                child: const Image(image: AssetImage("images/GOOD.png"))),
            // const SizedBox(height: ),
            const Text(
              "Success",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "Your transaction successful",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: MaterialButton(
                child: const Text(
                  "GO TO HOME ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> MainAll()));

                },
                color: const Color(0xffDDDD00),
                padding: const EdgeInsets.fromLTRB(9, 9, 9, 9),
                splashColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
