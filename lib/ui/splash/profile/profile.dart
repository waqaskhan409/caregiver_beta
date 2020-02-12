import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/home/help.dart';
import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/home/locationcoverage.dart';
import 'package:customer_beta/ui/splash/home/setschedule.dart';
import 'package:customer_beta/ui/splash/login/login.dart';
import 'package:customer_beta/ui/splash/profile/bankaccount.dart';
import 'package:customer_beta/ui/splash/profile/editprofile.dart';
import 'package:flutter/material.dart';
import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/jobs/jobs.dart';
import 'package:customer_beta/ui/splash/notification/notification.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  int _selectedIndex = 4;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _drawerKey,
        backgroundColor: Color.fromRGBO(245, 245, 245, 1.0),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Text(
                Constants.MY_ACCOUNT,
                style: TextStyle(
                    color: Color.fromRGBO(19, 153, 159, 1.0), fontSize: 20),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home.png",
                  width: 30,
                  height: 30,
                ),
                title: Text(Constants.home),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/notification_bottom.png",
                  width: 30,
                  height: 30,
                ),
                title: Text(Constants.notification),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/jobs.png",
                  width: 30,
                  height: 30,
                ),
                title: Text(Constants.jobs),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/chat.png",
                  width: 30,
                  height: 30,
                ),
                title: Text(Constants.chat),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/account_active.png",
                  width: 30,
                  height: 30,
                ),
                title: Text(Constants.account),
              )
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color.fromRGBO(19, 153, 159, 1.0),
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            onTap: (index) {
              if (index == 0) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Home(),
                    ),
                    (e) => false);
              } else if (index == 1) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Notifications(),
                    ),
                    (e) => false);
              } else if (index == 2) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Jobs(),
                    ),
                    (e) => false);
              } else if (index == 3) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Chat(),
                    ),
                    (e) => false);
              } else if (index == 4) {}
            }
//        unselectedIconTheme: IconThemeData(color: Colors.black),
            ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width / 2.5,
                  color: Color.fromRGBO(19, 153, 159, 1.0),
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        "assets/images/avatar1.png",
                        width: 120,
                        height: 120,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 25.0, .0, 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "Sharifah",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              "Email@email.com",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "+098765431",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 20,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (_){
                              return EditProfile();
                            }
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(.0, .0, .0, 70.0),
                          child: Image.asset(
                            "assets/images/1_edit_profile.png",
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 3,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                  child: Text(
                    "My Account",
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (_){
                                return SetSchedule();
                              }
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/my_schedule.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                                child: Text(
                                  "My Schedule",
                                  style: TextStyle(color: Colors.black54),
                                ),
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
                                return BankAccount();
                              }
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/bank_account.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                                child: Text(
                                  "My Bank Account",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      GestureDetector(
                        onTap: (){
                          _drawerKey.currentState
                              .showSnackBar(SnackBar(content: Text('Learn more is in the process')));

                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/learn_more.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                                child: Text(
                                  "Learn More",
                                  style: TextStyle(color: Colors.black54),
                                ),
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
                                  return LocationCoverage();
                                }
                            ));
                          },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/location_coverage_p.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                                child: Text(
                                  "My location of coverage",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, .0, .0, .0),
                                child: Text(
                                  "Current Location",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              Spacer(),
                              Switch(
                                value: false,
                                onChanged: (bool) {},
                                activeColor: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                  child: Text(
                    "FAQs",
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (_){
                                return Help();
                              }
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/help.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                                child: Text(
                                  "Help",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/policy.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                                child: Text(
                                  "Term Of Use",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/policy.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                                child: Text(
                                  "Privacy Policy",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(color: Colors.white,
                    margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                    child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (_){
                              return Login();
                            }
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/logout.png",
                              width: 25,
                              height: 25,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                              child: Text(
                                "logout",
                                style: TextStyle(color: Colors.black54),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}
