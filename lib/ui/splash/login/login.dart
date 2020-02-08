import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/login/registration.dart';
import 'package:flutter/material.dart';
import '../home/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _obscureText = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  IconData iconPasswordSecure = Icons.lock_open;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/login1.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.transparent,
          body: getFields(),
        ),
      ],
    );;
  }

 Widget getFields() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
            child: Image.asset(
              "assets/images/logo1.png",
              width: MediaQuery.of(context).size.width / 2.2,
              height: 200,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 10.0),
            padding: EdgeInsets.fromLTRB(20.0, 3.0, 20.0, 3.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: TextFormField(
              controller: emailController,
              validator: (text) {
                if (text.isEmpty) {
                  return "Please put the email";
                } else if (!isEmail(text)) {
                  return "Please put the email format";
                }
                return null;
              },
              style: TextStyle(
                fontSize: 20.0,
              ),
              decoration: new InputDecoration(
                border: InputBorder.none,
                  hintText: 'Email'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
            padding: EdgeInsets.fromLTRB(20.0, 3.0, 20.0, 3.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(4)),
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
                fontSize: 20.0,
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
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    Constants.FORGET_PASSWORD,
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: (){
                    _scaffoldKey.currentState
                        .showSnackBar(SnackBar(content: Text("Password sent to email")));
                  },
                ),
                Spacer(),
                Container(
                  height: 43,
                  padding:
                  EdgeInsets.fromLTRB(23.0, 0.0, 8.0, 0.0),
                  margin:
                  EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(19, 153, 159, 1.0),
                    border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5.0,
                        // has the effect of softening the shadow
                        spreadRadius: 3.0,
                        // has the effect of extending the shadow
                        offset: Offset(
                          2.0, // horizontal, move right 10
                          2.0, // vertical, move down 10
                        ),
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(
                              0.0, 0.0, 20.0, 0.0),
                          child: FlatButton(
                            onPressed: (){
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Home(),
                                  ),
                                      (e) => false);
                            },
                            color: Color.fromRGBO(19, 153, 159, 1.0),
                            child: Text(
                              Constants.LOGIN_ME,
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),

          ),
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 60.0),
            child: FlatButton(
              onPressed: (){
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SignUp(),
                    ),
                        (e) => false);
              },
              child: Text(Constants.SIGNUP, style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
              ),),
            ),
          )
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
