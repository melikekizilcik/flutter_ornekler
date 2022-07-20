import 'package:flutter/material.dart';
import 'package:flutter_scrolls_app/customScrollView.dart';
import 'package:flutter_scrolls_app/gridview_ikinci_ornek.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: customScrollOrnek(),
    );
  }
}
