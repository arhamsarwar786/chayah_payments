import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

import 'Report.dart';

class Dash_bord extends StatelessWidget {
  const Dash_bord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset("images/arrow_back.png")),
                      Text(
                        "DASHBORD",
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                      ),
                      IconButton(
                          onPressed: () {

                          },
                          icon: Icon(
                            Icons.print_outlined,
                            color: Colors.black,
                            size: 40,
                          )),
                    ]),
              ),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: const Color(0xffDDDD00),
      ),
      body: SingleChildScrollView(
        child:Center(child: Container(
          margin: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            
            children: [
              Container(
                height: size.height*0.25,
                width: size.width,
                margin: EdgeInsets.only(top: 3.h, bottom: 1.5.h),
                decoration: BoxDecoration(
                  
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    alignment: Alignment.center,
                      image: AssetImage("images/Component 69 – 1.png"),
                      fit: BoxFit.cover,
                      
                      scale: 0.1,
                      ),
                ),
               
              ),
             
            

              SizedBox(
                height: size.height * 0.038,
                child: MaterialButton(
                  //  minWidth: 20.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff00CC88),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Report()));
                  },
                  child: Text(
                    "Report download or print",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              InfoDetail("Easipay", "K 50125", "256", "K 1050.45", size,
                  Color(0xff2D4394), Color(0xff96C9E5)),
              InfoDetail("Digicel", "K 50125", "256", "K 1050.45", size,
                  Color(0xffD22D16), Color(0xffFE79B8)),
              InfoDetail("B-Mobile", "K 50125", "256", "K 1050.45", size,
                  Color(0xffEED106), Color(0xffD99C0F)),
              InfoDetail("Telikom", "K 50125", "256", "K 1050.45", size,
                  Color(0xff6397D8), Color(0xff49A329)),
            ],
          ),
        ),
      ),),
    );
  }

  // ignore: non_constant_identifier_names
  Widget InfoDetail(String text, String totalSales, String totalOrder,
      String totalComission, var scSize, color1, color2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5, top: 1.5.h),
          child: Text(
            "$text",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: scSize.width * 0.43,
              height: scSize.height * 0.08,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [color1, color2],
                  ),
                  borderRadius: BorderRadius.circular(2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Sales",
                    style: TextStyle(color: Colors.white, fontSize: 8.sp),
                  ),
                  Text(
                    "$totalSales",
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: scSize.width * 0.43,
              height: scSize.height * 0.08,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      color2,
                      color1,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(2.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Order",
                    style: TextStyle(color: Colors.white, fontSize: 8.sp),
                  ),
                  Text(
                    "$totalOrder",
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 2.h),
          width: scSize.width,
          height: scSize.height * 0.08,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2],
              ),
              borderRadius: BorderRadius.circular(5.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Commission",
                style: TextStyle(color: Colors.white, fontSize: 8.sp),
              ),
              Text(
                "$totalComission",
                overflow: TextOverflow.clip,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
