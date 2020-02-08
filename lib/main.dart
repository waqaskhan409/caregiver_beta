//import 'package:caregiver_beta/ui/splash/Splash.dart';
//import 'package:caregiver_beta/ui/splash/login/registration.dart';
import 'package:customer_beta/ui/splash/Splash.dart';
import 'package:customer_beta/ui/splash/login/emailconfirmation.dart';
import 'package:customer_beta/ui/splash/login/registration.dart';
import 'package:flutter/material.dart';

import 'ui/splash/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caregiver App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Axiforma',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color.fromRGBO(19, 153, 159, 1.0),
//        primaryColorLight: ,
        accentColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
//      home: MyHomePage(title: 'Splash screen'),
      home: MyHomePage(),
    );
  }
}



