import 'dart:io';

import 'package:customer_beta/ui/splash/image/imagepickerhandler.dart';
import 'package:flutter/material.dart';

class EditIcPassportVisa extends StatefulWidget {
  @override
  _EditIcPassportVisaState createState() => _EditIcPassportVisaState();
}

class _EditIcPassportVisaState extends State<EditIcPassportVisa> with TickerProviderStateMixin, ImagePickerListener  {


  String icOrAccountString = "IC";
  int i = 1;
  AnimationController _controller;
  ImagePickerHandler imagePicker;

  List<String> listIcOrAccount = List();
  File ic ;
  File passport ;
  File visa ;

  String complete = "Capture";

  Color isComplete = Colors.black87;


  @override
  void initState() {
    // TODO: implement initState
    listIcOrAccount.add("IC");
    listIcOrAccount.add("Passport & Visa");

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
              "IC / Passport and Visa ",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:  Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0),
              child: Text("Capture your ID Card or Passport",
                  style: TextStyle(
                      color: Color.fromRGBO(19, 153, 159, 1.0),
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            GestureDetector(
              onTap: (){
//                      showStates();
                showIcOrPassport();

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
                      FlatButton(
                        color: Colors.white,
                        child: Text(
                          icOrAccountString,
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
            icOrAccountString == "IC" ? Container(
              margin: EdgeInsets.fromLTRB(.0, 40.0, .0, .0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: ic == null? Image.asset("assets/images/ic.png", width: 200, height: 200,):
                    Image.file(ic, width: 200, height: 200,),
                  ),
                  GestureDetector(
                    onTap: (){
                      i = 1;
                      showImage();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 40.0),
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      decoration: BoxDecoration(
                          color: ic == null? Colors.black87 : Colors.green,
                          border: Border.all(color: ic == null? Colors.black87 : Colors.green),
                          borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      child:Center(
                        child:  Text(ic == null? "Capture": "Completed",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18)),
                      ),
                    ),
                  ),
                ],
              ),
            ):Container(
              margin: EdgeInsets.fromLTRB(.0, 40.0, .0, .0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        child: passport == null ? Image.asset("assets/images/passport.png", width: 200, height: 200,):
                        Image.file(passport, width: 200, height: 200,),
                      ),
                      GestureDetector(
                        onTap: (){
                          i = 2;
                          showImage();
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 40.0),
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          decoration: BoxDecoration(
                              color: passport == null? Colors.black87 : Colors.green,
                              border: Border.all(color: passport == null? Colors.black87 : Colors.green),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Text(passport== null? "Capture": "Completed",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: visa == null? Image.asset("assets/images/visa.png", width: 200, height: 200,):
                        Image.file(visa, width: 200, height: 200,),
                      ),
                      GestureDetector(
                        onTap: (){
                          i = 3;
                          showImage();
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 40.0),
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          decoration: BoxDecoration(
                              color: visa == null? Colors.black87 : Colors.green,
                              border: Border.all(color: visa == null? Colors.black87 : Colors.green),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Text(visa == null? "Capture": "Completed",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
//                    showStates();

//              showTimeInPickerDialogue();
                Navigator.pop(context);
              },
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(19, 153, 159, 1.0),
                    border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                    borderRadius:
                    BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          child: Center(
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          )
                      ),
                    ],
                  )),
            )
          ],
        ),
      )
    );
  }
  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }
  void showIcOrPassport(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Account"),
          content:  Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /3,
            child: ListView.builder(
              itemCount: listIcOrAccount.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      complete = "Capture";
                      icOrAccountString = listIcOrAccount[i];
//                      category = list[i].name;
//                      print(category);
                      Navigator.pop(context, 'ok');
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
                            listIcOrAccount[i],
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
  void showImage() {
    imagePicker.showDialog(context);
  }

  @override
  userImage(File _image) {
    // TODO: implement userImage
    setState(() {
      if(i == 1){
        complete = "Completed";
        ic = _image;
      }else if(i == 2){
        complete = "Completed";
        passport = _image;
      }else if(i == 3){
        complete = "Completed";
        visa = _image;
      }

    });
    return null;
  }
}
