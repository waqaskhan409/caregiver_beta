import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/login/emailconfirmation.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  final passwordController = new TextEditingController();
  final passwordControllerConfirm = new TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _obscureText = true;
  bool _obscureTextConfirm = true;
  IconData iconPasswordSecure = Icons.lock_open;
  IconData iconPasswordSecureConfirm = Icons.lock_open;

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Spacer(flex:10,),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, .0, .0, .0),
            child: Text(Constants.EMAIL_PASSWORD
            ,style: TextStyle(
                fontSize: 17.0,
                color: Color.fromRGBO(19, 153, 159, 1.0)
              ),),

          ),
          Spacer(flex: 4,),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 10.0),
            padding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextFormField(
              controller: emailController,
              validator: (text) {
                if (text.isEmpty) {
                  return "Please put the email";
                } else if (!isEmail(text)) {
                  return "Please put the proper email";
                }
                return null;
              },
              style: TextStyle(
                fontSize: 17.0,
              ),
              decoration: new InputDecoration.collapsed(
                  hintText: 'Email'),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
            padding: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextFormField(
              obscureText: _obscureText,
              controller: passwordController,
              validator: (text) {
                if (text.isEmpty) {
                  return "Please put the passsword";
                } else if (text.length < 8) {
                  return "Your password length should greater than 8";
                }
                return null;
              },
              style: TextStyle(
                fontSize: 17.0,
              ),
              decoration:  InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                  onPressed: (){
                    if(_obscureText){
                      setState(() {
                        _obscureText = false;
                        iconPasswordSecure = Icons.lock;
                      });
                    }else{
                      setState(() {
                        _obscureText = true;
                        iconPasswordSecure = Icons.lock_open;

                      });
                    }
                    print("Print");
                  },
                  icon: Icon(iconPasswordSecure),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
            padding: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextFormField(
              obscureText: _obscureTextConfirm,
              controller: passwordControllerConfirm,
              validator: (text) {
                if (text.isEmpty) {
                  return "Please put the passsword";
                } else if (text.length < 8) {
                  return "Your password length should greater than 8";
                }
                return null;
              },
              style: TextStyle(
                fontSize: 20.0,
              ),
              decoration:  InputDecoration(
                hintText: "Confirm Password",
                suffixIcon: IconButton(
                  onPressed: (){
                    if(_obscureTextConfirm){
                      setState(() {
                        _obscureTextConfirm = false;
                        iconPasswordSecureConfirm = Icons.lock;
                      });
                    }else{
                      setState(() {
                        _obscureTextConfirm = true;
                        iconPasswordSecureConfirm = Icons.lock_open;

                      });
                    }
                    print("Print");
                  },
                  icon: Icon(iconPasswordSecureConfirm),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Spacer(flex: 10,),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, .0, 30.0, 30.0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Login(),
                        ),
                            (e) => false);
                  },
                  child: Image.asset("assets/images/back.png", width: 70.0, height: 70.0,),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => EmailConformation(),
                        ),
                            (e) => false); Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => EmailConformation(),
                        ),
                            (e) => false);
                  },
                  child: Image.asset("assets/images/next.png", width: 70.0, height: 70.0,),
                )
              ],
            ),
          ),
          Spacer()


        ],
      ),
    );
  }
  bool isEmail(String email) {
    bool emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    return emailValid;
  }
}
