import '../otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class Support_Details extends StatelessWidget {
  final icon,text,size;
  Support_Details(this.icon,this.text,this.size);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE4E4E4),
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
                    margin: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "$text",
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  )
                ]),
              ),
              preferredSize: Size.fromHeight(40.0)),
          backgroundColor: Color(0xffDDDD00),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Column(
              children: [
                button(icon,text,size),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Text("Automatic",style: TextStyle(color: Colors.red,fontSize: 30),),
                )
                // button(Icons.email,"Send a Mail",size),
                // button(Icons.phone_android,"Call Us",size),
                // button(Icons.phone,"Message Whatsapp",size),
              ],
            ),
          
          ),
        ));
  }



    Widget button(icon,text,size){
    return Container(
          height: size.height * 0.08,
          margin: EdgeInsets.only(top: 3,bottom: 3),
          decoration: BoxDecoration(
            color: Color(0xffE4E4E4),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                // spreadRadius: 5,
                blurRadius: 3,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Icon(icon),
              ),
              Text("$text",style: TextStyle(fontSize: 20),),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 24.sp,
                    color: Colors.black,
                  )),
            ],
          ),
        );
  }
}
