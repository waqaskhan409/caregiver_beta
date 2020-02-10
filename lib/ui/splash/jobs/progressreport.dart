import 'package:flutter/material.dart';

class ProgressReport extends StatefulWidget {
  @override
  _ProgressReportState createState() => _ProgressReportState();
}

class _ProgressReportState extends State<ProgressReport> {
  String general = "Well";
  String feeding = "Normal intake";
  String food = "Grab Food";
  String bath = "Done";
  String oral = "Done";
  String toiletUrine = "Yes";
  String toiletDefecate = "Yes";
  String physioWalking = "Yes";
  String physioLimbs = "Yes";
  String changePampers = "Done";
  String changeShirt = "Done";
  String wheelChair = "Yes";
  String companionshipConserving = "Yes";
  String companionshipResponsive = "Yes";
  String companionshipEmotion = "Happy";
  String woundCareCondition = "Dry";
  String woundCareSkin = "Red";
  String woundCareProgress = "Improving";
  String woundCarePusDis = "Yes";
  String stomaChange = "Done";
  String stomaCOndition = "Clean";

  String urineUrine = "Clear";
  String urineBlood = "Yes";
  String urineChange = "Done";



  bool combHair = false;
  bool shaving = false;
  bool hairCut = false;


  TextEditingController foodSpendController = TextEditingController();

//  String feeding = "Normal intake";
//  String feeding = "Normal intake";

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
              "Progress Report",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, 30.0),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 2.0),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Write your report here...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("General Condition",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Well",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: general,
                          onChanged: (_) {
                            setState(() {
                              general = _;
                            });
                          },
                        ),
                        Text("Well")
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Normal",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: general,
                          onChanged: (_) {
                            setState(() {
                              general = _;
                            });
                          },
                        ),
                        Text("Normal")
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Not well",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: general,
                          onChanged: (_) {
                            setState(() {
                              general = _;
                            });
                          },
                        ),
                        Text("Not well")
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),







            Divider(
              thickness: 3,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Feeding",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Normal intake",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: feeding,
                              onChanged: (_) {
                                setState(() {
                                  feeding = _;
                                });
                              },
                            ),
                            Text("Normal intake")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Little intake",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: feeding,
                              onChanged: (_) {
                                setState(() {
                                  feeding = _;
                                });
                              },
                            ),
                            Text("Litttle intake")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Moderate intake",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: feeding,
                              onChanged: (_) {
                                setState(() {
                                  feeding = _;
                                });
                              },
                            ),
                            Text("Moderate intake")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "No intake",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: feeding,
                              onChanged: (_) {
                                setState(() {
                                  feeding = _;
                                });
                              },
                            ),
                            Text("No intake")
                          ],
                        ),
                      ),
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),








            Divider(
              thickness: 3,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Food Ordered",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Normal intake",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: feeding,
                              onChanged: (_) {
                                setState(() {
                                  feeding = _;
                                });
                              },
                            ),
                            Text("Normal intake")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Little intake",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: feeding,
                              onChanged: (_) {
                                setState(() {
                                  feeding = _;
                                });
                              },
                            ),
                            Text("Litttle intake")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Moderate intake",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: feeding,
                              onChanged: (_) {
                                setState(() {
                                  feeding = _;
                                });
                              },
                            ),
                            Text("Moderate intake")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "No intake",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: feeding,
                              onChanged: (_) {
                                setState(() {
                                  feeding = _;
                                });
                              },
                            ),
                            Text("No intake")
                          ],
                        ),
                      ),
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("How much did you spend?",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: TextFormField(
                controller: foodSpendController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    hintText: "RM"
                ),
              ),
            ),









            Divider(
              thickness: 3,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Bathing",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Done",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: bath,
                              onChanged: (_) {
                                setState(() {
                                  bath = _;
                                });
                              },
                            ),
                            Text("Done")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)

                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Not Done",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: bath,
                              onChanged: (_) {
                                setState(() {
                                  bath = _;
                                });
                              },
                            ),
                            Text("Not Done")
                          ],
                        ),
                      ),
//                Sp
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),








            Divider(
              thickness: 3,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Oral Care",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Done",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: oral,
                              onChanged: (_) {
                                setState(() {
                                  oral = _;
                                });
                              },
                            ),
                            Text("Done")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)

                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Not Done",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: oral,
                              onChanged: (_) {
                                setState(() {
                                  oral = _;
                                });
                              },
                            ),
                            Text("Not Done")
                          ],
                        ),
                      ),
//                Sp
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),











            Divider(thickness: 3,),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Toileting",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                        child: Text("Urinate",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,
                                fontSize: 14))),

                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Yes",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: toiletUrine,
                              onChanged: (_) {
                                setState(() {
                                  toiletUrine = _;
                                });
                              },
                            ),
                            Text("Yes")
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                          child: Text("Defecate",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Yes",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: toiletDefecate,
                              onChanged: (_) {
                                setState(() {
                                  toiletDefecate = _;
                                });
                              },
                            ),
                            Text("Yes")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                          child: Text("",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))),

                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "No",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: toiletUrine,
                              onChanged: (_) {
                                setState(() {
                                  toiletUrine = _;
                                });
                              },
                            ),
                            Text("No")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)
                      Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                          child: Text("",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))),

                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "No",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: toiletDefecate,
                              onChanged: (_) {
                                setState(() {
                                  toiletDefecate = _;
                                });
                              },
                            ),
                            Text("No")
                          ],
                        ),
                      ),
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),









            Divider(
              thickness: 3,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Change Pampers(If needed)",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Done",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: changePampers,
                              onChanged: (_) {
                                setState(() {
                                  changePampers = _;
                                });
                              },
                            ),
                            Text("Done")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)

                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Not Done",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: changePampers,
                              onChanged: (_) {
                                setState(() {
                                  changePampers = _;
                                });
                              },
                            ),
                            Text("Not Done")
                          ],
                        ),
                      ),
//                Sp
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),





            Divider(thickness: 3,),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Grooming (tick if completed)",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Checkbox(
//                          value: "Well",


                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
//                          groupValue: general,
                        value: combHair,
                        tristate: combHair,
                          onChanged: (_) {
                            setState(() {
//                              general = _;
                            if(combHair){
                              combHair = false;
                            }else{
                              combHair = true;
                            }
                            });
                          },
                        ),
                        Text("Comb hair")
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Checkbox(
//                          value: "Normal",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
value: shaving,
tristate: shaving,
//                          groupValue: general,
                          onChanged: (_) {
                            setState(() {
//                              general = _;
                            if(shaving){
                              shaving = false;
                            }else{
                              shaving = true;
                            }
                            });
                          },
                        ),
                        Text("Shaving")
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Checkbox(
//                          value: "Not well",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
//                          groupValue: general,
                        value: hairCut,
                        tristate: hairCut,
                          onChanged: (_) {
                            setState(() {
//                              general = _;
                            if(hairCut){
                              hairCut = false;
                            }else{
                              hairCut = true;
                            }
                            });
                          },
                        ),
                        Text("Hair cut")
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),





            Divider(
              thickness: 3,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Change Of Chart",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Done",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: changeShirt,
                              onChanged: (_) {
                                setState(() {
                                  changeShirt = _;
                                });
                              },
                            ),
                            Text("Done")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)

                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Not Done",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: changeShirt,
                              onChanged: (_) {
                                setState(() {
                                  changeShirt = _;
                                });
                              },
                            ),
                            Text("Not Done")
                          ],
                        ),
                      ),
//                Sp
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),






            Divider(thickness: 3,),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Physio",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                          child: Text("Limbs movements",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))),

                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Yes",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: physioLimbs,
                              onChanged: (_) {
                                setState(() {
                                  physioLimbs = _;
                                });
                              },
                            ),
                            Text("Yes")
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                          child: Text("Walking",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Yes",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: physioWalking,
                              onChanged: (_) {
                                setState(() {
                                  physioWalking = _;
                                });
                              },
                            ),
                            Text("Yes")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                          child: Text("",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))),

                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "No",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: physioLimbs,
                              onChanged: (_) {
                                setState(() {
                                  physioLimbs = _;
                                });
                              },
                            ),
                            Text("No")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)
                      Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                          child: Text("",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))),

                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "No",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: physioWalking,
                              onChanged: (_) {
                                setState(() {
                                  physioWalking = _;
                                });
                              },
                            ),
                            Text("No")
                          ],
                        ),
                      ),
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),











            Divider(
              thickness: 3,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Wheel chair mobilizing",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Yes",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: wheelChair,
                              onChanged: (_) {
                                setState(() {
                                  wheelChair = _;
                                });
                              },
                            ),
                            Text("Yes")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)

                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "No",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: wheelChair,
                              onChanged: (_) {
                                setState(() {
                                  wheelChair = _;
                                });
                              },
                            ),
                            Text("No")
                          ],
                        ),
                      ),
//                Sp
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),





            Divider(thickness: 3,),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Companionship",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Column(
                children: <Widget>[
                  Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                              child: Text("Conserve well",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14))),

                          Container(
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: "Yes",
                                  activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                  groupValue: companionshipConserving,
                                  onChanged: (_) {
                                    setState(() {
                                      companionshipConserving = _;
                                    });
                                  },
                                ),
                                Text("Yes")
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                              child: Text("Responsive",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14))),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: "Yes",
                                  activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                  groupValue: companionshipResponsive,
                                  onChanged: (_) {
                                    setState(() {
                                      companionshipResponsive = _;
                                    });
                                  },
                                ),
                                Text("Yes")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                              child: Text("",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14))),

                          Container(
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: "No",
                                  activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                  groupValue: companionshipConserving,
                                  onChanged: (_) {
                                    setState(() {
                                      companionshipConserving = _;
                                    });
                                  },
                                ),
                                Text("No")
                              ],
                            ),
                          ),
//                Spacer(flex: 1,)
                          Container(
                              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                              child: Text("",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14))),

                          Container(
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: "No",
                                  activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                  groupValue: companionshipResponsive,
                                  onChanged: (_) {
                                    setState(() {
                                      companionshipResponsive = _;
                                    });
                                  },
                                ),
                                Text("No")
                              ],
                            ),
                          ),
//                Spacer(),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              )
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                child: Text("Emotion",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 14))),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Happy",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: companionshipEmotion,
                          onChanged: (_) {
                            setState(() {
                              companionshipEmotion = _;
                            });
                          },
                        ),
                        Text("Happy")
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Nuetral",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: companionshipEmotion,
                          onChanged: (_) {
                            setState(() {
                              companionshipEmotion = _;
                            });
                          },
                        ),
                        Text("Nuetral")
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Sad",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: companionshipEmotion,
                          onChanged: (_) {
                            setState(() {
                              companionshipEmotion = _;
                            });
                          },
                        ),
                        Text("Sad")
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),







            Divider(thickness: 3,),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Wound Care",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("Condition",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Dry",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: woundCareCondition,
                                    onChanged: (_) {
                                      setState(() {
                                        woundCareCondition = _;
                                      });
                                    },
                                  ),
                                  Text("Dry")
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("Skin",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Red",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: woundCareSkin,
                                    onChanged: (_) {
                                      setState(() {
                                        woundCareSkin = _;
                                      });
                                    },
                                  ),
                                  Text("Red")
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Wet",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: woundCareCondition,
                                    onChanged: (_) {
                                      setState(() {
                                        woundCareCondition = _;
                                      });
                                    },
                                  ),
                                  Text("Wet")
                                ],
                              ),
                            ),
//                Spacer(flex: 1,)
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Not Red inflamed",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: woundCareSkin,
                                    onChanged: (_) {
                                      setState(() {
                                        woundCareSkin = _;
                                      });
                                    },
                                  ),
                                  Text("Not Red inflamed")
                                ],
                              ),
                            ),
//                Spacer(),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                )
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                child: Text("Progress",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 14))),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Improving",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: woundCareProgress,
                          onChanged: (_) {
                            setState(() {
                              woundCareProgress = _;
                            });
                          },
                        ),
                        Text("Improving")
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Nuetral",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: woundCareProgress,
                          onChanged: (_) {
                            setState(() {
                              woundCareProgress = _;
                            });
                          },
                        ),
                        Text("Nuetral")
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Worsening",
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          groupValue: woundCareProgress,
                          onChanged: (_) {
                            setState(() {
                              woundCareProgress = _;
                            });
                          },
                        ),
                        Text("Worsening")
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                child: Text("Pus discharge",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 14))),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Yes",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: woundCarePusDis,
                              onChanged: (_) {
                                setState(() {
                                  woundCarePusDis = _;
                                });
                              },
                            ),
                            Text("Yes")
                          ],
                        ),
                      ),
//                Spacer(flex: 1,)

                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "No",
                              activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                              groupValue: woundCarePusDis,
                              onChanged: (_) {
                                setState(() {
                                  woundCarePusDis = _;
                                });
                              },
                            ),
                            Text("No")
                          ],
                        ),
                      ),
//                Sp
//                Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),









            Divider(thickness: 3,),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Stoma Care / Tracheostry Care",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("Condition",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Clean",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: stomaCOndition,
                                    onChanged: (_) {
                                      setState(() {
                                        stomaCOndition = _;
                                      });
                                    },
                                  ),
                                  Text("Clean")
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("Change",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Done",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: stomaChange,
                                    onChanged: (_) {
                                      setState(() {
                                        stomaChange = _;
                                      });
                                    },
                                  ),
                                  Text("Done")
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Not clean",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: stomaCOndition,
                                    onChanged: (_) {
                                      setState(() {
                                        stomaCOndition = _;
                                      });
                                    },
                                  ),
                                  Text("Not clean")
                                ],
                              ),
                            ),
//                Spacer(flex: 1,)
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Not done",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: stomaChange,
                                    onChanged: (_) {
                                      setState(() {
                                        stomaChange = _;
                                      });
                                    },
                                  ),
                                  Text("Not done")
                                ],
                              ),
                            ),
//                Spacer(),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                )
            ),













            Divider(thickness: 3,),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
              child: Text("Urine Catheter care",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("Urine",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Clear",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: urineUrine,
                                    onChanged: (_) {
                                      setState(() {
                                        urineUrine = _;
                                      });
                                    },
                                  ),
                                  Text("Clear")
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("Blood",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Yes",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: urineBlood,
                                    onChanged: (_) {
                                      setState(() {
                                        urineBlood = _;
                                      });
                                    },
                                  ),
                                  Text("Yes")
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("Change of Catheter",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Done",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: urineChange,
                                    onChanged: (_) {
                                      setState(() {
                                        urineChange = _;
                                      });
                                    },
                                  ),
                                  Text("Done")
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Not clear",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: urineUrine,
                                    onChanged: (_) {
                                      setState(() {
                                        urineUrine = _;
                                      });
                                    },
                                  ),
                                  Text("Not clear")
                                ],
                              ),
                            ),
//                Spacer(flex: 1,)
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "No",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: urineBlood,
                                    onChanged: (_) {
                                      setState(() {
                                        urineBlood = _;
                                      });
                                    },
                                  ),
                                  Text("No")
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 0.0),
                                child: Text("",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14))),

                            Container(
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    value: "Not done",
                                    activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                                    groupValue: urineChange,
                                    onChanged: (_) {
                                      setState(() {
                                        urineChange = _;
                                      });
                                    },
                                  ),
                                  Text("Not done")
                                ],
                              ),
                            ),
//                Spacer(),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                )
            ),


            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pop(true);
                },
                child:  Container(
                    width: MediaQuery.of(context).size.width/2,
                    margin: EdgeInsets.fromLTRB(.0, 50.0, 0.0, 50.0),
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
                              "Save Report",
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

              ,
            )





          ],
        ),
      )
    );
  }
}
