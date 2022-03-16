import 'package:flutter/material.dart';
import 'package:tech_pdx/main.dart';

import 'home.dart';

class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    //_navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(
      Duration(milliseconds: 3000), () {}
      );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'TechPDx')));
  }

  @override
  Widget build(BuildContext context){
    final bgColor = const Color(0xFF00bbd3);
    return Scaffold(
      backgroundColor: bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container( 
                height: 175, 
                width: 175,
                child: Image.asset('assets/images/tech_icon_white.png')
              ),
              Container(
                child: Text ('Splash Screen', style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
        ),
    );
  }
}