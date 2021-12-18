import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Setting extends StatelessWidget {
  Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4E4E4),
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
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2),
                    child: Text(
                      "SETTING",
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  )
                ]),
              ),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: Color(0xffDDDD00),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textInfo("Agent Number", "1798", context),
            const Divider(
              color: Colors.black,
            ),
            textInfo("Agent Name", "Smith Kiosk", context),
            const Divider(
              color: Colors.black,
            ),
            textInfo("Agent Phone Contact", "1798", context),
            const Divider(
              color: Colors.black,
            ),
            textInfo("Agent Email", "exampul1@gmail.com", context),
            const Divider(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  Widget textInfo(title, subtitle, context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$title",
            softWrap: true,
            style: TextStyle(color: Colors.black, fontSize: 16.sp),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.5.h),
            child: Text(
              "$subtitle",
              softWrap: true,
              overflow: TextOverflow.clip,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
