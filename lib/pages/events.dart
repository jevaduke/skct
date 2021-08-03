import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Events extends StatefulWidget {
  Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    Future<void>? _launched;
    Future<void> _firstURL(String url) async {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: false,
          forceWebView: false,
          headers: <String, String>{'my_header_key': 'my_header_value'},
        );
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ignore: deprecated_member_use
                RaisedButton(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  onPressed: () => setState(() {
                    _launched = _firstURL(
                        "https://startuptn.in/events/open-innovation-challenge-covid19-vaccine-slot-man/");
                  }),
                  child: Text(
                    'Open Innovation Challenge-\nCOVID19 Vaccine\n Slot Management System',
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
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ignore: deprecated_member_use
                RaisedButton(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  onPressed: () => setState(() {
                    _launched =
                        _firstURL("https://techchallenge.in.capgemini.com/");
                  }),
                  child: Text(
                    'Cape Gemini Tech Challenge',
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
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ignore: deprecated_member_use
                RaisedButton(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  onPressed: () => setState(() {
                    _launched =
                        _firstURL("https://my.msme.gov.in/inc/Giudeline.aspx");
                  }),
                  child: Text(
                    'MSME Innovators in\ndeveloping and nurturing\ntheir new innovative ideas',
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
          ],
        ),
      ),
    );
  }
}
