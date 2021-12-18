import '../main_all.dart';
import '../create_and_login.dart/reset_password.dart';
import 'package:flutter/material.dart';

import 'create_user_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffDDDD00),
      body: Center(
        child: Container(
          height: size.height * 0.5,
          width: size.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  'Login merchant account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: const Text(
                  'Please login to your account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.mail,
                      color: Color(0xffFF7300),
                      size: 18.0,
                    ),
                    label: Text("Email or Mobile Number"),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: isShow,
                  decoration: InputDecoration(
                      suffixIcon: IconButton( icon: isShow ? const Icon(
                        Icons.visibility_off ,
                        color: Color(0xffFF7300),
                        size: 18.0,
                      ) :const  Icon(
                        Icons.visibility ,
                        color: Color(0xffFF7300),
                        size: 18.0,
                      ), onPressed: () {  

                        isShowOrNot();
                      },),
                      label:const Text("Password"),
                      hintText: "********",
                      labelStyle:const TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0),
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>ResetPassword()));

                    },
                    child: Text("Forget Password?",
                        style: TextStyle(
                          color: const Color(0xffFF7300),
                          fontSize: 10.0,
                        ))),
              ),
              MaterialButton(
                minWidth: 160,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Color(0xffFF7300),
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>MainAll()));
                },
                child: Text("LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    )),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.account_circle_rounded,
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>CreateAccount()));

                  },
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

  bool isShow = true;
  isShowOrNot(){
    setState(() {
      isShow = !isShow;
    });
  }
}
