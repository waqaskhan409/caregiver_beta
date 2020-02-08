import 'package:customer_beta/ui/splash/home/addnewlocation.dart';
import 'package:flutter/material.dart';

class LocationCoverage extends StatefulWidget {
  @override
  _LocationCoverageState createState() => _LocationCoverageState();
}

class _LocationCoverageState extends State<LocationCoverage> {
  List<String> list = List();



  @override
  void initState() {
    // TODO: implement initState
    list.add("1");
    list.add("2");
    list.add("3");
    list.add("4");
    list.add("5");
    list.add("6");
    list.add("7");
    list.add("8");
    list.add("9");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (_){
              return AddNewLocation();
            }
          ));
        },
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Color.fromRGBO(19, 153, 159, 1.0),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,  color: Colors.white,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Text(
              "Coverage Location",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: ListView.builder(itemBuilder: (_, index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20.0, 25.0, 0.0, 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/1.8,
                          child: Text(
                            "Lorem ipsum alskd asldka sdlka sdlaksdasda ;aksdaskd",
                            maxLines: 1,
                            style: TextStyle(color: Colors.black),

                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (_){
                                return AddNewLocation(title: "Edit Location coverage",state: list[index],);
                              }
                            ));
                          },
                          child: Container(
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, .0),
                              child: Image.asset("assets/images/edit.png", width: 23, height: 23,)
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              list.removeAt(index);
                            });
                          },
                          child: Container(
                              margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, .0),
                              child: Image.asset("assets/images/delete.png", width: 23, height: 23,)
                          ),
                        )

                      ],
                    ),

                  ],
                )),
            Divider(),

          ],
        );
      },itemCount: list.length,)
    );
  }
}
