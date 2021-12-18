import 'dart:io';

import './AboutUs/Aboutus.dart';
import './DIRECT/Direct1.dart';

import './DashBordSc/dashBord.dart';
import './NEW%20EASIPAY/NewEasipay1.dart';
import './NewVoucher/New%20Voucher1.dart';
import './Support/support.dart';
import './TopYourBalance/payment_credit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'CHECK EASIPAY/CheckEasipay.dart';
import 'TopYourBalance/topYoyrBalance.dart';
import 'create_and_login.dart/login_screen.dart';
import 'settingSc/setting.dart';

class MainAll extends StatefulWidget {
  const MainAll({Key? key}) : super(key: key);

  @override
  _MainAllState createState() => _MainAllState();
}

class _MainAllState extends State<MainAll> {
  bool isClicked = false;



   Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () {
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
                },
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffe4e4e4),
          // appBar: AppBar(
          //   automaticallyImplyLeading: false,
          //   bottom: PreferredSize(
          //       child: Container(
          //         child: isClicked ?
          //         // On Clicked
          //         Hero(
          //           tag: "animate",
          //           child: Column(
          //             children: [

          //               Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     IconButton(
          //                         onPressed: () {
          //                           setState(() {
          //                             isClicked = false;
          //                           });
          //                         },
          //                         icon: Icon(
          //                           Icons.arrow_back,
          //                           size: 24.sp,
          //                           color: Colors.black,
          //                         )),
          //                     Container(
          //                         alignment: Alignment.centerLeft,
          //                         height: 90,
          //                         width: size.width / 2,
          //                         // color: Colors.red,
          //                         child: Row(
          //                           mainAxisAlignment: MainAxisAlignment.start,
          //                           crossAxisAlignment: CrossAxisAlignment.center,
          //                             children: [
          //                               Container(
          //                                 padding: EdgeInsets.all(10),
          //                                 decoration: BoxDecoration(

          //                                 color: Colors.white,
          //                                   borderRadius: BorderRadius.circular(20)),
          //                                 child: Icon(Icons.person_sharp),
          //                               ),
          //                               Padding(
          //                                 padding: const EdgeInsets.all(8.0),
          //                                 child: Column(
          //                                   mainAxisAlignment: MainAxisAlignment.center,
          //                                   crossAxisAlignment: CrossAxisAlignment.start,
          //                                   children: [
          //                                     Text("User Name"),
          //                                     Text("Balance: K250"),
          //                                   ],
          //                                 ),
          //                               )
          //                             ],
          //                         ),
          //                      ),
          //                     Container()
          //                   ]),

          //               Container(
          //                 color: Colors.red,
          //                 height: 30,
          //                 child: Center(child: Text("Services",style: TextStyle(color: Colors.white,)),),
          //               ),
          //             ],
          //           ),
          //         )

          //             :

          //             Hero(
          //           tag: "animate",

          //               child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 IconButton(
          //                     onPressed: () {
          //                       setState(() {
          //                         isClicked = true;
          //                       });
          //                     },
          //                     icon: Icon(
          //                       Icons.menu,
          //                       size: 24.sp,
          //                       color: Colors.white,
          //                     )),
          //                 Container(
          //                     alignment: Alignment.centerLeft,
          //                     height: 90,
          //                     width: size.width / 2,
          //                     // color: Colors.red,
          //                     child: Image.asset(
          //                       "images/bd42cae87b2ddbce93d66f4ca0a6c36a.png",
          //                     )),
          //                 Container()
          //               ]),
          //             ),
          //       ),
          //       preferredSize: isClicked ? Size.fromHeight(70.0) : Size.fromHeight(40.0)),
          //   backgroundColor: isClicked ? Colors.yellow:  Colors.black,
          // ),
          body: Container(
            height: size.height,
            width: size.width,
            // margin: EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: isClicked ? const Color(0xffDDDD00) : Colors.black,
                    height: 120,
                    child: isClicked
                        ?
                        // On Clicked
                        Hero(
                            tag: "animate",
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isClicked = false;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.arrow_back,
                                            size: 24.sp,
                                            color: Colors.black,
                                          )),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: 90,
                                        width: size.width / 2,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(20)),
                                              child: Icon(Icons.person_sharp),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("User Name"),
                                                  Text("Balance: K250"),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container()
                                    ]),
                                Container(
                                  color: Colors.red,
                                  height: 30,
                                  child: Center(
                                    child: Text("Services",
                                        style: TextStyle(
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Hero(
                            tag: "animate",
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isClicked = true;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.menu,
                                        size: 24.sp,
                                        color: Colors.white,
                                      )),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      height: 90,
                                      width: size.width / 2,
                                      // color: Colors.red,
                                      child: Image.asset(
                                        "images/bd42cae87b2ddbce93d66f4ca0a6c36a.png",
                                      )),
                                  Container()
                                ]),
                          ),
                  ),
                  GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      childAspectRatio: 1.4,
                      padding: const EdgeInsets.all(4.0),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 20.0,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => NewEasipay()));
                          },
                          // color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "images/f37c976717ceb35a83ac0c58a764502a.png"),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                              ),
                              const Text(
                                "Easipay",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => CheckEasipay()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "images/f37c976717ceb35a83ac0c58a764502a.png"),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "Check",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                              ),
                              const Text(
                                "Easipay",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> NewVoucher1()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  // alignment: Alignment.center,
                                  height: 60,
                                  child: Image.asset(
                                    "images/d0d0431e8efb466fbb0aa918529b4de9.png",
                                  )),
                              Text(
                                "New",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                "Voucher",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> Direct1()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  // color:Colors.red,
                                  alignment: Alignment.center,
                                  height: 60,
                                  child: Image.asset(
                                      "images/c13dff412e1453a6921558a65d45a29b.png")),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "Direct",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> TopYourBalance()));

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 60,
                                  child: Image.asset(
                                      "images/49947c50358bc2519d6f991ad8b112a0.png")),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "Top Your",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                              ),
                              const Text(
                                "Balance",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> About_Us() ));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 60,
                                  child: Image.asset(
                                      "images/5629905f593b3f86d63fd136421a244f.png")),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "Vendor",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Support()));

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 60,
                                  child: Image.asset(
                                      "images/7793a28024502c815bcbba2fa190c0c6.png")),
                              // const Padding(
                              //   padding: EdgeInsets.symmetric(vertical: 2),
                              //   child: Text(
                              //     "New",
                              //     style: TextStyle(
                              //         fontWeight: FontWeight.w500, fontSize: 16),
                              //   ),
                              // ),
                              // const Text(
                              //   "Easipay",
                              //   style:
                              //       TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                              // ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Dash_bord()));

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.dashboard,
                                size: 50,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "Dashboard",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {

                             showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to logout ?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                                MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: new Text('Yes'),
              ),
            ],
          ),
        );
      
                          
                          },
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout,
                                size: 50,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> Setting()));
                          },
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.settings_outlined,
                                size: 50,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "Setting",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
