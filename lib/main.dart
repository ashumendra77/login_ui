import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(top: 5),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 280.0, top: 10),
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFea4c89)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 50.0, right: 120),
              child: Text("LIVE AUTHENTIC",
                  style: TextStyle(
                      color: Color(0xffea4c89), fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 150),
              child: RichText(
                text: TextSpan(
                  text: 'Win the most\n ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'amazing ',
                        style: TextStyle(
                            color: Color(0xffea4c89),
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: 'trip \n around  the \n globe'),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 110),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/globe.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                cursorColor: Color(0xffea4c89),
                autofocus: false,
                autocorrect: false,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.only(left: 10, right: 10),
                    labelText: "Name",
                    labelStyle: TextStyle(
                      color: Color(0xffea4c89),
                    )),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  cursorColor: Color(0xffea4c89),
                  autocorrect: false,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Color(0xffea4c89),
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFFea4c89),
                    Color(0xFFfa7a7a),
                    Color(0xFFea4c89),
                  ],
                )),
                child: FlatButton(
                  child: Text(
                    "Sign up now",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: null,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
