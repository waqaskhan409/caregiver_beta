
import 'dart:async';

import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

class EmailConformation extends StatefulWidget {
  @override
  _EmailConformationState createState() => _EmailConformationState();
}

class _EmailConformationState extends State<EmailConformation> {
  ProgressDialog pr;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Timer _timer;
  int _start = 59;
  bool _isButtonDisable = true;


  TextEditingController firstValue = TextEditingController();
  TextEditingController secondValue = TextEditingController();
  TextEditingController thirdValue = TextEditingController();
  TextEditingController fourthValue = TextEditingController();
  TextEditingController fifthValue = TextEditingController();
  TextEditingController sixValue = TextEditingController();
  var firstNode = new FocusNode();
  var secondNode = new FocusNode();
  var thirdNode = new FocusNode();
  var fourthNode = new FocusNode();
  var fifthNode = new FocusNode();
  var sixNode = new FocusNode();

@override
  void initState() {
  pr = new ProgressDialog(context);
  pr.style(message: "Verifying Code ...");
  pr = new ProgressDialog(context,
      type: ProgressDialogType.Normal, isDismissible: true, showLogs: false);

  // TODO: implement initState
  WidgetsBinding.instance.addPostFrameCallback((_){
    FocusScope.of(context).requestFocus(firstNode);
  });
  timerForSplash();
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 100.0, .0, .0),
            child: Text(Constants.EMAIL_CONFIRMATION
              ,style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(19, 153, 159, 1.0)
              ),),

          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 10.0, .0, .0),
            child: Text(Constants.EMAIL_CONFIRMATION_TEXT
              ,style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black
              ),),

          ),
          Row(
            children: <Widget>[
              Container(
                width: 40.0,
                height: 50.0,
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius:
                  BorderRadius.all(Radius.circular(4)),
                ),
                child: Form(
                  child: TextField(
                    focusNode: firstNode,
                    controller: firstValue,
                    onChanged: (text){
                      print(text);
                      FocusScope.of(context).requestFocus(secondNode);

                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 40.0,
                height: 50.0,
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius:
                  BorderRadius.all(Radius.circular(4)),
                ),
                child: Form(
                  child: TextFormField(
                    focusNode: secondNode,
                    controller: secondValue,
                    onChanged: (text){
                      print(text);
                      FocusScope.of(context).requestFocus(thirdNode);

                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 40.0,
                height: 50.0,
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius:
                  BorderRadius.all(Radius.circular(4)),
                ),
                child: Form(
                  child: TextFormField(
                    focusNode: thirdNode,
                    controller: thirdValue,
                    onChanged: (text){
                      print(text);
                      FocusScope.of(context).requestFocus(fourthNode);

                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 40.0,
                height: 50.0,
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius:
                  BorderRadius.all(Radius.circular(4)),
                ),
                child: Form(
                  child: TextFormField(
                    focusNode: fourthNode,
                    controller: fourthValue,
                    onChanged: (text){
                      print(text);
                      FocusScope.of(context).requestFocus(fifthNode);

                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 40.0,
                height: 50.0,
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius:
                  BorderRadius.all(Radius.circular(4)),
                ),
                child: Form(
                  child: TextFormField(
                    focusNode: fifthNode,
                    controller: fifthValue,
                    onChanged: (text){
                      print(text);
                      FocusScope.of(context).requestFocus(sixNode);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 40.0,
                height: 50.0,
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius:
                  BorderRadius.all(Radius.circular(4)),
                ),
                child: Form(
                  child: TextFormField(
                    focusNode: sixNode,
                    controller: sixValue,
                    onChanged: (text){
                      pr.show();
                      String value1, value2, value3, value4, value5, value6;
                      value1 = firstValue.text;
                      value2 = secondValue.text;
                      value3 = thirdValue.text;
                      value4 = fourthValue.text;
                      value5 = fifthValue.text;
                      value6 = sixValue.text;
                      if(value1 != "" || value2 != "" || value3 != "" || value4 != "" || value5 != "" || value6 != "" ){
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Home(),
                            ),
                                (e) => false);
                        pr.dismiss();

                      }else{
                        _scaffoldKey.currentState
                            .showSnackBar(SnackBar(content: Text("Please put the number")));
                      }


                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Spacer(flex: 4,),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),

                child: Text("0:" + _start.toString(), style: TextStyle(color: Colors.red),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                child: FlatButton(

                  onPressed: _isButtonDisable ? null : (){
                    _scaffoldKey.currentState
                        .showSnackBar(SnackBar(content: Text("Email sent")));
                    setState(() {
                      _isButtonDisable = true;
                      _start = 59;
                    });
                  },
                  child: Text("Send Again", style: TextStyle(color: Colors.black38),),
                ),
              ), Spacer()
            ],
          )
        ],
      ),
    );
  }
  Future<void> timerForSplash() async {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      if (this.mounted) {
        setState(
              () {
            if (_start < 1) {
            _isButtonDisable = false;

            } else {
              _start = _start - 1;
              print(_start);
            }
          },
        );
      } else {
//          print(_start);
      }
    });
  }
}
