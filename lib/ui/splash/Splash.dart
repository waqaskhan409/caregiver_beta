import 'dart:async';
import 'dart:math';

//import 'package:e_commerce_beta/ui/home/home.dart';
//import 'package:e_commerce_beta/ui/login/login.dart';
import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/login/login.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Timer _timer;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    timerForSplash();
    return Scaffold(
        body:
            _splashBody()); // This trailing comma makes auto-formatting nicer for build methods.
    // ;
  }

  Widget _splashBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Spacer(),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/logo1.png",
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
              ),
            ],
          ),

        ),
        Spacer(),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
          child: Text(Constants.rightReserved),
        )

      ],
    );
  }

  int _start = 5;

  Future<void> timerForSplash() async {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      if (this.mounted) {
        setState(
          () {
            if (_start < 1) {
              print("return");
              try {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Login(),
                    ),
                    (e) => false);
                return;
              } catch (e) {
                print(e);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Login(),
                    ),
                    (e) => false);
                return;
              }
            } else {
              _start = _start - 1;
            }
          },
        );
      } else {
//          print(_start);
      }
    });
  }
}
