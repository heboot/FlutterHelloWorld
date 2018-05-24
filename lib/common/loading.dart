import 'dart:async';

import 'package:flutter/material.dart';
import 'package:helloworld/common/index.dart';
import 'package:helloworld/common/test.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoadingEvent(),
    );
  }
}

class LoadingEvent extends StatelessWidget {
  var _count = 0;

  var mContext;

  @override
  Widget build(BuildContext context) {
    mContext = context;
    _test();
    return new Scaffold(
      body: new Center(
        child: new Text("hehe"),
      ),
    );
  }

  void _test() {
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) => _doNav(t));
  }

  void _doNav(Timer t) {
    print("doNav > $_count");
    _count = _count + 1;
    if (_count >= 3) {
      t.cancel();
      toInDex();
    }
  }

  void toInDex() {
    Navigator.pop(mContext,"aaa");
//    _login();
    Navigator.of(mContext).push(new MaterialPageRoute(
        builder: (BuildContext context) => new IndexPage("from loading")));
//    Navigator.of(mContext).pop();
  }


  _login() async {
    final result = await Navigator
        .of(mContext)
        .push(new MaterialPageRoute(builder: (context) {
      return new IndexPage("hehe");
    }));

  }

}
