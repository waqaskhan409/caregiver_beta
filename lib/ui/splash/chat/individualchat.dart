import 'dart:io';
import 'dart:math';

import 'package:customer_beta/constants/Constants.dart';
import 'package:customer_beta/ui/splash/image/imagepickerhandler.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class IndividualChat extends StatefulWidget {
  @override
  _IndividualChatState createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> with TickerProviderStateMixin, ImagePickerListener{
  TextEditingController chatController = TextEditingController();
  bool isEmoji = false;
  double _height = 150;
  List<File> conversationImages = List();
  List<File> files;



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
            Image.asset(
              "assets/images/avatar3.png",
              width: 45,
              height: 45,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
              child: Text(
                "Aliah Shamsudin",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, .0),
            child: Text(
              "January 8",
              style: TextStyle(color: Colors.black45),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (_, i) {
                return i % 2 == 0
                    ? Container(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  margin: EdgeInsets.fromLTRB(5.0, 0.0, 35.0, 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 1.0),
                    border: Border.all(
                        color: Color.fromRGBO(245, 245, 245, 1.0)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  child: Text(
                    Constants.LOREM_IPSUM,
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ) : Container(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  margin: EdgeInsets.fromLTRB(35.0, 0.0, 5.0, 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(19, 153, 159, 1.0),
                    border: Border.all(
                        color: Color.fromRGBO(19, 153, 159, 1.0)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  child: Text(
                    Constants.LOREM_IPSUM,
                    style: TextStyle(

                        fontSize: 17.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1.0),
              border: Border.all(color: Color.fromRGBO(245, 245, 245, 1.0)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
            height: _height,
            child: Column(
              children: <Widget>[
                isEmoji? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
//                  child: EmojiPicker(
//                    rows: 3,
//                    columns: 7,
//                    recommendKeywords: ["racing", "horse"],
//                    numRecommended: 10,
//                    onEmojiSelected: (emoji, category) {
//                      chatController.text = chatController.text + emoji.toString().split("Emoji:")[1];
//                    },
//                  ),
                child: Text("QWEQWE"),
                ): Container(),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                      width: MediaQuery.of(context).size.width -20 ,
                      child: TextFormField(

                        controller: chatController,
                        decoration: InputDecoration(
                            hintText: "Write your message...",
                            border: InputBorder.none),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[

                   GestureDetector(
                     onTap: (){
                       getFiles();
                     },
                     child:  Container(
                         margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                         child: Image.asset("assets/images/file_upload.png", width: 35, height: 35,)
                     ),
                   ),GestureDetector(
                      onTap: (){
                        showImage();
                      },
                      child: Container(
                          margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                          child: Image.asset("assets/images/image_upload.png", width: 35, height: 35,)
                      ),
                    ),

                    Spacer(),
                    GestureDetector(
                      onTap: (){
//                        check = -1;
//                        showImage();
                      chatController.text = "";
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Text("Send Message",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18)),
                      ),
                    )
                  ],
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
    setState(() {
      conversationImages.add(_image);
    });
    return null;
  }

  void getFiles() async {
    files = await FilePicker.getMultiFile();
  }
}
