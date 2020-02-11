import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Tutorails extends StatefulWidget {
  @override
  _TutorailsState createState() => _TutorailsState();
}

class _TutorailsState extends State<Tutorails> {
  String url = "https://www.google.com";
  Completer<WebViewController> _controller = Completer<WebViewController>();


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
            Container(
              margin: EdgeInsets
                  .fromLTRB(20.0, .0, .0, .0),
              child: Text(
                "Tutorials",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
      body: WebView(
        initialUrl: url,
        onWebViewCreated: (WebViewController _){
//          _controller.complete(_);
        },
      ),
    );
  }
}
