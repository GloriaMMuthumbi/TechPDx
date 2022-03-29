import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tech_pdx/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final bgColor = const Color(0xFF0B4F6C);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'RobotoSlab'),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 3000), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => WelcomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Color(0xff0b4f6c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/tech_icon_white.png", height: 125,),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation <Color>(Colors.white),
            )
          ],
        ),
      ),
    );
    return scaffold;
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images/welcome_new.png", height: 650,),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  ),
                primary: Color(0xff0b4f6c),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color(0xff0b4f6c)
                    )
                  )
                ),
                onPressed: () {
                  _navigateToNextScreen(context);
              },
              child: Text(
                "GET STARTED",
                style: TextStyle(fontFamily: 'RobotoSlab'),),
              ), 
        ),
        ],
      )
    );
  }
}

void _navigateToNextScreen(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
}


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Screen')),
      body: Center(
        child: Text(
          'This is a new screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}