import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class IndexPage extends StatelessWidget {
  IndexPage(String str) {
    print("this is indexpage and str = $str");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'),
        const Locale('cn','ZH'),
      ],
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
      margin: EdgeInsets.only(top: 52.0, left: 40.0, right: 40.0),
      child: new TextField(
        decoration: new InputDecoration(hintText: "Try to search Tokyo"),
        enabled: true,
      ),
    );
  }
}
