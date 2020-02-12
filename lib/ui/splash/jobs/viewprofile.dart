import 'dart:async';

import 'package:customer_beta/constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ViewProfile extends StatefulWidget {
  @override
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> with SingleTickerProviderStateMixin{

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Details'),
    Tab(text: 'Needs'),
  ];


  TabController _tabController;

  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(vsync: this, length: myTabs.length);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color.fromRGBO(19, 153, 159, 1.0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
              child: Text(
                "Recipient Profile",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    body: DefaultTabController(
      length: myTabs.length,
      child: new Column(
        children: <Widget>[
          new Container(
            constraints: BoxConstraints(maxHeight: 150.0),
            child: new Material(
              color: Colors.white,
              child: new TabBar(
                labelColor: Color.fromRGBO(19, 153, 159, 1.0),
                indicatorColor: Color.fromRGBO(19, 153, 159, 1.0),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                      width: 5.0, color: Color.fromRGBO(19, 153, 159, 1.0)),
                ),
                tabs: [myTabs[0], myTabs[1]],
              ),
            ),
          ),
          new Expanded(
            child: new TabBarView(
              children: [setScheduleWidgets(), modifyScheduleWidgets()],
            ),
          ),
        ],
      ),
    ),
    );
  }

  modifyScheduleWidgets() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: Text("Madical History",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontSize: 15)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Text(Constants.LOREM_IPSUM,
                style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    fontSize: 12)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 30.0, .0, 10.0),
            child: Text("Medication",
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
                    child: Text("Madication one"),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
            child: Text("Special Request",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontSize: 15)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Text(Constants.LOREM_IPSUM,
                style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    fontSize: 12)),
          )

        ],
      ),
    );

  }

  setScheduleWidgets() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Image.asset("assets/images/avatar1.png"),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Column(
              children: <Widget>[
                Text(
                  "Name",
                  style: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  "Amber Chua",
                  style: TextStyle(
                      color: Colors.black54,

                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Column(
              children: <Widget>[
                Text(
                  "Gender",
                  style: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  "Female",
                  style: TextStyle(
                      color: Colors.black54,

                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Column(
              children: <Widget>[
                Text(
                  "Race",
                  style: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  "Chinese",
                  style: TextStyle(
                      color: Colors.black54,

                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Column(
              children: <Widget>[
                Text(
                  "DoB",
                  style: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  "13-08-1949",
                  style: TextStyle(
                      color: Colors.black54,

                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Column(
              children: <Widget>[
                Text(
                  "Relationship",
                  style: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  "Mother",
                  style: TextStyle(
                      color: Colors.black54,

                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Column(
              children: <Widget>[
                Text(
                  "Height (CM)",
                  style: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  "168",
                  style: TextStyle(
                      color: Colors.black54,

                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Column(
              children: <Widget>[
                Text(
                  "Weight (KG)",
                  style: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  "72",
                  style: TextStyle(
                      color: Colors.black54,

                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
            child: Column(
              children: <Widget>[
                Text(
                  "IC",
                  style: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),
                Image.asset("assets/images/ic.png", width: 300, height: 200,)
              ],
            ),
          ),
          Divider(),
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
    );

  }
}
