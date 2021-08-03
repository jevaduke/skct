import 'package:flutter/material.dart';
import 'package:skct/pages/home.dart';

class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: <Widget>[
        SizedBox(height: 45.0),
        Container(
          height: 400,
          child: Image(
            image: AssetImage("assets/college.png"),
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 20.0),
        RichText(
          text: TextSpan(
              text: "   Welcome to",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: '  SKCT',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                )
              ]),
        ),
        SizedBox(height: 10.0),
        Text(
          'An App initiative for skct digest',
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ignore: deprecated_member_use
            RaisedButton(
              padding: EdgeInsets.only(left: 30, right: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text(
                'See Skct Digest!',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ]),
    ));
  }
}
