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
          padding: const EdgeInsets.all(32.0),
          child: new Column(
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
      child: new Expanded(
        child: new Column(
          children: <Widget>[
            new Text(
              "Noonde Title",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
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
      padding: const EdgeInsets.all(10.0),
      child: new TextField(
        enabled: true,
      ),
    );
  }
}
