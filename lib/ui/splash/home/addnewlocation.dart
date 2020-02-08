import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddNewLocation extends StatefulWidget {
  AddNewLocation({Key key, this.title, this.state}) : super(key: key);

  String title;
  String state;


  @override
  _AddNewLocationState createState() => _AddNewLocationState();
}

class _AddNewLocationState extends State<AddNewLocation> {
  String _state = "State";
  String _city = "City";
  String _area = "Area";
  Color colorSelectedArea = Color.fromRGBO(19, 153, 159, 1.0);
  Color colorSelectedAreaText = Colors.white;
  List<String> list = new List();
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);

//  Color

  @override
  void initState() {
    // TODO: implement initState
    list.add("State 1");
    list.add("State 2");
    list.add("State 3");
    list.add("State 4");
    list.add("State 5");
    list.add("State 6");
    list.add("State 7");
    list.add("State 8");
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,  color: Colors.white,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(
            children: <Widget>[
              Text(
                widget.title == null ? "Add New Location" : widget.title,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      body: colorSelectedArea == Color.fromRGBO(19, 153, 159, 1.0) ? mainAreaCoverage() : outSideAreaCoverage(),
    );
  }

  mainAreaCoverage () {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            showStates();

          },
          child:  Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
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
              child: Row(
                children: <Widget>[
                  Spacer(flex: 10,),
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                    widget.state == null ? _state : widget.state,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(flex: 8,),
                  Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                  Spacer(),
                ],
              )),
        ),
        GestureDetector(
          onTap: (){
            showStates();
          },
          child:  Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
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
              child: Row(
                children: <Widget>[
                  Spacer(flex: 10,),
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                      _city,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(flex: 8,),
                  Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                  Spacer(),
                ],
              )),
        ),
        GestureDetector(
          onTap: (){
            showStates();

          },
          child:  Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
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
              child: Row(
                children: <Widget>[
                  Spacer(flex: 10,),
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                      _area,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(flex: 8,),
                  Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                  Spacer(),
                ],
              )),
        ),
        Container(
            margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
//              showTimeInPickerDialogue();

                    },
                    child:  Container(
                        width: MediaQuery.of(context).size.width/2,
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        decoration: BoxDecoration(
                          color: colorSelectedArea,
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
                        child: Row(
                          children: <Widget>[
                            Spacer(flex: 10,),
                            FlatButton(
                              color: colorSelectedArea,
                              child: Text(
                                "Main Coverage Area",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: colorSelectedAreaText,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Spacer(flex: 8,),

                          ],
                        )),
                  ),
                  GestureDetector(
                    onTap: (){
//              showTimeInPickerDialogue();
                      setState(() {
                        colorSelectedArea = Colors.white;
                        colorSelectedAreaText = Colors.black54;
                      });
                    },
                    child:  Container(
                        width: MediaQuery.of(context).size.width/2,
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
                        child: Row(
                          children: <Widget>[
                            Spacer(flex: 10,),
                            FlatButton(
                              color: Colors.white,
                              child: Text(
                                "Outside Coverage Area",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Spacer(flex: 8,),

                          ],
                        )),
                  )
                ],
              ),

            )
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, .0),
          width: MediaQuery.of(context).size.width,
          height: 200,

          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),

          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop(true);
          },
          child:  Container(
              width: MediaQuery.of(context).size.width/2,
              margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/20, 30.0, 20.0, 0.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(19, 153, 159, 1.0),
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.all(Radius.circular(30)),
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: FlatButton(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }

  outSideAreaCoverage() {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            showStates();

//              showTimeInPickerDialogue();
          },
          child:  Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
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
              child: Row(
                children: <Widget>[
                  Spacer(flex: 10,),
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                      _state,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(flex: 8,),
                  Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                  Spacer(),
                ],
              )),
        ),
        GestureDetector(
          onTap: (){
            showStates();

//              showTimeInPickerDialogue();
          },
          child:  Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
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
              child: Row(
                children: <Widget>[
                  Spacer(flex: 10,),
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                      _city,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(flex: 8,),
                  Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                  Spacer(),
                ],
              )),
        ),
        GestureDetector(
          onTap: (){
            showStates();

//              showTimeInPickerDialogue();
          },
          child:  Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
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
              child: Row(
                children: <Widget>[
                  Spacer(flex: 10,),
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                      _area,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(flex: 8,),
                  Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                  Spacer(),
                ],
              )),
        ),
        Container(
            margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
//              showTimeInPickerDialogue();
                    setState(() {
                      if(colorSelectedArea != Colors.white){
                        colorSelectedArea = Colors.white;
                        colorSelectedAreaText = Colors.black54;
                      }else{
                        colorSelectedArea = Color.fromRGBO(19, 153, 159, 1.0);
                        colorSelectedAreaText = Colors.white;
                      }
                    });
                    },
                    child:  Container(
                        width: MediaQuery.of(context).size.width/2,
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
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
                        child: Row(
                          children: <Widget>[
                            Spacer(flex: 10,),
                            FlatButton(
                              color: Colors.white,
                              child: Text(
                                "Main Coverage Area",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Spacer(flex: 8,),

                          ],
                        )),
                  ),
                  GestureDetector(
                    onTap: (){
//              showTimeInPickerDialogue();
                    },
                    child:  Container(
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(19, 153, 159, 1.0),
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
                        child: Row(
                          children: <Widget>[
                            Spacer(flex: 10,),
                            FlatButton(
                              color: Color.fromRGBO(19, 153, 159, 1.0),
                              child: Text(
                                "Outside Coverage Area",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Spacer(flex: 8,),

                          ],
                        )),
                  )
                ],
              ),
            ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, .0),
          child: TextFormField(
    decoration: InputDecoration(
      hintText: "Extra charges (RM)",
    ),


          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, .0),
          width: MediaQuery.of(context).size.width,
          height: 200,

          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),

          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop(true);
          },
          child:  Container(
              width: MediaQuery.of(context).size.width/2,
              margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/20, 30.0, 20.0, 0.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(19, 153, 159, 1.0),
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.all(Radius.circular(30)),
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: FlatButton(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }
  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }
  void showStates(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the States"),
          content:  Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      _state = list[i];
                      widget.state = null;
//                      category = list[i].name;
//                      print(category);
                      Navigator.pop(context, 'cancel');
                    });
                  },
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 8.0),
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            list[i],
                            style: TextStyle(fontSize: 16.0),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          actions:null
      ),
    );
  }
}
