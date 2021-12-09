// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutterapp/otpscreen.dart';
import 'package:flutterapp/signin.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg.jpg'),
                          fit: BoxFit.fill
                      )
                  ),

                ),

                Container(child: Text('Your Home services Expert',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),


                Padding(padding: EdgeInsets.only(top: 10.0,left: 30.0,right: 30.0)
                ,child: Container(child: Text('Continue with Phone Number',style: TextStyle(fontSize: 15,color: Colors.grey),),),
                ),





                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(211, 211, 211, 1),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  InternationalPhoneNumberInput(
                                    onInputChanged: (PhoneNumber number) {
                                      print(number.phoneNumber);
                                    },
                                    onInputValidated: (bool value) {
                                      print(value);
                                    },
                                    selectorConfig: SelectorConfig(
                                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                                    ),
                                    ignoreBlank: false,
                                    autoValidateMode: AutovalidateMode.disabled,
                                    selectorTextStyle: TextStyle(color: Colors.black),
                                    initialValue: number,
                                    textFieldController: controller,
                                    formatInput: false,
                                    keyboardType:
                                    TextInputType.numberWithOptions(signed: true, decimal: true),
                                    inputBorder: OutlineInputBorder(),
                                    onSaved: (PhoneNumber number) {
                                      print('On Saved: $number');
                                    },
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                       Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                                colors: [
                               Color.fromRGBO(0, 0, 0,1),
                                  Color.fromRGBO(0, 0, 0, 1),

                                ]
                            )
                        ),
                        child: Center(
                          child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 20,),

                      InkWell(child: Text("VIEW OTHER OPTION", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1),fontWeight: FontWeight.bold),

                      ),
                   onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()),);
                   },

              ),

Padding(padding: EdgeInsets.only(top: 20.0)

,child:  Container(
      child: Row(
        children: <Widget>[
          Text('ALREADY HAVE ACCOUNT?',style: TextStyle(color: Colors.grey),),
          FlatButton(
            textColor: Colors.blue,
            child: Text(
              'LOGIN',
              style: TextStyle(fontSize: 15),
            ),
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signinscreen()),);
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
),





                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}