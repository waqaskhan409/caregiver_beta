import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/jobs/jobfilters.dart';
import 'package:customer_beta/ui/splash/jobs/progressreport.dart';
import 'package:customer_beta/ui/splash/notification/notificationdetail.dart';
import 'package:flutter/material.dart';
import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/jobs/jobs.dart';
import 'package:customer_beta/ui/splash/notification/notification.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return JobFilters();
                }));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                child: Image.asset(
                  "assets/images/filter_jobs.png",
                  width: 30,
                  height: 30,
                ),
              ))
        ],
        title: Row(
          children: <Widget>[
            Text(
              "Jobs",
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
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/notification_bottom.png",
                width: 30,
                height: 30,
              ),
              title: Text('Notification'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/jobs_active.png",
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
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Notifications(),
                  ),
                  (e) => false);
            } else if (index == 2) {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 43,
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, .0, 0.0),
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      border:
                          Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
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
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, .0, 0.0),
                            child: FlatButton(
                              onPressed: () {},
                              color: Color.fromRGBO(19, 153, 159, 1.0),
                              child: Text(
                                "Date & Time",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.fromLTRB(.0, .0, 10.0, .0),
                          child: Icon(
                            Icons.date_range,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 43,
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, .0, 0.0),
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      border:
                          Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
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
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, .0, 0.0),
                            child: FlatButton(
                              onPressed: () {},
                              color: Color.fromRGBO(19, 153, 159, 1.0),
                              child: Text(
                                "Full-Time Session",
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
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, .0, 0.0),
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      border:
                          Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
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
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, .0, 0.0),
                            child: FlatButton(
                              onPressed: () {},
                              color: Color.fromRGBO(19, 153, 159, 1.0),
                              child: Text(
                                "Part-Time Session",
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
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return JobDetail(
                    title: "Job Details",
                    name: Constants.SCAN_QR_FILTER,
                  );
                }));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(.0, 0.0, .0, 0.0),
                padding: EdgeInsets.fromLTRB(.0, .0, .0, 10.0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                          child: Image.asset(
                            "assets/images/avatar3.png",
                            width: 68,
                            height: 68,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Alliah Shamsudin",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15)),
                                Text(
                                  "20-10-2019",
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 153, 159, 1.0)),
                                ),
                                Text(
                                  "10:00 AM - 12:00 PM",
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 153, 159, 1.0)),
                                )
                              ],
                            )),
                        Spacer(),
                        Container(
                            margin: EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Upcoming job",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(.0, 10.0, .0, .0),
                                  child: Text(
                                    "RM 53.50",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(.0, 15.0, .0, 10.0),
                      child: Divider(),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                           showQrCode();
                          },
                          child: Image.asset(
                            "assets/images/group_403.png",
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        ),
                        GestureDetector(
                          child: Image.asset(
                            "assets/images/message.png",
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return JobDetail(
                    title: "Job Details",
                    name: Constants.JOB_FIXED_FILTER,
                  );
                }));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(.0, 10.0, .0, 0.0),
                padding: EdgeInsets.fromLTRB(.0, .0, .0, 10.0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                          child: Image.asset(
                            "assets/images/avatar1.png",
                            width: 68,
                            height: 68,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Chin Sin",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15)),
                                Text(
                                  "25-10-2019",
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 153, 159, 1.0)),
                                ),
                                Text(
                                  "08:00 AM - 12:00 PM",
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 153, 159, 1.0)),
                                )
                              ],
                            )),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Upcoming job",
                                style: TextStyle(color: Colors.blue),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, 10.0, .0, .0),
                                child: Text(
                                  "RM 80.50",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(.0, 15.0, .0, 10.0),
                      child: Divider(),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, .0, .0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/time_in_option1.png",
                                width: MediaQuery.of(context).size.width / 2.5,
                              ),
                              Positioned(
                                bottom: 2,
                                child: Text(
                                  "09:00 AM",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/time_out_option1.png",
                                width: MediaQuery.of(context).size.width / 2.5,
                              ),
                              Positioned(
                                bottom: 2,
                                child: Text(
                                  "09:00 AM",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 8.0, .0, .0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return ProgressReport();
                              }));
                            },
                            child: Image.asset(
                              "assets/images/progress_report.png",
                              width: MediaQuery.of(context).size.width / 2.5,
                            ),
                          ),
                          Image.asset(
                            "assets/images/message.png",
                            width: MediaQuery.of(context).size.width / 2.5,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return JobDetail(
                    title: "Job Details",
                    name: Constants.JOB_FIXED_FILTER,
                  );
                }));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(.0, .0, .0, 10.0),
                margin: EdgeInsets.fromLTRB(.0, 10.0, .0, 10.0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                          child: Image.asset(
                            "assets/images/avatar2.png",
                            width: 68,
                            height: 68,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Amirah Yousaf",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15)),
                                Text(
                                  "22-10-2019",
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 153, 159, 1.0)),
                                ),
                                Text(
                                  "08:00 AM - 12:00 PM",
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 153, 159, 1.0)),
                                )
                              ],
                            )),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Upcoming job",
                                style: TextStyle(color: Colors.blue),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, 10.0, .0, .0),
                                child: Text(
                                  "RM 106.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(.0, 15.0, .0, 10.0),
                      child: Divider(),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, .0, .0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/time_in_option1.png",
                                width: MediaQuery.of(context).size.width / 2.5,
                              ),
                              Positioned(
                                bottom: 2,
                                child: Text(
                                  "09:00 AM",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/time_out_option1.png",
                                width: MediaQuery.of(context).size.width / 2.5,
                              ),
                              Positioned(
                                bottom: 2,
                                child: Text(
                                  "09:00 AM",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 8.0, .0, .0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return ProgressReport();
                              }));
                            },
                            child: Image.asset(
                              "assets/images/progress_report.png",
                              width: MediaQuery.of(context).size.width / 2.5,
                            ),
                          ),
                          Image.asset(
                            "assets/images/message.png",
                            width: MediaQuery.of(context).size.width / 2.5,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showQrCode() {
    showMaterialDialog<String>(
      context: context,
      child: SimpleDialog(
        title: Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 3,
          child: QrImage(
            data: "1234567890",
          ),
        ),
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
              child: Text(
                "Show this QR to Customer to confirm their service request.",
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>((T value) {
      // The value passed to Navigator.pop() or null.
    });
  }
}
