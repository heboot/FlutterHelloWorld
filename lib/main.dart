import 'package:flutter/material.dart';
import 'package:helloworld/common/loading.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new LoadingPage();
  }
}
