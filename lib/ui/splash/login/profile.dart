import 'dart:io';

import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/image/imagepickerhandler.dart';
import 'package:customer_beta/ui/splash/login/certificates.dart';
import 'package:customer_beta/ui/splash/login/emailconfirmation.dart';
import 'package:flutter/material.dart';

class CareGiverProfile extends StatefulWidget {
  @override
  _CareGiverProfileState createState() => _CareGiverProfileState();
}

class _CareGiverProfileState extends State<CareGiverProfile> with TickerProviderStateMixin, ImagePickerListener {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emergencyController = TextEditingController();
  TextEditingController languageSpokenController = TextEditingController();


  AnimationController _controller;
  ImagePickerHandler imagePicker;

  String gender = "Gender *";
  String race = "Race";
  String highestEducationLevel = "Highest education Level";
  File profileImage;

  List<String> genderList = List();
  List<String> raceList = List();
  List<String> highestList = List();

  @override
  void initState() {
    // TODO: implement initState
    genderList.add("Male");
    genderList.add("Female");
    genderList.add("Others");

    raceList.add("Malay");
    raceList.add("Chinese");
    raceList.add("Indian");
    raceList.add("Others");

    highestList.add("PMR/PT3");
    highestList.add("SPM");
    highestList.add("Fundation");
    highestList.add("Diploma");

    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    imagePicker = new ImagePickerHandler(this, _controller);
    imagePicker.init();


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, 100.0, .0, 0.0),
                        child: Text("Add your Personal Information",
                            style: TextStyle(
                                color: Color.fromRGBO(19, 153, 159, 1.0),
                                fontWeight: FontWeight.w500,
                                fontSize: 18)),
                      ),
                      GestureDetector(
                        onTap: (){
                          showImage();
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 50.0, .0, 0.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          ),
                          child:Center(
                            child: profileImage == null ? Image.asset(
                              "assets/images/img-upload.png",
                              width: 120,
                              height: 120,
                            ):CircleAvatar(
                              radius: 80,
                              backgroundImage: FileImage(profileImage,),),
                            ),
                          ),
                        ),
                      Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 10.0, .0, 0.0),
                            child: Text("Upload face picture",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14))),
                      ),
                      GestureDetector(
                        onTap: (){
//                    showStates();

//              showTimeInPickerDialogue();
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[

                                Container(
                                  width: MediaQuery.of(context).size.width/1.8,
                                  child: TextFormField(
                                    controller: fullNameController,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Full Name *"
                                    ),
                                  ),
                                ),

                              ],
                            )),
                      ),GestureDetector(
                        onTap: (){
//                      showStates();
showGender();
//              showTimeInPickerDialogue();
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),
                            child: Row(
                              children: <Widget>[
                                Spacer(flex: 10,),
                                FlatButton(
                                  color: Colors.white,
                                  child: Text(
                                    gender,
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
                      ),GestureDetector(
                        onTap: (){
//                      showStates();
                        showRace();

//              showTimeInPickerDialogue();
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),
                            child: Row(
                              children: <Widget>[
                                Spacer(flex: 10,),
                                FlatButton(
                                  color: Colors.white,
                                  child: Text(
                                    race,
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
//                    showStates();

//              showTimeInPickerDialogue();
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[

                                Container(
                                  width: MediaQuery.of(context).size.width/1.8,
                                  child: TextFormField(
                                    controller: dobController,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Date of Birth"
                                    ),
                                  ),
                                ),

                              ],
                            )),
                      ),

                      GestureDetector(
                        onTap: (){
//                    showStates();

//              showTimeInPickerDialogue();
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[

                                Container(
                                  width: MediaQuery.of(context).size.width/1.8,
                                  child: TextFormField(
                                    controller: phoneNumberController,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Phone Number *"
                                    ),
                                  ),
                                ),

                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: (){
//                    showStates();

//              showTimeInPickerDialogue();
                        showGender();
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[

                                Container(
                                  width: MediaQuery.of(context).size.width/1.8,
                                  child: TextFormField(
                                    controller: emergencyController,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Emergency Contact Number"
                                    ),
                                  ),
                                ),

                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: (){
//                    showStates();

//              showTimeInPickerDialogue();
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[

                                Container(
                                  width: MediaQuery.of(context).size.width/1.5,
                                  child: TextFormField(
                                    controller: languageSpokenController,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Language Spoken and written"
                                    ),
                                  ),
                                ),

                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: (){
//                      showStates();

//              showTimeInPickerDialogue();
                        showEducation();
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),
                            child: Row(
                              children: <Widget>[
                                Spacer(flex: 10,),
                                FlatButton(
                                  color: Colors.white,
                                  child: Text(
                                    highestEducationLevel,
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
                        margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => EmailConformation(),
                                    ),
                                        (e) => false);
                              },
                              child: Image.asset("assets/images/back.png", width: 70.0, height: 70.0,),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => AddCertificates(),
                                    ),
                                        (e) => false);
                              },
                              child: Image.asset("assets/images/next.png", width: 70.0, height: 70.0,),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),


                ],
              )),
        ],
      ),
    );
  }
  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }
  void showGender(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Gender"),
          content:  Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /3,
            child: ListView.builder(
              itemCount: genderList.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      gender = genderList[i];
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
                            genderList[i],
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
  void showEducation() {
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Race"),
          content: Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height/3,
            child: ListView.builder(
              itemCount: highestList.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      highestEducationLevel = highestList[i];
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
                            highestList[i],
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
          actions: null
      ),
    );
  }
    void showRace() {
      showMaterialDialog<String>(
        context: context,
        child: AlertDialog(
            title: Text("Select the Education"),
            content: Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height/3,
              child: ListView.builder(
                itemCount: raceList.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        race = raceList[i];
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
                              raceList[i],
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
            actions: null
        ),
      );
    }
  void showImage() {
    imagePicker.showDialog(context);
  }

  @override
  userImage(File _image) {
    setState(() {
      profileImage = _image;
    });
    return null;
  }
}
