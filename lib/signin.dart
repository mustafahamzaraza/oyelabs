// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Signinscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const padding = 25.0;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final TextEditingController controller = TextEditingController();
    String initialCountry = 'US';
    PhoneNumber number = PhoneNumber(isoCode: 'US');

    return MaterialApp(
      title: 'Button Demo',
      home: Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 0xF0, 0xF0, 0xF0),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[



                  Padding(padding: EdgeInsets.only(top: 70.0,right: 30.0,left: 30.0)
                    ,
                  child: Text('Welcome Back!',style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),),
                  ),


                  Padding(padding: EdgeInsets.only(top: 100.0,right: 60.0,left: 60.0)
                  ,
                  child:    FacebookSignInButton(onPressed: () {}),
                  ),

                  Padding(padding: EdgeInsets.all(20.0)
                    ,
                    child:    GoogleSignInButton(onPressed: () {}),
                  ),


                  Padding(padding: EdgeInsets.only(top: 30.0,left: 40.0,right: 40.0)
                    ,child: Container(child: Text('OR CONTINUE WITH PHONE NUMBER',style: TextStyle(fontSize: 13,color: Colors.grey),),),
                  ),



Padding(padding: EdgeInsets.all(20.0),
child:   Container(
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
),),


Padding(padding: EdgeInsets.only(top: 20.0,right: 40.0,bottom: 20.0,left: 40.0),
child: Container(
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
        child: Text("LOG IN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
    ),

),




                  Padding(padding: EdgeInsets.all(10.0),
                  child: Text('Forgot Password?',style: TextStyle(color: Colors.black),),
                  ),

                  Padding(padding: EdgeInsets.all(10.0),
                    child: Container(
                        child: Row(
                          children: <Widget>[
                            Text('ALREADY HAVE ACCOUNT?',style: TextStyle(color: Colors.grey),),
                            FlatButton(
                              textColor: Colors.blue,
                              child: Text(
                                'SIGN UP',
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
            ],
          ),
        ),
      ),
    );
  }
}