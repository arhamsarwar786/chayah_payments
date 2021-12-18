
import 'package:chayah_payments/UI/TopYourBalance/Bsp_Introduction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'CreditCard.dart';

class TopYourBalance extends StatefulWidget {
  // const TopYourBalance({Key? key}) : super(key: key);

  @override
  State<TopYourBalance> createState() => _TopYourBalanceState();
}

class _TopYourBalanceState extends State<TopYourBalance> {
  @override
  Widget build(BuildContext context) {
    int dropdownValue = 1;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE4E4E4),
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
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.2),
                    child: Text(
                      "Top Your Balance",
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  ),
                ]),
              ),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: const Color(0xffDDDD00),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(
            
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CreditCard()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4.h),
                  alignment: Alignment.center,
                  width: size.width,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    color: Color(0xffE4E4E4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        offset: Offset(0, 7),
                      ),
                    ],
                  ),
                  child: Text(
                    "WITH CREDIT CARD",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Color(0xffE4E4E4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 7,
                      offset: Offset(0, 7),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      elevation: 0,
                      isExpanded: true,
                      dropdownColor: Color(0xffE4E4E4),
                      hint: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Direct bank deposit",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      iconEnabledColor: Colors.black,
                      alignment: Alignment.center,
                      icon: Container(
                        padding: EdgeInsets.only(right: size.width * 0.1),
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 24.sp,
                        ),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 16.sp),
                      onChanged: (var newValue) {
                        setState(() {
                          newValue==1;
                        });
                        if(newValue==1.toString()){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>))
                       
                        }
                        
                      },
                      items: [
                        DropdownMenuItem(
                          value: 1.toString(),
                          child: InkWell(
                            onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>BspIntroduction()));

                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border(
                                  top:BorderSide(color: Colors.black,
                                  width: 2,) ,left: BorderSide(color: Colors.black,
                                  width: 2,),
                                  right: BorderSide(color: Colors.black,
                                  width: 2,), bottom: BorderSide(color: Colors.black,
                                  width: 2,)
                                    ),
                                
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    child: Image.asset(
                                      "images/a4c2b1bad331b42ea0e3a54278e05eb7.png",
                                    ),
                                  ),
                                  Text(
                                    "BSP",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Container(
                           
                          
                            decoration: BoxDecoration(
                          
                              border: Border.all(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                 
                                  height: size.height * 0.05,
                                  child: Image.asset(
                                      "images/c4da3014dc0ec047ddfd483980480375.png"),
                                ),
                                Text(
                                  "KINA",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ]),
      ),
    );
  }
}
