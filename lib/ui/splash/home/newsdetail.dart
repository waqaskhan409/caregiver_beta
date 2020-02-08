import 'package:customer_beta/constants/Constants.dart';
import 'package:flutter/material.dart';

class NewsDetail extends StatefulWidget {
  NewsDetail({Key key, this.title, this.image}) : super(key: key);

  String title;
  String image;

  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
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
              "Latest News",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 30.0, .0, .0),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 22
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, .0),
                    child: Text(
                      "Friday, 29-11-2019",
                      maxLines: 1,
                      style: TextStyle(color: Colors.black45),

                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, .0),
                    child: Text(
                      "10:47 AM",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  Spacer(flex: 3,)


                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, .0),
                child:               Image.asset(widget.image)
                ,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, .0),
                child: Text(
                  Constants.LOREM_IPSUM,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, .0),
                child: Text(
                  Constants.LOREM_IPSUM,
                  style: TextStyle(color: Colors.black),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
