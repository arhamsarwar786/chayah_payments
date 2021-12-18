
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'create_user_account.dart';
import 'login_screen.dart';


class LoginMerchantAccount extends StatefulWidget {
  const LoginMerchantAccount({Key? key}) : super(key: key);

  @override
  _LoginMerchantAccountState createState() => _LoginMerchantAccountState();
}

class _LoginMerchantAccountState extends State<LoginMerchantAccount> {



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
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: 50),
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // padding: EdgeInsets.only(top: 200),
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width *0.90 ,
                  decoration: const BoxDecoration(
                  // color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage("images/bd42cae87b2ddbce93d66f4ca0a6c36a.png"), fit: BoxFit.fill)),
                ),
                // ignore: prefer_const_constructors

                Container(
                  height: MediaQuery.of(context).size.height /2,
                  // color: Colors.yellow,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    
                  Text("Welcome To",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  const Text("Chaya Payments",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Convenience and Accessibilty",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w300)),

                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      // margin: ,
                      child:  ListTile(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));

                        },
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 15,
                          child: Icon(Icons.person_sharp,color: Colors.black,),
                          // backgroundImage: , // no matter how big it is, it won't overflow
                        ),
                        title: Text(
                          'Login merchant account',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            
                              "images/fcdf17ce9a312d0ca6aed7cd4bd5f01b.png"), // no matter how big it is, it won't overflow
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CreateAccount()));
                            },
                            child: const Text(
                              "Create an Account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: 120,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                  ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}