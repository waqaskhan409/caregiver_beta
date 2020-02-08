import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:flutter/material.dart';
import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/jobs/jobs.dart';
import 'package:customer_beta/ui/splash/notification/notification.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Notification",
                style: TextStyle(
                    color: Color.fromRGBO(19, 153, 159, 1.0), fontSize: 20),
              ),
            ),
            Spacer(),
            Image.asset(
              "assets/images/logo_icon.png",
              width: 45,
              height: 45,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              child: Image.asset(
                "assets/images/logo_text.png",
                width: 100,
                height: 100,
              ),
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
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/notification_active.png",
                width: 30,
                height: 30,
              ),
              title: Text('Notification'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/jobs.png",
                width: 30,
                height: 30,
              ),
              title: Text('Jobs'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/chat.png",
                width: 30,
                height: 30,
              ),
              title: Text('Message'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/account.png",
                width: 30,
                height: 30,
              ),
              title: Text('Account'),
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
            } else if (index == 4) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Profile(),
                  ),
                  (e) => false);
            }
          }
//        unselectedIconTheme: IconThemeData(color: Colors.black),
          ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
                      child: Image.asset(
                        "assets/images/avatar3.png",
                        width: 68,
                        height: 68,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: RichText(
                                text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: "Aliah Shamsudin",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15)),
                                      TextSpan(text: " send request for Caregiver Service on 21-10-2019",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15))
                                    ]
                                ),
                              )
                            ),
                          ],
                        )),
                    Spacer(),
                    Container(
                        margin: EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "1m",
                              style: TextStyle(color: Colors.black45, fontSize: 10),
                            ),
                          ],
                        )),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(.0, 5.0, .0, 5.0),
                  child: Divider(),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 43,
                      padding:
                      EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 0.0),
                      margin:
                      EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.red),
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
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
                                  0.0, 0.0, 20.0, .0),
                              child: FlatButton(
                                onPressed: (){

                                },
                                color: Colors.red,
                                child: Text(
                                  "Decline",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 43,
                      padding:
                      EdgeInsets.fromLTRB(30.0, 0.0,15.0, 0.0),
                      margin:
                      EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
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

                                },
                                color: Colors.green,
                                child: Text(
                                  "Accept",
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
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(.0, 10.0, .0, 0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 10.0),
                  child: Image.asset(
                    "assets/images/avatar2.png",
                    width: 68,
                    height: 68,
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/1.8,
                          child: RichText(
                            text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(text: "Amirah Yousaf",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15)),
                                  TextSpan(text: " has validate your Time in - 08:00 AM and Timeout - 12:00 PM (4 hours) on 20-10-2019",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15))
                                ]
                            ),
                          )
                        ),
                      ],
                    )),
                Spacer(),
                Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 15.0, 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "1 week",
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        ),
                      ],
                    )),
              ],
            ),
          ), Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(.0, 10.0, .0, 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 10.0),
                  child: Image.asset(
                    "assets/images/avatar2.png",
                    width: 68,
                    height: 68,
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/1.8,
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[

                                TextSpan(text: "Your Appointment for",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 15)),
                                TextSpan(text: " Amirah Yousaf ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15)),
                                TextSpan(text: "will start in 1 hour.",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 15))
                              ]
                            ),
                          )
                        ),
                      ],
                    )),
                Spacer(),
                Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 15.0, 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "1 week",
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        ),
                      ],
                    )),
              ],
            ),
          )

        ],
      ),
    );
  }
}
