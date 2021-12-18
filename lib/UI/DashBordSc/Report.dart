import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Report extends StatelessWidget {
  const Report({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffe4e4e4),
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
        body: Container(

          margin:EdgeInsets.only(top:20,left: size.width*0.05),
          decoration: BoxDecoration(
            color: Colors.white
          ),
          
          height: size.height*0.50,
          width: size.width*0.90,
        ),
    );
  }
}