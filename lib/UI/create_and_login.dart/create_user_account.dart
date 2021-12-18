import '../otp.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'login_screen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffDDDD00),
      body: Center(
      child: SingleChildScrollView(
        child: Container(
          height: size.height * 0.6,
          width: size.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Create User Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 1.0.h),
                child: Text(
                  'Please Create your account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.5.h, right: 2.5.h, top: 2.h),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "name",
                    label: const Text("Enter your name"),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0.sp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.5.h, right: 2.5.h),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "125465885",
                    suffixIcon: Icon(
                      Icons.phone_iphone_sharp,
                      color: Color(0xffFF7300),
                      size: 18.0.sp,
                    ),
                   
                    label: Text("Mobile Number"),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0.sp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.5.h, right: 2.5.h),
                child: TextField(
                  obscureText: isShow,
                  decoration: InputDecoration(
                      hintText: "********",
                      suffixIcon: IconButton(
                        onPressed: (){
                           isShowOrNot();
                        },
                      icon: isShow ? const Icon(
                        Icons.visibility_off ,
                        color: Color(0xffFF7300),
                        size: 18.0,
                      ) :const  Icon(
                        Icons.visibility ,
                        color: Color(0xffFF7300),
                        size: 18.0,
                      
                      ),),
                      label: Text("Password"),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0.sp,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.5.h, right: 2.5.h),
                child: TextField(
                  obscureText: isShow,

                  decoration: InputDecoration(
                      hintText: "12345678",
                      label: Text("Password"),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0.sp,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0.h),
                child: MaterialButton(
                  minWidth: 20.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xffFF7300),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Otp()));
                  },
                  child: Text("Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0.sp,
                      )),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Have an Account Already?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0.sp,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  width: 14.17.w,
                  child: TextButton(
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));

                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xff83C169),
                        fontSize: 10.0.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    ),);
  }

    bool isShow = true;

  isShowOrNot(){
    setState(() {
      isShow = !isShow;
    });
  }
}
