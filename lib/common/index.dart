import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  IndexPage(String str) {
    print("this is indexpage and str = $str");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: new Container(
          color: Colors.white,
//          padding: const EdgeInsets.all(32.0),
          alignment: Alignment.center,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new LogoView(),
              new EditTextView(),
//          new Expanded(
//              child: new Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              new Container(
//                padding: const EdgeInsets.only(bottom: 8.0),
//                child: new Text(
//                  'Oeschinen Lake Campground',
//                  style: new TextStyle(
//                    fontWeight: FontWeight.bold,
//                  ),
//                ),
//              ),
//              new Text(
//                'Kandersteg, Switzerland',
//                style: new TextStyle(
//                  color: Colors.grey[500],
//                ),
//              ),
//            ],
//          )),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(top: 182.0),
        child: new Column(
          children: <Widget>[
            new Text(
              "noonde",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            new Text(
              "noonde.com",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ));
  }
}

class EditTextView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new EditTextViewState();
  }
}

class EditTextViewState extends State {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 52.0,left: 40.0,right: 40.0),
      child: new TextField(
        decoration: new InputDecoration(hintText: "plase input tokyo"),
        enabled: true,
      ),
    );
  }
}
