import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:helloworld/room/room_list.dart';
import 'package:helloworld/data/SearchBean.dart';

class IndexPage extends StatelessWiedget {

  IndexPage(SearchBean search) {


  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    return MaterialApp(
      localizationsDelegates: [
        //基于WidgetsApp的应用程序类似，只是不需要GlobalMaterialLocalizations.delegate。
        //GlobalMaterialLocalizations.delegate 为Material Components库提供了本地化的字符串和其他值。
        GlobalMaterialLocalizations.delegate,
        //GlobalWidgetsLocalizations.delegate定义widget默认的文本方向，从左到右或从右到左。
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('he', 'IL'),
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
  String inputText = "";

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new GestureDetector(
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) =>
                new RoomListPage("from loading")));
      },
      child: new Container(
          child: new Container(
        width: 500.0,
        color: Colors.red,
        margin: EdgeInsets.only(top: 5.0),
        child: new Text(inputText),
      )),
    );

//    Widget titleSection = new Container(
//
//        child: new Container(
//          width: 500.0,
//          color: Colors.red,
//          margin: EdgeInsets.only(top: 5.0),
//          child: new Text(inputText),
//        ));

    return new Container(
      margin: EdgeInsets.only(top: 52.0, left: 40.0, right: 40.0),
      child: new Column(
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(hintText: "Try to search Tokyo"),
            enabled: true,
            onChanged: (String s) => _showTextTip(s),
          ),
          titleSection
//          new ListView(
//            children: <Widget>[
//              const Text('I\'m dedicating every day to you'),
//            ],
//          ),
        ],
      ),
//      child: new TextField(
//        decoration: new InputDecoration(hintText: "Try to search Tokyo"),
//        enabled: true,
//        onChanged:(String s) => _showTextTip(s),
//      ),
    );
  }

  void _showTextTip(String s) {
    setState(() {
      inputText = s;
    });
  }

  void _testextTip(String s) {
    print(s);
  }
}
