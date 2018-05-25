import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class RoomListPage extends StatelessWidget {

  RoomListPage(String str) {

  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    print(myLocale);

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
        appBar: new AppBar(
          title: ,
        ),
        body: new Container(
          color: Colors.white,
//          padding: const EdgeInsets.all(32.0),
          alignment: Alignment.center,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}
