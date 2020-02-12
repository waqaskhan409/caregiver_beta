import 'dart:async';

import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/chat/individualchat.dart';
import 'package:customer_beta/ui/splash/jobs/progressreport.dart';
import 'package:customer_beta/ui/splash/jobs/viewprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';

class JobDetail extends StatefulWidget {
  JobDetail({Key key, this.title, this.name}) : super(key: key);
  String title;
  String name;

  @override
  _JobDetailState createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
              "Job Detail",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: classifyBetweenScanQrAndJobOffer(),
    );
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

  Widget classifyBetweenScanQrAndJobOffer() {
    String name = widget.name;
    if (name == Constants.NOTIFICATION_FILTER) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Text("Aliah Shamsudin",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18)),
                                    Spacer(),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(.0, .0, 0.0, .0),
                                      child: Text("28-10-2019",
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Text("Upcoming Jobs",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15)),
                                    Spacer(),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(.0, 0.0, 0.0, .0),
                                      child: Text("110.0 RM",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      color: Color.fromRGBO(19, 153, 159, 1.0),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                      child: Text("2 hours service",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  19, 153, 159, 1.0),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(.0, 30.0, .0, 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 43,
                          padding: EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 0.0),
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
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
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 20.0, .0),
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
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
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
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
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
                    ),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                    child: Text("Person to be cared",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: Image.asset(
                            "assets/images/avatar3.png",
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.4,
                              margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                    child: Text("Amber wong",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.5,
                                        margin: EdgeInsets.fromLTRB(
                                            10.0, .0, .0, .0),
                                        child: Text(
                                          "Mother",
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  19, 153, 159, 1.0)),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (_){
                                                return ViewProfile();
                                              }
                                          ));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              18.0, 5.0, .0, 5.0),
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color:
                                            Color.fromRGBO(19, 153, 159, 1.0),
                                            border: Border.all(
                                                color: Color.fromRGBO(
                                                    19, 153, 159, 1.0)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "View Profile",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                    child: Text("Selected service",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text("Elderly Home Care"),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text("Wound Care - Wound Dressing"),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text(
                                "Stoma Care - Wound Dressing, changing of stoma"),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                    child: Text("Special Precuation",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Text(Constants.LOREM_IPSUM,
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                    child: Text("Recipent's Address",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Text("aasdasdsdawqewe",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, 30.0),
                      width: MediaQuery.of(context).size.width - 100,
                      padding: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
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
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    } else if (name == Constants.SCAN_QR_FILTER) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Text("Aliah Shamsudin",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18)),
                                    Spacer(),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(.0, .0, 0.0, .0),
                                      child: Text("28-10-2019",
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Text("Upcoming Jobs",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15)),
                                    Spacer(),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(.0, 0.0, 0.0, .0),
                                      child: Text("110.0 RM",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      color: Color.fromRGBO(19, 153, 159, 1.0),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                      child: Text("2 hours service",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  19, 153, 159, 1.0),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(.0, 30.0, .0, 10.0),
                    child: Row(
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => IndividualChat(),
                                  ));
                            },
                            child: Image.asset(
                              "assets/images/message.png",
                              width: MediaQuery.of(context).size.width / 2.5,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                    child: Text("Person to be cared",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: Image.asset(
                            "assets/images/avatar3.png",
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.4,
                              margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                    child: Text("Amber wong",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.5,
                                        margin: EdgeInsets.fromLTRB(
                                            10.0, .0, .0, .0),
                                        child: Text(
                                          "Mother",
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  19, 153, 159, 1.0)),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (_){
                                                return ViewProfile();
                                              }
                                          ));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              18.0, 5.0, .0, 5.0),
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color:
                                            Color.fromRGBO(19, 153, 159, 1.0),
                                            border: Border.all(
                                                color: Color.fromRGBO(
                                                    19, 153, 159, 1.0)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Text(
                                            "View Profile",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                    child: Text("Selected service",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text("Elderly Home Care"),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text("Wound Care - Wound Dressing"),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text(
                                "Stoma Care - Wound Dressing, changing of stoma"),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                    child: Text("Special Precuation",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Text(Constants.LOREM_IPSUM,
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                    child: Text("Recipent's Address",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Text("aasdasdsdawqewe",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, 30.0),
                      width: MediaQuery.of(context).size.width - 100,
                      padding: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
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
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    } else if (name == Constants.JOB_FIXED_FILTER) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Text("Aliah Shamsudin",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18)),
                                    Spacer(),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(.0, .0, 0.0, .0),
                                      child: Text("28-10-2019",
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Text("Upcoming Jobs",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15)),
                                    Spacer(),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(.0, 0.0, 0.0, .0),
                                      child: Text("110.0 RM",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(.0, 20.0, .0, 20.0),
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      color: Color.fromRGBO(19, 153, 159, 1.0),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                      child: Text("2 hours service",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  19, 153, 159, 1.0),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, .0, .0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            _scaffoldKey.currentState
                                .showSnackBar(SnackBar(content: Text("Timer has been set")));
                          },
                          child: Stack(
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
                        ),
                        GestureDetector(
                          onTap: (){
                            _scaffoldKey.currentState
                                .showSnackBar(SnackBar(content: Text("Timer has been removed")));
                          },
                          child: Stack(
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
                          ),
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

                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => IndividualChat(),
                                ));
                          },
                child:Image.asset(
                        "assets/images/message.png",
          width: MediaQuery.of(context).size.width / 2.5,
        )
            )
                      ],
                    ),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                    child: Text("Person to be cared",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: Image.asset(
                            "assets/images/avatar3.png",
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.4,
                              margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                    child: Text("Amber wong",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.5,
                                        margin: EdgeInsets.fromLTRB(
                                            10.0, .0, .0, .0),
                                        child: Text(
                                          "Mother",
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  19, 153, 159, 1.0)),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (_){
                                                return ViewProfile();
                                              }
                                          ));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              18.0, 5.0, .0, 5.0),
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color:
                                            Color.fromRGBO(19, 153, 159, 1.0),
                                            border: Border.all(
                                                color: Color.fromRGBO(
                                                    19, 153, 159, 1.0)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Text(
                                            "View Profile",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 10.0),
                    child: Text("Selected service",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text("Elderly Home Care"),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text("Wound Care - Wound Dressing"),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fiber_manual_record,
                            color: Colors.black45,
                            size: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                            child: Text(
                                "Stoma Care - Wound Dressing, changing of stoma"),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                    child: Text("Special Precuation",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Text(Constants.LOREM_IPSUM,
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ),
                  Container(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                    child: Text("Recipent's Address",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                    child: Text("aasdasdsdawqewe",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, 30.0),
                      width: MediaQuery.of(context).size.width - 100,
                      padding: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
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
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
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
