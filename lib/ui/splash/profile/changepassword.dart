import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final currentPassordController = TextEditingController();
  final newpasswordController = new TextEditingController();
  final confirmpasswordController = new TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _obscureNewText = true;
  bool _obscureTCurrentext = true;
  bool _obscureTextConfirm = true;

  IconData iconCurrentPasswordSecure = Icons.lock_open;
  IconData iconNewPasswordSecure = Icons.lock_open;
  IconData iconPasswordSecureConfirm = Icons.lock_open;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Text(
              "Change Password",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Spacer(
            flex: 6,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 10.0),
            padding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextFormField(
              controller: currentPassordController,
              obscureText: _obscureTCurrentext,
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
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Current Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (_obscureTCurrentext) {
                        setState(() {
                          _obscureTCurrentext = false;
                          iconCurrentPasswordSecure = Icons.lock;
                        });
                      } else {
                        setState(() {
                          _obscureTCurrentext = true;
                          iconCurrentPasswordSecure = Icons.lock_open;
                        });
                      }
                      print("Print");
                    },
                    icon: Icon(iconCurrentPasswordSecure),
                  )),
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
              obscureText: _obscureNewText,
              controller: newpasswordController,
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
              decoration: InputDecoration(
                hintText: "New Password",
                suffixIcon: IconButton(
                  onPressed: () {
                    if (_obscureNewText) {
                      setState(() {
                        _obscureNewText = false;
                        iconNewPasswordSecure = Icons.lock;
                      });
                    } else {
                      setState(() {
                        _obscureNewText = true;
                        iconNewPasswordSecure = Icons.lock_open;
                      });
                    }
                    print("Print");
                  },
                  icon: Icon(iconNewPasswordSecure),
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
              controller: confirmpasswordController,
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
              decoration: InputDecoration(
                hintText: "Confirm Password",
                suffixIcon: IconButton(
                  onPressed: () {
                    if (_obscureTextConfirm) {
                      setState(() {
                        _obscureTextConfirm = false;
                        iconPasswordSecureConfirm = Icons.lock;
                      });
                    } else {
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
          Spacer(flex: 20,),
          GestureDetector(
            onTap: () {
//                    showStates();

//              showTimeInPickerDialogue();
              Navigator.pop(context);
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(19, 153, 159, 1.0),
                  border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                  borderRadius:
                  BorderRadius.all(Radius.circular(40)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        )
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
