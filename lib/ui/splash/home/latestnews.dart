import 'package:customer_beta/ui/splash/home/newsdetail.dart';
import 'package:flutter/material.dart';

class LatestNews extends StatefulWidget {
  @override
  _LatestNewsState createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  List<String> images = List();

  @override
  void initState() {
    // TODO: implement initState
    images.add("assets/images/image20.png");
    images.add("assets/images/image21.png");
    images.add("assets/images/image22.png");

    super.initState();
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
              "Latest News",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (_, i){
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return NewsDetail(image: images[i],title: "Study revealsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa how much fiber we should eat to prevent desease.",);
              }));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(.0, 10, .0, 10),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        child: Image.asset(
                          images[i],
                          width: 140,
                          height: 100,
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width/1.8,
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text("Study revealsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa how much fiber we should eat to prevent desease.",
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13)),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 7,
                                    height: 20,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, .0),
                                    child: Text(
                                      "Friday, 29-11-2019",
                                      maxLines: 1,
                                      style: TextStyle(color: Colors.black45),

                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, .0),
                                    child: Text(
                                      "10:47 AM",
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ),


                                ],
                              ),

                            ],
                          )),
                      Spacer(),
//                    Container(
//                      margin: EdgeInsets.fromLTRB(.0, 15, 2.0, .0),
//                      height: 30,
//                      width: 10,
//                      color: Colors.red,
//                    )



                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: images.length,

      ),
    );
  }
}
