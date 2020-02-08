import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:flutter/material.dart';
import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/jobs/jobs.dart';
import 'package:customer_beta/ui/splash/notification/notification.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';


class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Chat",
                style: TextStyle(
                    color: Color.fromRGBO(19, 153, 159, 1.0), fontSize: 20),
              ),
            ),
            Spacer(),
            Image.asset(
              "assets/images/logo_icon.png",
              width: 45,
              height: 45,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              child: Image.asset(
                "assets/images/logo_text.png",
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Image.asset("assets/images/home.png", width: 30, height: 30,),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/notification_bottom.png", width: 30, height: 30,),
            title: Text('Notification'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/jobs.png", width: 30, height: 30,),
            title: Text('Jobs'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/chat_active.png", width: 30, height: 30,),

            title: Text('Message'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/account.png", width: 30, height: 30,),
            title: Text('Account'),
          )
        ],
        currentIndex: _selectedIndex,

        selectedItemColor:  Color.fromRGBO(19, 153, 159, 1.0),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
          onTap: (index){
            if(index == 0){
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Home(),
                  ),
                      (e) => false);
            }else if(index == 1){
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Notifications(),
                  ),
                      (e) => false);
            }else if(index == 2){
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Jobs(),
                  ),
                      (e) => false);
            }else if(index == 3){

            }else if(index == 4){
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Profile(),
                  ),
                      (e) => false);
            }
          }
//        unselectedIconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(.0, 10, .0, 10),
              child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Image.asset(
                        "assets/images/avatar3.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width/1.4,
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Aliah Shamsudin",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15)),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Text(
                                    "Lorem ipsum alskd asldka sdlka sdlaksdasda ;aksdaskd",
                                    maxLines: 1,
                                    style: TextStyle(color: Colors.black45),

                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, .0),
                                  child: Text(
                                    "1h",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                )

                              ],
                            ),


                          ],
                        )),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.fromLTRB(.0, 15, 2.0, .0),
                      height: 30,
                      width: 10,
                      color: Colors.red,
                    )

                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
            color: Colors.white,

            padding: EdgeInsets.fromLTRB(.0, 10, .0, 10),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Image.asset(
                        "assets/images/avatar1.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        width: MediaQuery.of(context).size.width/1.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Chin Sin",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15)),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Text(
                                    "Lorem ipsum alskd asldka sdlka sdlaksdasda ;aksdaskd",
                                    maxLines: 1,
                                    style: TextStyle(color: Colors.black45),

                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, .0),
                                  child: Text(
                                    "1h",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                )

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
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(.0, 10, .0, 10),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Image.asset(
                        "assets/images/avatar2.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width/1.4,
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Amirah Yousaf",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15)),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Text(
                                    "Lorem ipsum alskd asldka sdlka sdlaksdasda ;aksdaskd",
                                    maxLines: 1,
                                    style: TextStyle(color: Colors.black45),

                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, .0),
                                  child: Text(
                                    "1h",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                )

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
          )
        ],
      ),
    );
  }
}
