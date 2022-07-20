import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_learn/red_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation İşlemleri"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (redContext) => RedPage()));
            },
            child: Text("Kırmızı sayfaya git IOS"),
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.push(context, route);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => RedPage())));
            },
            child: Text("Kırmızı sayfaya git Android"),
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
          ),
        ],
      )),
    );
  }
}
