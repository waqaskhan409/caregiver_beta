import 'package:customer_beta/model/datemodel.dart';
import 'package:customer_beta/ui/splash/home/modifyschedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class SetSchedule extends StatefulWidget {
  @override
  _SetScheduleState createState() => _SetScheduleState();
}

class _SetScheduleState extends State<SetSchedule>
    with SingleTickerProviderStateMixin {
  List<DateTime> markedDays = List();
  List<DateModel> markedDaysList = List();
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Set Schedule'),
    Tab(text: 'Modify Schedule'),
  ];
  String _timeIn = "09:00 AM";
  String _timeOut = "06:00 PM";
  String _timeInSave = "09:00 AM";
  String _timeOutSave = "06:00 PM";


  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(vsync: this, length: myTabs.length);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,  color: Colors.white,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Text(
              "My Schedule",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: new DefaultTabController(
        length: myTabs.length,
        child: new Column(
          children: <Widget>[
            new Container(
              constraints: BoxConstraints(maxHeight: 150.0),
              child: new Material(
                color: Colors.white,
                child: new TabBar(
                  labelColor: Color.fromRGBO(19, 153, 159, 1.0),
                  indicatorColor: Color.fromRGBO(19, 153, 159, 1.0),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                        width: 5.0, color: Color.fromRGBO(19, 153, 159, 1.0)),
                  ),
                  tabs: [myTabs[0], myTabs[1]],
                ),
              ),
            ),
            new Expanded(
              child: new TabBarView(
                children: [setScheduleWidgets(), modifyScheduleWidgets()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget setScheduleWidgets() {
    return Column(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Text(
                "Per set schedule, Time Start asldkaslkdj asldkaslkdj alskjdalksjd alskdjalskjd alskdjalskdjas alskdjalskdj alskdjalksj ",
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
            )
          ],
        ),
      ),
      scheduleDate(),
      Divider(
        thickness: 5,
      ),
      Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: markedDaysList.length,
            itemBuilder: (context, i) {
              return Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                        child: Text(markedDaysList[i].date.toString().split(" ")[0] +
                            " | " + markedDaysList[i].timeIn +"-"+ markedDaysList[i].timeOut),
                      ),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(
                             context,
                             new MaterialPageRoute(
                               builder: (_) => Modify(
                                 title: "Modify",
                                 dateModel: markedDaysList[i],
                                 dateTime: markedDaysList[i].date,
                                 index: i,
                               ),
                             ));
                       },
                       child:  Container(
                         margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                         child: Text(
                           "edit",
                           style: TextStyle(
                               color: Color.fromRGBO(19, 153, 159, 1.0)),
                         ),
                       ),
                     )
                    ],
                  ));
            }),
      ),
      Container(
        color: Color.fromRGBO(243, 243, 243, 1.0),
          padding: EdgeInsets.fromLTRB(.0, 10.0, .0, .0),
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: Row(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),

                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          showTimeInPickerDialogue();
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width/1.7,
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
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
                            child:Row(
                              children: <Widget>[
                                FlatButton(
                                  color: Colors.white,
                                  child: Text(
                                    _timeIn,
                                    style: TextStyle(
                                        fontSize: 14.0,
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
                           width: MediaQuery.of(context).size.width/1.7,
                           margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                           decoration: BoxDecoration(
                             color: Colors.white,
                             border: Border.all(color: Colors.white),
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
                                       fontSize: 14.0,
                                       color: Colors.black54,
                                       fontWeight: FontWeight.w500),
                                 ),
                               ),
                               Spacer(flex: 10,),
                               Icon(Icons.arrow_drop_down, size: 30, color: Colors.black54,),
                               Spacer()
                             ],
                           )),
                     )
                    ],
                  )),
              Spacer(),
              Container(
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                margin: EdgeInsets.fromLTRB(5.0, 0.0, 10.0, 20.0),
                decoration: BoxDecoration(
                  color:  Color.fromRGBO(19, 153, 159, 1.0),
                  border: Border.all(color:  Color.fromRGBO(19, 153, 159, 1.0)),
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
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: FlatButton(
                          onPressed: (){
                            saveValue();
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          )),
    ]);
  }

  Widget scheduleDate() {
    var _markedDateMap;
    var _current = DateTime.now();
    return Container(
      height: MediaQuery.of(context).size.height / 2.2,
      width: double.infinity,
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          setState(() {
            if (markedDays.contains(date)) {
              markedDays.remove(date);
              markedDaysList.removeWhere((bool){
                return bool.date == date;
              });
//              markedDaysList.remove(DateModel(_timeIn, _timeOut, date));
            } else {
              markedDaysList.add(DateModel(_timeInSave, _timeOutSave, date));
              markedDays.add(date);
            }
//            markedDays.du
          });
        },
        weekendTextStyle: TextStyle(
          color: Colors.black,
        ),
        thisMonthDayBorderColor: Colors.white,
//      weekDays: null, /// for pass null when you do not want to render weekDays
//      headerText: Container( /// Example for rendering custom header
//        child: Text(''),
//      ),
        customDayBuilder: (
          /// you can provide your own build function to make custom day containers
          bool isSelectable,
          int index,
          bool isSelectedDay,
          bool isToday,
          bool isPrevMonthDay,
          TextStyle textStyle,
          bool isNextMonthDay,
          bool isThisMonthDay,
          DateTime day,
        ) {
          /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
          /// This way you can build custom containers for specific days only, leaving rest as default.

          // Example: every 15th of month, we have a flight, we can place an icon in the container like that:
//          if (day.day == 15 || day.day == 16) {
//            return Center(
//              child: Icon(Icons.local_airport),
//            );
//          } else {
//            return null;
//          }
//        print(markedDays[0].day.toString());

          for (int i = 0; i < markedDaysList.length; i++) {
            print(markedDaysList[i].date.day.toString());
            if (day.day == markedDaysList[i].date.day &&
                day.month == markedDaysList[i].date.month) {
              return Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 121, 127, 1.0),
                  border: Border.all(color: Color.fromRGBO(44, 121, 127, 1.0)),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Center(
                  child: Text(
                    day.day.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }
          }
          return null;
        },
        weekFormat: false,
        markedDatesMap: _markedDateMap,
        selectedDayButtonColor: Color.fromRGBO(19, 153, 159, 1.0),
//        daysTextStyle: TextStyle(color: ),
        weekdayTextStyle: TextStyle(
          color: Colors.blue,
        ),
        selectedDateTime: null,
        daysHaveCircularBorder: true,

        /// null for not rendering any border, true for circular border, false for rectangular border
      ),
    );
  }

  Widget modifyScheduleWidgets() {
    return Text("123");
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
      final MaterialLocalizations localizations = MaterialLocalizations.of(context);
      _timeOut = localizations.formatTimeOfDay(timeOut);
    });
    print(_timeOut);
  }
  void saveValue(){
    setState(() {
      _timeInSave = _timeIn;
      _timeOutSave = _timeOut;
    });
  }
}
