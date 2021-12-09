// @dart=2.9
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';


// ignore: must_be_immutable
class OtpScreen extends StatefulWidget {
  bool _isInit = true;
  var _contact = '';

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  @override
  void dispose() {
    super.dispose();
  }

  //build method for UI
  @override
  Widget build(BuildContext context) {
    //Getting screen height width
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
backgroundColor: Colors.white,
      body: Center(

        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: screenHeight * 0.05,
                // ),
                // Image.asset(
                //   'assets/images/image2.jpg',
                //   width: screenWidth * 0.7,
                //   fit: BoxFit.contain,
                // ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Image.asset(
                  'assets/images/image2.jpg',
                  height: screenHeight * 0.3,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const Text(
                  'OTP Verification',
                  style: TextStyle(fontSize: 28, color: Colors.black,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  'Enter the OTP sent to +1 9879878975',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: screenWidth > 600 ? screenWidth * 0.2 : 16),
                  padding: const EdgeInsets.all(16.0),
                  // decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     // ignore: prefer_const_literals_to_create_immutables
                  //     // boxShadow: [
                  //     //   const BoxShadow(
                  //     //     color: Colors.grey,
                  //     //     offset: Offset(0.0, 1.0), //(x,y)
                  //     //     blurRadius: 6.0,
                  //     //   ),
                  //     ],
                 //     borderRadius: BorderRadius.circular(16.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: screenWidth * 0.025),
                        child: PinEntryTextField(
                          fields: 4,
                          onSubmit: (text) {
//                            smsOTP = text as String;
                          },
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),

                      Container(
                          child: Row(
                            children: <Widget>[
                              Text('OTP not received?'),
                              FlatButton(
                                textColor: Colors.blue,
                                child: Text(
                                  'RESEND OTP',
                                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  //signup screen
                                },
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          )),

                      GestureDetector(
                        onTap: () {
//                          verifyOtp();
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(0,0,0, 1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'VERIFY & PROCEED',
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context, String message) {
    // set up the AlertDialog
    final CupertinoAlertDialog alert = CupertinoAlertDialog(
      title: const Text('Error'),
      content: Text('\n$message'),
      actions: <Widget>[
        CupertinoDialogAction(
          isDefaultAction: true,
          child: const Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}