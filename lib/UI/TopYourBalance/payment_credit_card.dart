import '../TopYourBalance/payment_credit_card_details.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PaymentCreditCard extends StatefulWidget {
  const PaymentCreditCard({Key? key}) : super(key: key);

  @override
  State<PaymentCreditCard> createState() => _PaymentCreditCardState();
}

class _PaymentCreditCardState extends State<PaymentCreditCard> {



    int _radioValue = 0;

   void _handleRadioValueChange(value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }
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
                        padding: EdgeInsets.only(left: size.width*0.18),
                        child: Text(
                        "Payment Methods",
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                      ),)
                    ]),
              ),
            ),
            preferredSize: Size.fromHeight(40.0)),
        backgroundColor: Color(0xffDDDD00),
      ),
      body:Container(
         height: size.height,
              width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>PaymentCreditCardDetails("images/visa.png")));
              },
              child: Container(
                height: size.height*0.30,
                width: size.width*0.90,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("images/visa.png",height: 30,),
                        Radio(value: 0, groupValue: _radioValue, onChanged: _handleRadioValueChange,activeColor: Colors.blue[800],focusColor: Colors.blue,),
                      ],
                    ),
                    Text("**** **** **** 0817",style: TextStyle(color: Colors.grey[400]),),
                    Text("Expires 10-19",style: TextStyle(color: Colors.grey[400]),),

                  ],
                ),
              ),
            ),

               InkWell(
                 onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>PaymentCreditCardDetails("images/masterCard.png")));

                 },
                 child: Container(
                   margin: EdgeInsets.only(top: 20),
              height: size.height*0.30,
              width: size.width*0.90,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("images/masterCard.png",height: 30,),
                        Radio(value: 1, groupValue: _radioValue, onChanged:_handleRadioValueChange,activeColor: Colors.blue[800],focusColor: Colors.blue,),
                      ],
                    ),
                    Text("**** **** **** 2356",style: TextStyle(color: Colors.grey[400]),),
                    Text(""),

                  ],
              ),
            ),
               ),
          ],
        ),
      ),);
  }

}
