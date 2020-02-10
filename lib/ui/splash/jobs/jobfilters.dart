import 'package:flutter/material.dart';

class JobFilters extends StatefulWidget {
  @override
  _JobFiltersState createState() => _JobFiltersState();
}

class _JobFiltersState extends State<JobFilters> {
  bool partTIME = false;
  bool fullTIME = false;
  String selectDate = "Select Date";

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
              "Filter",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
//              showStates();
              showDate();

            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){
                      },
                      color: Colors.white,
                      child: Text(
                        selectDate,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Spacer(
                      flex: 15,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: Colors.black54,
                    ),
                    Spacer(),
                  ],
                )),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                      "Full Time Session",
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(
                    flex: 15,
                  ),
                  Checkbox(
                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                    value: fullTIME,
                    onChanged: (_) {
                      if (fullTIME) {
                        setState(() {
                          fullTIME = false;
                        });
                      } else {
                        setState(() {
                          fullTIME = true;
                        });
                      }
                    },
                  ),
                  Spacer(),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                      "Part Time Session",
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(
                    flex: 15,
                  ),
                  Checkbox(
                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                      value: partTIME,
                      onChanged: (_) {
                        if (partTIME) {
                          setState(() {
                            partTIME = false;
                          });
                        } else {
                          setState(() {
                            partTIME = true;
                          });
                        }
                      }),
                  Spacer(),
                ],
              )),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop(true);
              },
              child:  Container(
                  width: MediaQuery.of(context).size.width/2,
                  margin: EdgeInsets.fromLTRB(0, 70.0, 0.0, 0.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(19, 153, 159, 1.0),
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Center(
                        child: FlatButton(
                          color: Color.fromRGBO(19, 153, 159, 1.0),
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
  Future<Null> showDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    setState(() {
      selectDate = picked.toString();
    });
  }


}
