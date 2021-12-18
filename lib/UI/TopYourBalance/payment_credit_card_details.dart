import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../main_all.dart';

class PaymentCreditCardDetails extends StatefulWidget {
  final image;
  PaymentCreditCardDetails(this.image);

  @override
  State<PaymentCreditCardDetails> createState() =>
      _PaymentCreditCardDetailsState();
}

class _PaymentCreditCardDetailsState extends State<PaymentCreditCardDetails> {


      Object? month=1;   
       var year = [2020,2021,2022,2023,2024,];
    var yearVal;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffDDDD00),
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
                        padding: EdgeInsets.only(left: size.width * 0.18),
                        child: Text(
                          "Payment Methods",
                          style:
                              TextStyle(color: Colors.black, fontSize: 18.sp),
                        ),
                      )
                    ]),
              ),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: Color(0xffDDDD00),
      ),
     body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(size.width * 0.05),
          height: size.height * 0.70,
          width: size.width * 0.90,
          color: Colors.white,
          // padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey[100],
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 30),

                // width: size.width*0.90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      "${widget.image}",
                      // "images/thick.png",
                      height: 30,
                    ),
                    Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.blue.shade100)),
                        child: Icon(
                          Icons.check,
                          color: Colors.blue[900],
                          size: 20,
                        )),
                  ],
                ),
              ),

              // Scan Button
              Container(
                height: 50.0,
                width: size.width * 0.80,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue.shade900,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Scan Card",
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Text("or"),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: TextField(
                  cursorColor: Color(0xffDDDD00),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffDDDD00), width: 1.0),
                    ),
                    hintText: "CARD NUMBER",
                  ),
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: TextField(
                  cursorColor: Color(0xffDDDD00),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffDDDD00), width: 1.0),
                    ),
                    hintText: "CARDHOLDER'S NAME",
                  ),
                ),
              ),

              // Container(
              //   width: size.width * 0.80,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //           SizedBox(
              //     width: MediaQuery.of(context).size.width *0.20,
              //     child:  TextField(
              //       cursorColor: Color(0xffDDDD00),
              //       textAlign: TextAlign.center,
              //       decoration: InputDecoration(
              //         enabledBorder: OutlineInputBorder(
              //           borderSide:
              //               BorderSide(color: Colors.grey.shade400, width: 1.0),
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderSide:
              //               BorderSide(color: Color(0xffDDDD00), width: 1.0),
              //         ),
              //         hintText: "MM",
              //       ),
              //     ),
              //   ),
              Container(
                width: size.width * 0.80,
                decoration: BoxDecoration(
                 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: DropdownButtonHideUnderline(
                        child:Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
                          child: DropdownButton(
                          // ignore: unnecessary_brace_in_string_interps
                          // value:month !=null?Text("MM"):Text("${month}",style: TextStyle(color: Colors.red),),
                          // value: month=,
                          iconSize: 24.sp,
                          onChanged:(var val){
                            print(val);
                             setState(() {
                               month= val;
                             });
                          },
                            items: List.generate(12, (index) {
                          return DropdownMenuItem<int>(

                            child: Text("${index+1}"),
                            value: index+1,
                          );
                        }),),
                      ),),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
                          child:DropdownButtonHideUnderline(
                        child: DropdownButton(

                          // value:yearVal ==null?Text("MM"):Text("$month",style: TextStyle(color: Colors.red),),
                          iconSize: 24.sp,
                          onChanged:(var val){
                            print(val);
                             setState(() {
                               month= val;
                             });
                          },
                            items:year.map<DropdownMenuItem<int>>((e) {
                              return DropdownMenuItem(
                                child: Text("$e"),
                                value: e,
                              );
                            }).toList(),
                      ),
                    ),),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: TextField(
                        cursorColor: Color(0xffDDDD00),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffDDDD00), width: 1.0),
                          ),
                          hintText: "CVV",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.blue.shade900,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text("Save Credit card Information"),
                  ],
                ),
              ),

              Container(
                height: 50.0,
                width: size.width * 0.80,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>MainAll()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      border: Border.all(
                        color: Colors.blue.shade900,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Next Step",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50.0,
                width: size.width * 0.80,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue.shade900,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Back",
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  bool isChecked = false;
}
