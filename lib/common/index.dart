import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  IndexPage(String str) {
    print("this is indexpage and str = $str");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text(
            'index',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
