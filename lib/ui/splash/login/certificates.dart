import 'dart:io';

import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/image/imagepickerhandler.dart';
import 'package:customer_beta/ui/splash/login/icorpassport.dart';
import 'package:customer_beta/ui/splash/login/profile.dart';
import 'package:flutter/material.dart';

class AddCertificates extends StatefulWidget {
  @override
  _AddCertificatesState createState() => _AddCertificatesState();
}

class _AddCertificatesState extends State<AddCertificates> with TickerProviderStateMixin, ImagePickerListener {

  int check = -1;


  double size  = 0;

  String working = "Part-time";
  List<File> certificates = List();



  AnimationController _controller;
  ImagePickerHandler imagePicker;


  TextEditingController currentWorkingController = TextEditingController();
  TextEditingController referralCodeController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0),
              child: Text("Are you working currently? If yes where are you working?",
                  style: TextStyle(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
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
                        width: MediaQuery.of(context).size.width/1.2,
                        child: TextFormField(
                          controller: currentWorkingController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Current Working place (Optional)"
                          ),
                        ),
                      ),

                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
              child: Text("Please Choose your working option",
                  style: TextStyle(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Spacer(),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Part-time",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: working,
                          onChanged: (_) {
                            setState(() {
                              working = _;
                            });
                          },
                        ),
                        Text("Part-time")
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Full-time",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: working,
                          onChanged: (_) {
                            setState(() {
                              working = _;
                            });
                          },
                        ),
                        Text("Full-time")
                      ],
                    ),
                  ),

                  Spacer(flex: 2,),
                ],
              ),
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
                        width: MediaQuery.of(context).size.width/1.2,
                        child: TextFormField(
                          controller: referralCodeController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Referral Code (Optional)"
                          ),
                        ),
                      ),

                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
              child: Text("Upload your Certicate (Optional)",
                  style: TextStyle(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
           Container(
             margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
             height: size,
               child:  ListView.builder(itemBuilder: (_, i){
               return Row(
                 children: <Widget>[
                   Image.file(certificates[i], height: 80, width: 80,),
                   GestureDetector(
                     onTap:(){
                       setState(() {
                         certificates.removeAt(i);
                       });
                 },
                     child: Container(
                       margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
                       child: Text("Remove", style: TextStyle(
                           color: Colors.red
                       ),),
                     ),
                   ),
                   GestureDetector(
                     onTap: (){
                       check = i;
                       showImage();
                       },
                     child: Container(
                       child: Text("Change", style: TextStyle(
                         color: Colors.blue
                       ),),
                     ),
                   )
                 ],
               );
             },
               itemCount: certificates.length,
             ),
           ),

            GestureDetector(
              onTap: (){
                check = -1;
showImage();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 40.0),
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Text("+ Upload your certificate",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 18)),
              ),
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
                            builder: (_) => CareGiverProfile(),
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
                            builder: (_) => AddIcOrPassport(),
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
      ),

    );
  }
  void showImage() {
    imagePicker.showDialog(context);
  }

  @override
  userImage(File _image) {
    // TODO: implement userImage
    setState(() {
     if(check == -1){
       size = size + 80;
       certificates.add(_image);
     }else{
       certificates[check] = _image;
     }
    });
    return null;
  }
}
