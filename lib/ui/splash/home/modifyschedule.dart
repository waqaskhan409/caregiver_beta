import 'package:customer_beta/model/datemodel.dart';
import 'package:customer_beta/ui/splash/home/setschedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Modify extends StatefulWidget {
  Modify({Key key, this.title, this.index, this.dateModel, this.dateTime}) : super(key: key);
  String title;
  int index;
  DateModel dateModel;
  DateTime dateTime;

  @override
  _ModifyState createState() => _ModifyState();
}

class _ModifyState extends State<Modify> {
  String _timeIn = "09:00 AM";
  String _timeOut = "06:00 PM";
  String _timeInSave = "09:00 AM";
  String _timeOutSave = "06:00 PM";
  bool disableSchedule = false;
  @override
  void initState() {
    // TODO: implement initState
    _timeIn = widget.dateModel.timeIn;
    _timeOut = widget.dateModel.timeOut;
    _timeInSave = widget.dateModel.timeIn;
    _timeOutSave = widget.dateModel.timeOut;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,  color: Colors.white,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Text(
              "Modify",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 30.0, .0, .0),
              child: Text(
                returnWeekDay(widget.dateTime.weekday) + ", " + widget.dateModel.date.toString().split(" ")[0],
                style: TextStyle(
                    fontSize: 22
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, .0, .0),
              child: Text(
                widget.dateModel.timeIn + " - " + widget.dateModel.timeOut,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                showTimeInPickerDialogue();
              },
              child:  Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
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
                    children: <Widget>[
                      FlatButton(
                        color: Colors.white,
                        child: Text(
                          _timeIn,
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Spacer(flex: 10,),
                      Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                      Spacer()
                    ],
                  )),
            ),
            GestureDetector(
              onTap: (){
                showTimeOutPickerDialogue();
              },
              child:  Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
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
                    children: <Widget>[
                      FlatButton(
                        color: Colors.white,
                        child: Text(
                          _timeOut,
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Spacer(flex: 10,),
                      Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                      Spacer()
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25.0, 30.0, 20.0, .0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("Disable Schedule on this date",
                      style: TextStyle(color: Colors.black45),),
                  ),
                  Spacer(),
                  Checkbox(
                      activeColor: Colors.green,
                      value: disableSchedule, onChanged: (bool){
                    setState(() {
                      disableSchedule = bool;
                    });
                  }
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
               Navigator.of(context).pop(true);
              },
              child:  Container(
                  width: MediaQuery.of(context).size.width/2,
                  margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/4, 30.0, 20.0, 0.0),
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
            )
          ],
        ),
      ),
    ), onWillPop: _onWillPop);
  }
  void showTimeInPickerDialogue() async{
    TimeOfDay timein = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      final MaterialLocalizations localizations = MaterialLocalizations.of(context);
      _timeIn = localizations.formatTimeOfDay(timein);
    });
    print(_timeIn);
  }
  void showTimeOutPickerDialogue() async{
    TimeOfDay timeOut = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
//       = timeOut.toString().split("(")[1].split(")")[0];
      final MaterialLocalizations localizations = MaterialLocalizations.of(context);
      _timeOut = localizations.formatTimeOfDay(timeOut);

    });


  }
  String returnWeekDay(int day) {

    if(day == 1){
      return "Monday";
    }else if(day == 2){
      return "Tuesday";
    }else if(day == 3){
      return "Wednesday";
    }else if(day == 4){
      return "Thursday";
    }else if(day == 5){
      return "Friday";
    }else if(day == 6){
      return "Saturday";
    }else if(day == 7){
      return "Sunday";
    }
    return null;
  }
  void saveValue(){
    setState(() {
      _timeInSave = _timeIn;
      _timeOutSave = _timeOut;
    });
  }

  Future<bool> _onWillPop() async{
    print("asdasd");
      return true;
  }
}
