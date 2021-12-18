import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class About_Us extends StatelessWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      
      backgroundColor: Color(0xffE4E4E4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset("images/arrow_back.png")),
                      Padding(
                        padding: EdgeInsets.only(left: size.width*0.18),
                        child: Text(
                        "ABOUT US",
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                      ),)
                    ]),
              ),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: const Color(0xffDDDD00),
      ),
      body:SingleChildScrollView(child: Column(
        children: [
          text(),
        button("Download ios app",size),
         button("Download android app",size)
        ],
      ),
    ),);
  }

  Widget text() {
    return Padding(
      padding: EdgeInsets.only(top: 3.h, left: 3.h, right: 3.h, ),
      child: RichText(
        text: TextSpan(
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style:
                TextStyle(color: Colors.black, fontSize: 16.sp, height: 0.2.h)),
      ),
    );
  }
  Widget button(text,size){
    return GestureDetector(
      onTap: (){},
      child:   Container(
            height: size.height * 0.08,
            margin: EdgeInsets.only(top: 1.h,bottom: 1.h),
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
                  padding: EdgeInsets.only(left: 1.h),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        "images/3cbd44d2f17e1a0604c916626f41ee00.png"),
                    radius: 25,
                  ),
                ),
                Text("$text"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 24.sp,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
    );
  }
}
