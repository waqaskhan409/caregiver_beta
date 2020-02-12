import 'dart:io';

import 'package:customer_beta/ui/splash/image/imagepickerhandler.dart';
import 'package:flutter/material.dart';

class EditCertificates extends StatefulWidget {
  @override
  _EditCertificatesState createState() => _EditCertificatesState();
}

class _EditCertificatesState extends State<EditCertificates> with TickerProviderStateMixin, ImagePickerListener {
  int check = -1;


  double size  = 0;

  String working = "Part-time";
  List<File> certificates = List();



  AnimationController _controller;
  ImagePickerHandler imagePicker;




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
              "Edit Certificates",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
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

          ),
          Container(
            child:
            Row(
              children: <Widget>[
                Spacer(),
                GestureDetector(
                  onTap: (){
                    check = -1;
                    showImage();
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 40.0),
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
              ],
            ),
          )
        ],
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
