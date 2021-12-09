import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'navig.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlueAccent,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                HomePage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //  child:FlutterLogo(size:MediaQuery.of(context).size.height)
      child:   new Image.asset(
        'assets/images/splashimg.jpg', width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,),
    );
  }
}