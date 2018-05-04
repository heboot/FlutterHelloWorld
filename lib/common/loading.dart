import 'package:flutter/material.dart';
import 'dart:async';
import 'package:helloworld/common/index.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new LoadingEvent();

//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Welcome to Flutter'),
//        ),
//        body: new Center(
//          child: new Text(
//            'Hello, world!',
//            textDirection: TextDirection.ltr,
//          ),
//        ),
//      ),
//      routes: <String, WidgetBuilder>{
//        '/index': (BuildContext context) => new IndexPage("from loading"),
//      },
//    );
  }

//  import 'dart:async';
//  main() {
//    const oneSec = const Duration(seconds:1);
//    new Timer.periodic(oneSec, (Timer t) => print('hi!'));
//  }

}

class LoadingEvent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CountDownState();
  }
}

class CountDownState extends State {
  var _count = 0;

  var mContext;

  @override
  Widget build(BuildContext context) {
    mContext = context;
    _test();
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text(
            'Hello, world!',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/index': (BuildContext context) => new IndexPage("from loading"),
      },
    );
  }

  void _test() {
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) => _doNav(t));
  }

  void _doNav(Timer t) {
    print('hi! $_count');
    _count = _count + 1;
    if (_count >= 3) {
      t.cancel();
      toInDex();
    }
  }

  void toInDex() {
//    Navigator.of(mContext).push(new MaterialPageRoute(
//        builder: (BuildContext context) => new IndexPage()));
    Navigator.of(mContext).pushNamed('/index');
  }
}
