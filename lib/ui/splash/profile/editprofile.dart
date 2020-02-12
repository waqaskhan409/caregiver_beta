import 'dart:io';

import 'package:customer_beta/ui/splash/profile/changepassword.dart';
import 'package:customer_beta/ui/splash/profile/editcertificates.dart';
import 'package:customer_beta/ui/splash/profile/editicpassportvisa.dart';
import 'package:customer_beta/ui/splash/profile/editpersonalinformation.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<File> certificates = List();

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
              "Edit profile",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_){
                  return EditPersonalInformation();
                }
              ));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 25.0, .0, 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Edit personel information",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(.0, .0, 20.0, .0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (_){
                    return EditIcPassportVisa();
                  }
              ));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Edit IC/ Passpord and Visa",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(.0, .0, 20.0, .0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (_){
                    return EditCertificates();
                  }
              ));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Edit Certificates",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(.0, .0, 20.0, .0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (_){
                    return ChangePassword();
                  }
              ));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Change Password",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(.0, .0, 20.0, .0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                  )
                ],
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
