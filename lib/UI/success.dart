import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'main_all.dart';
class Success extends StatelessWidget {
  const Success({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              
                ]),
              ),
              preferredSize: Size.fromHeight(40.0)),
          backgroundColor: Color(0xffDDDD00),
        ),
        body: Center(
          child: Container(
            // color: Colors.red,
            height: size.height/3,
            child: Column(
              children: [
                Text("Successfully Created",style: TextStyle(fontSize: 18),),
                Text("New Password",style: TextStyle(fontSize: 18),),
                  Container(
                    height: 6.h,
                    margin: EdgeInsets.only(top: 5.0.h, left: 6.h, right: 6.h),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Color(0xffDDDD00),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> MainAll()));
                      },
                      child: Text(
                        "GO HOME",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
    );
  }
}