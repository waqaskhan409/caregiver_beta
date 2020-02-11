import 'package:carousel_slider/carousel_slider.dart';
import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/home/help.dart';
import 'package:customer_beta/ui/splash/home/latestnews.dart';
import 'package:customer_beta/ui/splash/home/locationcoverage.dart';
import 'package:customer_beta/ui/splash/home/setschedule.dart';
import 'package:customer_beta/ui/splash/home/tutorials.dart';
import 'package:customer_beta/ui/splash/home/weblink.dart';
import 'package:customer_beta/ui/splash/jobs/jobs.dart';
import 'package:customer_beta/ui/splash/notification/notification.dart';
import 'package:customer_beta/ui/splash/notification/notificationdetail.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> careTakerImages = <String>[
    "assets/images/banner.png",
    "assets/images/banner_2.png",
    "assets/images/banner_3.png",
  ];
  int _current = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Help();
                }));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                child: Image.asset(
                  "assets/images/helpchat.png",
                  width: 30,
                  height: 30,
                ),
              ))
        ],
        title: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/logo_icon.png",
              width: 45,
              height: 45,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
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
              "assets/images/home_active.png",
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

        selectedItemColor: Color.fromRGBO(19, 153, 159, 1.0),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 0) {
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
          } else if (index == 4) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Profile(),
                ),
                (e) => false);
          }
        },
//        unselectedIconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                overflow: Overflow.clip,
                children: <Widget>[
                  Container(
                    height: 193,
                    width: MediaQuery.of(context).size.width,
                    child: CarouselSlider.builder(
                        viewportFraction: 1.0,
                        onPageChanged: (index) {
                          setState(() {
                            _current = index;
                          });
                        },
                        itemCount: 3,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Image.asset(
                            careTakerImages[index],
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                          );
                        }),
                  ),
                  Positioned(
                    bottom: 1,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width / 2 - 30,
                            0.0,
                            0.0,
                            0.0),
                        height: 30.0,
                        child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) {
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 5.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == i
                                        ? Color.fromRGBO(19, 153, 159, 1.0)
                                        : Colors.white),
                              );
                            })),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (_) => SetSchedule(),
                          ));
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/set_schedule.png",
                          width: 45,
                          height: 45,
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                          child: Text(
                            "Set Schedule",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (_) => LocationCoverage(),
                          ));
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/location_coverage.png",
                          width: 45,
                          height: 45,
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                          child: Text(
                            "My Location of coverage",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (_) => LatestNews(),
                          ));
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/latest_news.png",
                          width: 45,
                          height: 45,
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                          child: Text(
                            "Latest news",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Notifications(),
                          ),
                          (e) => false);
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/notification.png",
                          width: 45,
                          height: 45,
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                          child: Text(
                            "Notification",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_){
                          return Tutorails();
                        }
                      ));
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/tutorial.png",
                          width: 45,
                          height: 45,
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                          child: Text(
                            "Tutorial",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_){
                            return WebLink();
                          }
                      ));
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/link_to_website.png",
                          width: 45,
                          height: 45,
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                          child: Text(
                            "Link to Website",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, .0, .0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, .0, .0),
                    child: Text(
                      "Upcoming Jobs",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Jobs(),
                          ),
                          (e) => false);
                    },
                    child: Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: Color.fromRGBO(19, 153, 159, 1.0)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromRGBO(19, 153, 159, 1.0),
                            size: 15,
                          ),
                        ),
                      )
                    ]))
              ],
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
                                  "RM 80.50",
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
                      Image.asset(
                        "assets/images/message.png",
                        width: MediaQuery.of(context).size.width / 2.5,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, .0, .0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Row(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, .0, .0),
                    child: Text(
                      "New Job",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Jobs(),
                          ),
                          (e) => false);
                    },
                    child: Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: Color.fromRGBO(19, 153, 159, 1.0)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromRGBO(19, 153, 159, 1.0),
                            size: 15,
                          ),
                        ),
                      )
                    ]))
              ],
            ),
            Divider(),
            GestureDetector(
                onTap: () {
                  print("asdasd");
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return JobDetail(
                      title: "Job Details",
                      name: Constants.NOTIFICATION_FILTER,
                    );
                  }));
                },
                child: Container(
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
                                    "8-11-2019",
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(19, 153, 159, 1.0)),
                                  ),
                                  Text(
                                    "8:00 AM - 12:00 PM",
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(19, 153, 159, 1.0)),
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
                                    margin:
                                        EdgeInsets.fromLTRB(.0, 10.0, .0, .0),
                                    child: Text(
                                      "RM 80.50",
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
                        margin: EdgeInsets.fromLTRB(.0, 5.0, .0, 5.0),
                        child: Divider(),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 43,
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 0.0),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
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
                                        0.0, 0.0, 20.0, 0.0),
                                    child: FlatButton(
                                      onPressed: () {
                                        showDeclineDialogue();
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
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 0.0),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
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
                                      onPressed: () {
                                        showAcceptDialogue();
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
                      )
                    ],
                  ),
                )),
            Divider(
              thickness: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Help();
                }));
              },
              child: Row(
                children: <Widget>[
                  GestureDetector(
                      child: Container(
                    margin: EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 0.0),
                    child: Image.asset(
                      "assets/images/helpchat.png",
                      width: 30,
                      height: 30,
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Help"),
                        Text(
                          "Chat with us if you need help",
                          style: TextStyle(color: Colors.black45),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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

  void showDeclineDialogue() {
    showCuperDialog<String>(
      context: context,
      child: Theme(
        data: Theme.of(context).copyWith(dialogBackgroundColor: Colors.white),
        child: CupertinoAlertDialog(
          title: Container(
//            color: Colors.white,
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            child: Text('Are you sure to decline?'),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('No', style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.pop(context, 'Disallow');
              },
            ),
            CupertinoDialogAction(
              child: const Text('Yes, decline',
                  style: TextStyle(color: Colors.green)),
              onPressed: () {
                Navigator.pop(context, 'Allow');
              },
            ),
          ],
        ),
      ),
    );
  }

  void showAcceptDialogue() {
    showCuperDialog<String>(
      context: context,
      child: Theme(
        data: Theme.of(context).copyWith(dialogBackgroundColor: Colors.white),
        child: CupertinoAlertDialog(
          title: Container(
//            color: Colors.white,
            padding: EdgeInsets.fromLTRB(.0, 20.0, .0, 20.0),
            child: Text('Are you sure to Accept?'),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text(
                'No',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.pop(context, 'Disallow');
              },
            ),
            CupertinoDialogAction(
              child: const Text(
                'Yes, Accept',
                style: TextStyle(color: Colors.green),
              ),
              onPressed: () {
                Navigator.pop(context, 'Allow');
              },
            ),
          ],
        ),
      ),
    );
  }

  void showCuperDialog<T>({BuildContext context, Widget child}) {
    showCupertinoDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then((T value) {
      if (value != null) {}
    });
  }
}
