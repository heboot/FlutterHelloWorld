import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:helloworld/data/SearchBean.dart';
import 'package:helloworld/utils/DateUtils.dart';

class RoomListPage extends StatelessWidget {
  SearchBean searchBean;

  DateUtils dateUtils;

  RoomListPage(SearchBean s) {
    print(s.city);
    searchBean = s;
    dateUtils = new DateUtils();
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
          title: new Text(searchBean.city),
        ),
        body: new Container(
          color: Colors.white,
//          padding: const EdgeInsets.all(32.0),
          alignment: Alignment.center,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(top: 10.0, left: 20.0),
                child: new Row(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        print("showDate...");
                        showDatePicker(context: context, initialDate: dateUtils.getNowDateTimeAddDays(1), firstDate: dateUtils.getNowDateTimeAddDays(0), lastDate: dateUtils.getNowDateTimeAddDays(2));
                      },
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            margin: const EdgeInsets.only(
                              right: 10.0,
                            ),
                            child:
                                new Icon(Icons.date_range, color: Colors.red),
                          ),
                          new Text(dateUtils.formatDate2YY_MM_DD() +
                              " -- " +
                              dateUtils.formatDate2YY_MM_DDByNextDay(1))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
