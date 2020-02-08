import 'package:customer_beta/constants/Constants.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  TextEditingController helpMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(19, 153, 159, 1.0),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(
            children: <Widget>[
              Image.asset(
                "assets/images/logo1.png",
                width: 45,
                height: 45,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                child: Text(
                  "Careventis",
                  style: TextStyle(color: Colors.black),
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
                          width: MediaQuery.of(context).size.width / 3,
                          padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                          margin: EdgeInsets.fromLTRB(5.0, 0.0, 25.0, 20.0),
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
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width / 3,
                          padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                          margin: EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 20.0),
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
              height: 150,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                        width: MediaQuery.of(context).size.width - 50,
                        child: TextFormField(
                          controller: helpMessageController,
                          decoration: InputDecoration(
                              hintText: "Write your message...",
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                        child: Icon(Icons.send),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                        child: IconButton(
                          icon: Icon(Icons.gif, size: 40, color: Colors.black45,),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                        child: IconButton(
                          icon: Icon(Icons.image, size: 40, color: Colors.black45,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
