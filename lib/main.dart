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
    final bgColor = const Color(0xFF00bbd3);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
        home: AnimatedSplashScreen(splash: 
        Container( 
                height: 300, 
                width: 300,
                child: Image.asset('assets/images/tech_icon_white.png')
               ),
        duration: 3500,
        backgroundColor: bgColor,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: MyHomePage(title: 'TechPDx'),
      // Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Container( 
      //           height: 175, 
      //           width: 175,
      //           child: Image.asset('assets/images/tech_icon_white.png')
      //         ),
      //         Container(
      //           child: Text ('Splash Screen', style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold)
      //           ),
      //         ),
      //       ],
      //     ),
      //   ), 
        )
    );
  }
}

