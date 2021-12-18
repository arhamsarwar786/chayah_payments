import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'UI/create_and_login.dart/login_merchant_account.dart';
import 'UI/main_all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return  MaterialApp(    
          theme: ThemeData(
            accentColor: Colors.yellow,
            primaryColor: Colors.yellow,
          ),
          home:  SplashScreen(),
        );
      }
    );
  }
}



class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   late Timer _timer;

  int _start = 2;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      body:  Container(        
        decoration:const BoxDecoration(
        color: Colors.black,          
          // image: DecorationImage(image: AssetImage('images/sample.png',))          
          ),
        height: size.height,
        width: size.width,
        child: Container(
          height: size.height / 2,

          child: Image.asset("images/bd42cae87b2ddbce93d66f4ca0a6c36a.png"),
        ),
      ),
    );
  }
  
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 3) {
          _timer.cancel();
        // LoginMerchantAccount()
            Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginMerchantAccount()),
          );
        } else {
          setState(() {
            _start++;
          });
        }
      },
    );
  }
}