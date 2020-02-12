import 'package:flutter/material.dart';

class BankAccount extends StatefulWidget {
  @override
  _BankAccountState createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {

  final nameAsIc = TextEditingController();
  final accountNumber = TextEditingController();
//  final nameAsIc = TextEditingController();

  String _bankName = "Select Bank";

  List<String> bankImages = List();
  List<String> list = List();

  @override
  void initState() {
    // TODO: implement initState
    bankImages.add("assets/images/affinbank 1.png");
    bankImages.add("assets/images/ambank 1.png");
    bankImages.add("assets/images/bankislam 1.png");
    bankImages.add("assets/images/bankrakyat 1.png");
    bankImages.add("assets/images/bsn 1.png");
    bankImages.add("assets/images/cimb 1.png");
    bankImages.add("assets/images/Group 533.png");
    bankImages.add("assets/images/hong leong connect 1.png");
    bankImages.add("assets/images/hsbc 1.png");
    bankImages.add("assets/images/maybank 1.png");
    bankImages.add("assets/images/public bank 1.png");
    bankImages.add("assets/images/rhb now 1.png");
    bankImages.add("assets/images/standardchartered 1.png");
    list.add("affinbank");
    list.add("ambank");
    list.add("bankislam");
    list.add("bankrakyat");
    list.add("bsn");
    list.add("cimb");
    list.add("uob");
    list.add("hong leong connect");
    list.add("hsbc");
    list.add("maybank");
    list.add("public bank");
    list.add("rhb now");
    list.add("standard chartered");

    super.initState();
  }
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
              "Change Password",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body:  Column(
        children: <Widget>[
          Spacer(
            flex: 6,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 10.0),
            padding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextFormField(
              controller: nameAsIc,
//              obscureText: _obscureTCurrentext,
              validator: (text) {
                if (text.isEmpty) {
                  return "Please put the passsword";
                } else if (text.length < 8) {
                  return "Your password length should greater than 8";
                }
                return null;
              },
              style: TextStyle(
                fontSize: 17.0,
              ),
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Name as in IC',
                  ),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
            padding: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextFormField(
//              obscureText: _obscureNewText,
              controller: accountNumber,
              validator: (text) {

                return null;
              },
              style: TextStyle(
                fontSize: 17.0,
              ),
              decoration: InputDecoration(
                hintText: "Account Number",
                border: InputBorder.none,
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              showCategory();

            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius:
                  BorderRadius.all(Radius.circular(4)),
                ),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      child: Text(
                        _bankName,
                        style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Spacer(
                      flex: 12,
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
          Spacer(flex: 20,),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);

            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(19, 153, 159, 1.0),
                  border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                  borderRadius:
                  BorderRadius.all(Radius.circular(40)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        )
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  void showCategory(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Bank"),
          content:  Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: ListView.builder(
              itemCount: bankImages.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      _bankName = list[i];
                    });
Navigator.pop(context);
                  },
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 8.0),
                    padding: EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 15.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(bankImages[i]),
                        Container(
                          margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            list[i],
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,

                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          actions:null
      ),
    );
  }
  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }

}
